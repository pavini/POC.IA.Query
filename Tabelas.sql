CREATE TABLE [dbo].[Produtos] (
    [ProdutoId] INT NULL,
    [Produto]   VARCHAR (50) NULL,
    [Descricao] VARCHAR (50) NULL,
    [Valor]     DECIMAL (18) NULL, 
    [CategoriaId] INT NULL
);

CREATE TABLE [dbo].[Categorias] (
    [CategoriaId] VARCHAR (15) NULL,
    [Categoria]   VARCHAR (50) NULL
);

INSERT INTO Categorias (CategoriaId, Categoria)
VALUES (1, 'Smartphones'),
       (2, 'Computadores'),
       (3, 'Televisores'),
       (4, 'Acessórios'),
       (5, 'Fones de ouvido'),
       (6, 'Tablets'),
       (7, 'Câmeras'),
       (8, 'Videogames'),
       (9, 'Impressoras'),
       (10, 'Dispositivos Inteligentes');


-- Inserção de 10 produtos para cada categoria
-- Categoria: Smartphones
INSERT INTO Produtos (ProdutoId, Produto, Descricao, Valor, CategoriaId)
VALUES
    (1, 'iPhone 12 Pro', 'Descrição do iPhone 12 Pro', 4999.99, 1),
    (2, 'Samsung Galaxy S21 Ultra', 'Descrição do Samsung Galaxy S21 Ultra', 4199.99, 1),
    (3, 'Google Pixel 5', 'Descrição do Google Pixel 5', 3799.99, 1),
    (4, 'OnePlus 9 Pro', 'Descrição do OnePlus 9 Pro', 3599.99, 1),
    (5, 'Xiaomi Mi 11', 'Descrição do Xiaomi Mi 11', 2999.99, 1),
    (6, 'Motorola Moto G Power', 'Descrição do Motorola Moto G Power', 1999.99, 1),
    (7, 'Apple iPhone SE', 'Descrição do Apple iPhone SE', 1799.99, 1),
    (8, 'Samsung Galaxy A52', 'Descrição do Samsung Galaxy A52', 1599.99, 1),
    (9, 'Xiaomi Redmi Note 10', 'Descrição do Xiaomi Redmi Note 10', 1399.99, 1),
    (10, 'Motorola Moto E7 Plus', 'Descrição do Motorola Moto E7 Plus', 999.99, 1);

-- Categoria: Computadores
INSERT INTO Produtos (ProdutoId, Produto, Descricao, Valor, CategoriaId)
VALUES
    (11, 'Dell XPS 13', 'Descrição do Dell XPS 13', 6999.99, 2),
    (12, 'HP Spectre x360', 'Descrição do HP Spectre x360', 5999.99, 2),
    (13, 'Apple MacBook Pro', 'Descrição do Apple MacBook Pro', 7999.99, 2),
    (14, 'Lenovo ThinkPad X1 Carbon', 'Descrição do Lenovo ThinkPad X1 Carbon', 4999.99, 2),
    (15, 'Acer Predator Helios 300', 'Descrição do Acer Predator Helios 300', 4499.99, 2),
    (16, 'Asus ROG Zephyrus G14', 'Descrição do Asus ROG Zephyrus G14', 3999.99, 2),
    (17, 'Microsoft Surface Laptop 4', 'Descrição do Microsoft Surface Laptop 4', 3499.99, 2),
    (18, 'Lenovo Yoga C940', 'Descrição do Lenovo Yoga C940', 2999.99, 2),
    (19, 'HP Envy 13', 'Descrição do HP Envy 13', 2499.99, 2),
    (20, 'Dell Inspiron 15 5000', 'Descrição do Dell Inspiron 15 5000', 1999.99, 2);

-- Categoria: Televisores
INSERT INTO Produtos (ProdutoId, Produto, Descricao, Valor, CategoriaId)
VALUES
    (21, 'Samsung QLED Q80A', 'Descrição do Samsung QLED Q80A', 5999.99, 3),
    (22, 'LG OLED CX', 'Descrição do LG OLED CX', 5499.99, 3),
    (23, 'Sony BRAVIA X90J', 'Descrição do Sony BRAVIA X90J', 4999.99, 3),
    (24, 'TCL 6-Series', 'Descrição do TCL 6-Series', 3999.99, 3),
    (25, 'Hisense ULED U8G', 'Descrição do Hisense ULED U8G', 3599.99, 3),
    (26, 'Vizio OLED H1', 'Descrição do Vizio OLED H1', 3299.99, 3),
    (27, 'Samsung Neo QLED QN90A', 'Descrição do Samsung Neo QLED QN90A', 2999.99, 3),
    (28, 'LG NanoCell NANO90', 'Descrição do LG NanoCell NANO90', 2699.99, 3),
    (29, 'Sony X800H', 'Descrição do Sony X800H', 2399.99, 3),
    (30, 'Toshiba Fire TV Edition', 'Descrição do Toshiba Fire TV Edition', 1999.99, 3);

-- Categoria: Acessórios
INSERT INTO Produtos (ProdutoId, Produto, Descricao, Valor, CategoriaId)
VALUES
    (31, 'Apple AirPods Pro', 'Descrição do Apple AirPods Pro', 1099.99, 4),
    (32, 'Sony WH-1000XM4', 'Descrição do Sony WH-1000XM4', 999.99, 4),
    (33, 'Bose QuietComfort 35 II', 'Descrição do Bose QuietComfort 35 II', 899.99, 4),
    (34, 'JBL Charge 4', 'Descrição do JBL Charge 4', 299.99, 4),
    (35, 'Fitbit Charge 4', 'Descrição do Fitbit Charge 4', 299.99, 4),
    (36, 'Samsung Galaxy Watch Active2', 'Descrição do Samsung Galaxy Watch Active2', 799.99, 4),
    (37, 'Logitech MX Master 3', 'Descrição do Logitech MX Master 3', 399.99, 4),
    (38, 'Razer DeathAdder V2', 'Descrição do Razer DeathAdder V2', 299.99, 4),
    (39, 'Corsair K95 RGB Platinum', 'Descrição do Corsair K95 RGB Platinum', 699.99, 4),
    (40, 'Anker PowerCore 10000', 'Descrição do Anker PowerCore 10000', 199.99, 4);


-- Inserção de 10 produtos para cada categoria
-- Categoria: Smartphones
INSERT INTO Produtos (ProdutoId, Produto, Descricao, Valor, CategoriaId)
VALUES
    (1, 'iPhone 12 Pro', 'Descrição do iPhone 12 Pro', 4999.99, 1),
    (2, 'Samsung Galaxy S21 Ultra', 'Descrição do Samsung Galaxy S21 Ultra', 4199.99, 1),
    (3, 'Google Pixel 5', 'Descrição do Google Pixel 5', 3799.99, 1),
    (4, 'OnePlus 9 Pro', 'Descrição do OnePlus 9 Pro', 3599.99, 1),
    (5, 'Xiaomi Mi 11', 'Descrição do Xiaomi Mi 11', 2999.99, 1),
    (6, 'Motorola Moto G Power', 'Descrição do Motorola Moto G Power', 1999.99, 1),
    (7, 'Apple iPhone SE', 'Descrição do Apple iPhone SE', 1799.99, 1),
    (8, 'Samsung Galaxy A52', 'Descrição do Samsung Galaxy A52', 1599.99, 1),
    (9, 'Xiaomi Redmi Note 10', 'Descrição do Xiaomi Redmi Note 10', 1399.99, 1),
    (10, 'Motorola Moto E7 Plus', 'Descrição do Motorola Moto E7 Plus', 999.99, 1);

-- Categoria: Computadores
INSERT INTO Produtos (ProdutoId, Produto, Descricao, Valor, CategoriaId)
VALUES
    (11, 'Dell XPS 13', 'Descrição do Dell XPS 13', 6999.99, 2),
    (12, 'HP Spectre x360', 'Descrição do HP Spectre x360', 5999.99, 2),
    (13, 'Apple MacBook Pro', 'Descrição do Apple MacBook Pro', 7999.99, 2),
    (14, 'Lenovo ThinkPad X1 Carbon', 'Descrição do Lenovo ThinkPad X1 Carbon', 4999.99, 2),
    (15, 'Acer Predator Helios 300', 'Descrição do Acer Predator Helios 300', 4499.99, 2),
    (16, 'Asus ROG Zephyrus G14', 'Descrição do Asus ROG Zephyrus G14', 3999.99, 2),
    (17, 'Microsoft Surface Laptop 4', 'Descrição do Microsoft Surface Laptop 4', 3499.99, 2),
    (18, 'Lenovo Yoga C940', 'Descrição do Lenovo Yoga C940', 2999.99, 2),
    (19, 'HP Envy 13', 'Descrição do HP Envy 13', 2499.99, 2),
    (20, 'Dell Inspiron 15 5000', 'Descrição do Dell Inspiron 15 5000', 1999.99, 2);

-- Categoria: Televisores
INSERT INTO Produtos (ProdutoId, Produto, Descricao, Valor, CategoriaId)
VALUES
    (21, 'Samsung QLED Q80A', 'Descrição do Samsung QLED Q80A', 5999.99, 3),
    (22, 'LG OLED CX', 'Descrição do LG OLED CX', 5499.99, 3),
    (23, 'Sony BRAVIA X90J', 'Descrição do Sony BRAVIA X90J', 4999.99, 3),
    (24, 'TCL 6-Series', 'Descrição do TCL 6-Series', 3999.99, 3),
    (25, 'Hisense ULED U8G', 'Descrição do Hisense ULED U8G', 3599.99, 3),
    (26, 'Vizio OLED H1', 'Descrição do Vizio OLED H1', 3299.99, 3),
    (27, 'Samsung Neo QLED QN90A', 'Descrição do Samsung Neo QLED QN90A', 2999.99, 3),
    (28, 'LG NanoCell NANO90', 'Descrição do LG NanoCell NANO90', 2699.99, 3),
    (29, 'Sony X800H', 'Descrição do Sony X800H', 2399.99, 3),
    (30, 'Toshiba Fire TV Edition', 'Descrição do Toshiba Fire TV Edition', 1999.99, 3);

-- Categoria: Acessórios
INSERT INTO Produtos (ProdutoId, Produto, Descricao, Valor, CategoriaId)
VALUES
    (31, 'Apple AirPods Pro', 'Descrição do Apple AirPods Pro', 1099.99, 4),
    (32, 'Sony WH-1000XM4', 'Descrição do Sony WH-1000XM4', 999.99, 4),
    (33, 'Bose QuietComfort 35 II', 'Descrição do Bose QuietComfort 35 II', 899.99, 4),
    (34, 'JBL Charge 4', 'Descrição do JBL Charge 4', 299.99, 4),
    (35, 'Fitbit Charge 4', 'Descrição do Fitbit Charge 4', 299.99, 4),
    (36, 'Samsung Galaxy Watch Active2', 'Descrição do Samsung Galaxy Watch Active2', 799.99, 4),
    (37, 'Logitech MX Master 3', 'Descrição do Logitech MX Master 3', 399.99, 4),
    (38, 'Razer DeathAdder V2', 'Descrição do Razer DeathAdder V2', 299.99, 4),
    (39, 'Corsair K95 RGB Platinum', 'Descrição do Corsair K95 RGB Platinum', 699.99, 4),
    (40, 'Anker PowerCore 10000', 'Descrição do Anker PowerCore 10000', 199.99, 4);

-- Categoria: Fones de ouvido
INSERT INTO Produtos (ProdutoId, Produto, Descricao, Valor, CategoriaId)
VALUES
    (41, 'Sennheiser HD 660 S', 'Descrição do Sennheiser HD 660 S', 1999.99, 5),
    (42, 'Beyerdynamic DT 990 Pro', 'Descrição do Beyerdynamic DT 990 Pro', 1499.99, 5),
    (43, 'Audio-Technica ATH-M50x', 'Descrição do Audio-Technica ATH-M50x', 999.99, 5),
    (44, 'Sony WH-1000XM4', 'Descrição do Sony WH-1000XM4', 899.99, 5),
    (45, 'Apple AirPods Pro', 'Descrição do Apple AirPods Pro', 1099.99, 5),
    (46, 'Jabra Elite 85h', 'Descrição do Jabra Elite 85h', 799.99, 5),
    (47, 'Bose QuietComfort 35 II', 'Descrição do Bose QuietComfort 35 II', 899.99, 5),
    (48, 'Skullcandy Crusher Wireless', 'Descrição do Skullcandy Crusher Wireless', 499.99, 5),
    (49, 'Anker Soundcore Liberty Air 2 Pro', 'Descrição do Anker Soundcore Liberty Air 2 Pro', 299.99, 5),
    (50, 'Samsung Galaxy Buds Pro', 'Descrição do Samsung Galaxy Buds Pro', 699.99, 5);

-- Categoria: Tablets
INSERT INTO Produtos (ProdutoId, Produto, Descricao, Valor, CategoriaId)
VALUES
    (51, 'Apple iPad Pro', 'Descrição do Apple iPad Pro', 2999.99, 6),
    (52, 'Samsung Galaxy Tab S7', 'Descrição do Samsung Galaxy Tab S7', 2499.99, 6),
    (53, 'Microsoft Surface Pro 7', 'Descrição do Microsoft Surface Pro 7', 2199.99, 6),
    (54, 'Lenovo Tab P11 Pro', 'Descrição do Lenovo Tab P11 Pro', 1899.99, 6),
    (55, 'Huawei MatePad Pro', 'Descrição do Huawei MatePad Pro', 1799.99, 6),
    (56, 'Amazon Fire HD 10', 'Descrição do Amazon Fire HD 10', 999.99, 6),
    (57, 'Google Pixel Slate', 'Descrição do Google Pixel Slate', 1699.99, 6),
    (58, 'Sony Xperia Tablet Z4', 'Descrição do Sony Xperia Tablet Z4', 1599.99, 6),
    (59, 'Xiaomi Mi Pad 5 Pro', 'Descrição do Xiaomi Mi Pad 5 Pro', 1499.99, 6),
    (60, 'Asus ZenPad S8', 'Descrição do Asus ZenPad S8', 1399.99, 6);

-- Categoria: Câmeras
INSERT INTO Produtos (ProdutoId, Produto, Descricao, Valor, CategoriaId)
VALUES
    (61, 'Canon EOS R5', 'Descrição do Canon EOS R5', 9999.99, 7),
    (62, 'Sony Alpha A7 III', 'Descrição do Sony Alpha A7 III', 7999.99, 7),
    (63, 'Nikon Z7 II', 'Descrição do Nikon Z7 II', 6999.99, 7),
    (64, 'Fujifilm X-T4', 'Descrição do Fujifilm X-T4', 5999.99, 7),
    (65, 'Panasonic Lumix GH5', 'Descrição do Panasonic Lumix GH5', 4999.99, 7),
    (66, 'Olympus OM-D E-M1 Mark III', 'Descrição do Olympus OM-D E-M1 Mark III', 3999.99, 7),
    (67, 'Leica Q2', 'Descrição do Leica Q2', 8999.99, 7),
    (68, 'Pentax K-1 Mark II', 'Descrição do Pentax K-1 Mark II', 2999.99, 7),
    (69, 'Hasselblad X1D II 50C', 'Descrição do Hasselblad X1D II 50C', 14999.99, 7),
    (70, 'GoPro Hero9 Black', 'Descrição do GoPro Hero9 Black', 599.99, 7);

-- Categoria: Videogames
INSERT INTO Produtos (ProdutoId, Produto, Descricao, Valor, CategoriaId)
VALUES
    (71, 'Sony PlayStation 5', 'Descrição do Sony PlayStation 5', 4999.99, 8),
    (72, 'Microsoft Xbox Series X', 'Descrição do Microsoft Xbox Series X', 4999.99, 8),
    (73, 'Nintendo Switch', 'Descrição do Nintendo Switch', 1999.99, 8),
    (74, 'Sony PlayStation 4 Pro', 'Descrição do Sony PlayStation 4 Pro', 2499.99, 8),
    (75, 'Microsoft Xbox One X', 'Descrição do Microsoft Xbox One X', 1999.99, 8),
    (76, 'Nintendo Switch Lite', 'Descrição do Nintendo Switch Lite', 1499.99, 8),
    (77, 'Sony PlayStation VR', 'Descrição do Sony PlayStation VR', 2999.99, 8),
    (78, 'Microsoft Xbox Wireless Controller', 'Descrição do Microsoft Xbox Wireless Controller', 299.99, 8),
    (79, 'Nintendo Joy-Con', 'Descrição do Nintendo Joy-Con', 399.99, 8),
    (80, 'SteelSeries Arctis 7P', 'Descrição do SteelSeries Arctis 7P', 599.99, 8);

-- Categoria: Impressoras
INSERT INTO Produtos (ProdutoId, Produto, Descricao, Valor, CategoriaId)
VALUES
    (81, 'HP LaserJet Pro MFP M428fdw', 'Descrição do HP LaserJet Pro MFP M428fdw', 1999.99, 9),
    (82, 'Epson EcoTank ET-4760', 'Descrição do Epson EcoTank ET-4760', 1699.99, 9),
    (83, 'Canon PIXMA TR8620', 'Descrição do Canon PIXMA TR8620', 1299.99, 9),
    (84, 'Brother HL-L2370DW', 'Descrição do Brother HL-L2370DW', 999.99, 9),
    (85, 'Xerox WorkCentre 3345/DNI', 'Descrição do Xerox WorkCentre 3345/DNI', 2999.99, 9),
    (86, 'Samsung Xpress M2020W', 'Descrição do Samsung Xpress M2020W', 499.99, 9),
    (87, 'Dell C2665dnf', 'Descrição do Dell C2665dnf', 999.99, 9),
    (88, 'Lexmark MC3326adwe', 'Descrição do Lexmark MC3326adwe', 799.99, 9),
    (89, 'Ricoh SP C261SFNw', 'Descrição do Ricoh SP C261SFNw', 699.99, 9),
    (90, 'Canon imageCLASS LBP6230dw', 'Descrição do Canon imageCLASS LBP6230dw', 599.99, 9);

-- Categoria: Dispositivos Inteligentes
INSERT INTO Produtos (ProdutoId, Produto, Descricao, Valor, CategoriaId)
VALUES
    (91, 'Amazon Echo (4ª geração)', 'Descrição do Amazon Echo (4ª geração)', 499.99, 10),
    (92, 'Google Nest Hub', 'Descrição do Google Nest Hub', 399.99, 10),
    (93, 'Apple HomePod Mini', 'Descrição do Apple HomePod Mini', 299.99, 10),
    (94, 'Samsung SmartThings Hub', 'Descrição do Samsung SmartThings Hub', 399.99, 10),
    (95, 'Philips Hue White and Color Ambiance', 'Descrição do Philips Hue White and Color Ambiance', 199.99, 10),
    (96, 'Ring Video Doorbell 3', 'Descrição do Ring Video Doorbell 3', 299.99, 10),
    (97, 'TP-Link Kasa Smart Plug', 'Descrição do TP-Link Kasa Smart Plug', 299.99, 10),
    (98, 'Nest Learning Thermostat', 'Descrição do Nest Learning Thermostat', 899.99, 10),
    (99, 'August Smart Lock Pro', 'Descrição do August Smart Lock Pro', 599.99, 10),
    (100, 'Wyze Cam Pan', 'Descrição do Wyze Cam Pan', 399.99, 10);
