using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Threading.Tasks;
using Standard.AI.Data;

namespace POC.EntityIntelligence
{
    public class Program
    {
        static async Task Main(string[] args)
        {
            for (; ; )
            {
                Console.WriteLine("O que precisa?:");
                string query = Console.ReadLine();

                var standardAiDataClient = new AIDataClient(
                    openAIKey: "xxxxx",
                    connectionString: "DATA SOURCE=localhost;DATABASE=IATeste;UID=sa;PWD=xxxxxx;");


                IEnumerable<dynamic> results =
                    await standardAiDataClient.RunAIQueryAsync(query);

                PrintDynamicList(results);
            }
        }

        //private static void PrintDynamicList(IEnumerable<dynamic> dynamicList)
        //{
        //    List<string> list = new List<string>();

        //    if (dynamicList.Count() < 1)
        //    {
        //        Console.WriteLine("Não encontramos nehum registro.");
        //    }
        //    else
        //    {
        //        foreach (var dynamicObject in dynamicList)
        //        {
        //            foreach (PropertyDescriptor descriptor in TypeDescriptor.GetProperties(dynamicObject))
        //            {
        //                string name = descriptor.Name;
        //                object value = descriptor.GetValue(dynamicObject);

        //                if (list.Contains(name + value) is false)
        //                {
        //                    list.Add(name + value);
        //                    Console.WriteLine("{0}: {1}", name, value);
        //                }
        //            }
        //        }
        //    }
        //}

        //private static void PrintDynamicList(IEnumerable<dynamic> dynamicList)
        //{
        //    List<string> list = new List<string>();

        //    if (dynamicList.Count() < 1)
        //    {
        //        Console.WriteLine("Não encontramos nehum registro.");
        //    }
        //    else
        //    {
        //        foreach (var dynamicObject in dynamicList)
        //        {
        //            // Verifica se o objeto é um IDictionary
        //            if (dynamicObject is IDictionary<string, object> properties)
        //            {
        //                foreach (var property in properties)
        //                {
        //                    string name = property.Key;
        //                    object value = property.Value;

        //                    if (list.Contains(name + value) is false)
        //                    {
        //                        list.Add(name + value);
        //                        Console.WriteLine("{0}: {1}", name, value);
        //                    }
        //                }
        //            }
        //        }
        //    }
        //}

        private static void PrintDynamicList(IEnumerable<dynamic> dynamicList)
        {
            if (dynamicList.Count() < 1)
            {
                Console.WriteLine("Não encontramos nenhum registro.");
            }
            else
            {
                foreach (var dynamicObject in dynamicList)
                {
                    // Verifica se o objeto é um IDictionary
                    if (dynamicObject is IDictionary<string, object> properties)
                    {
                        foreach (var property in properties)
                        {
                            string name = property.Key;
                            object value = property.Value;

                            // Imprime o nome da propriedade e o valor
                            Console.WriteLine("{0}: {1}", name, value);
                        }
                    }
                }
            }
        }


    }
}