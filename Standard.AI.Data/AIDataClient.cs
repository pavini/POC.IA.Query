using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Dynamic;
using System.Linq;
using System.Threading.Tasks;
using Dapper;
using Standard.AI.OpenAI.Clients.OpenAIs;
using Standard.AI.OpenAI.Models.Configurations;
using Standard.AI.OpenAI.Models.Services.Foundations.Completions;

namespace Standard.AI.Data
{
    public class AIDataClient
    {
        private readonly string openAIKey;
        private readonly string connectionString;

        public AIDataClient(string openAIKey, string connectionString)
        {
            this.openAIKey = openAIKey;
            this.connectionString = connectionString;
        }

        public async ValueTask<IEnumerable<dynamic>> RunAIQueryAsync(string natualQuery)
        {
            try
            {
                var openAIConfigurations = new OpenAIConfigurations
                {
                    ApiKey = this.openAIKey,
                    ApiUrl = "https://api.openai.com/"
                };

                IOpenAIClient openAIClient =
                    new OpenAIClient(openAIConfigurations);

                using (var connection = new SqlConnection(this.connectionString))
                {
                    var allTablesSql = connection.Query("SELECT TOP(250) T.name AS Table_Name ,\r\n       C.name AS Column_Name ,\r\n       P.name AS Data_Type ,\r\n       C.max_length AS Size ,\r\n       CAST(P.precision AS VARCHAR) + '/' + CAST(P.scale AS VARCHAR) AS Precision_Scale\r\nFROM   sys.objects AS T\r\n       JOIN sys.columns AS C ON T.object_id = C.object_id\r\n       JOIN sys.types AS P ON C.system_type_id = P.system_type_id\r\nWHERE  T.type_desc = 'USER_TABLE';");

                    var byTables = allTablesSql.GroupBy(t => t.Table_Name);
                    string fullQuery = GetDescriptiveOfAllTables(byTables);

                    var inputCompletion = new Completion
                    {
                        Request = new CompletionRequest
                        {
                            Prompts = new string[] { $"Your are the best MS SQL query generator. Respond ONLY with code., only code. Given a MS SQL Server db with the following tables: " +
                            $"{fullQuery}" +
                            $"  Do not return any other text, only code and Translate the following request into a MS SQL Server query and give it alias for all coluns: {natualQuery}" },

                            Model = "text-davinci-003",
                            MaxTokens = 100
                        }
                    };

                    var result = await openAIClient.Completions.PromptCompletionAsync(inputCompletion);
                    var sql = result.Response.Choices[0].Text;

                    int index = sql.IndexOf("SELECT");
                    if (index >= 0)
                    {
                        sql = sql.Substring(index);
                    }

                    if (sql.Contains("DELETE") is true)
                    {
                        return AddReturnMessage("Não é permitido remover registros."); ;
                    }

                    if (sql.Contains("UPDATE") is true)
                    {
                        return AddReturnMessage("Não é permitido remover registros."); ;
                    }

                    if (sql.Contains("SELECT") is true)
                    {
                        if (sql.IndexOf("SELECT") is not 0)
                            sql = sql.Remove(0, sql.IndexOf("SELECT"));

                        var queryResult = connection.Query(sql);

                        return queryResult;
                    }

                    throw new Exception("Não foi possível processar o pedido. Tente novamente.");
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        private static List<dynamic> AddReturnMessage(string value)
        {
            dynamic obj = new ExpandoObject();
            obj.Mensagem = value;

            var dynamicList = new List<dynamic> { obj };

            return dynamicList;
        }

        private string GetDescriptiveOfAllTables(IEnumerable<IGrouping<dynamic, dynamic>> allTables)
        {
            string properties = string.Empty;

            foreach (var table in allTables)
            {
                properties += $"Entity name: {table.Key} has the following properties: ";

                foreach (var property in table)
                {
                    properties += $"{property.Column_Name} as {property.Data_Type}. ";
                }
            }

            return properties;
        }
    }
}