SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE dim_produto;
TRUNCATE TABLE dim_categoria;
SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO dim_categoria (nome_categoria)
VALUES
('Informática'),
('Periféricos'),
('Áudio'),
('Gamer'),
('Escritório'),
('Smartphones'),
('Armazenamento'),
('Redes'),
('Streaming'),
('Acessórios');

SELECT * FROM dim_categoria;

INSERT INTO dim_produto (nome_produto, id_categoria)
VALUES

-- INFORMÁTICA
('Notebook Dell Inspiron', 1),
('Notebook Lenovo IdeaPad', 1),
('Notebook Gamer Acer Nitro', 1),
('PC Gamer Ryzen 7', 1),
('Mini PC Intel', 1),
('All In One HP', 1),
('Chromebook Samsung', 1),
('MacBook Air M2', 1),
('Impressora Epson EcoTank', 1),
('Scanner Canon', 1),

-- PERIFÉRICOS
('Mouse Gamer Redragon', 2),
('Mouse Logitech MX', 2),
('Teclado Mecânico RGB', 2),
('Teclado Logitech K120', 2),
('Webcam Logitech C920', 2),
('Mesa Digitalizadora Wacom', 2),
('Mouse Pad RGB', 2),
('Hub USB 3.0', 2),
('Leitor Biométrico', 2),
('Controle Wireless PC', 2),

-- ÁUDIO
('Headset HyperX', 3),
('Fone JBL Tune', 3),
('Caixa de Som JBL', 3),
('Microfone Fifine', 3),
('Soundbar LG', 3),
('AirPods Pro', 3),
('Headphone Sony', 3),
('Caixa Alexa Echo Dot', 3),
('Microfone Blue Yeti', 3),
('Fone Bluetooth Xiaomi', 3),

-- GAMER
('Monitor Gamer 144Hz', 4),
('Cadeira Gamer', 4),
('Volante Logitech G29', 4),
('Console Xbox Series S', 4),
('Console PS5', 4),
('Nintendo Switch', 4),
('Placa RTX 4060', 4),
('Placa RTX 4070', 4),
('Memória RAM RGB 16GB', 4),
('Water Cooler RGB', 4),

-- ESCRITÓRIO
('Cadeira Escritório', 5),
('Mesa Escritório', 5),
('Calculadora HP', 5),
('Fragmentadora Papel', 5),
('Telefone Intelbras', 5),
('Projetor Epson', 5),
('Grampeador Profissional', 5),
('Agenda Executiva', 5),
('Luminária LED', 5),
('Suporte Notebook', 5),

-- SMARTPHONES
('iPhone 15', 6),
('Samsung Galaxy S24', 6),
('Xiaomi Redmi Note', 6),
('Motorola Edge', 6),
('iPhone 14', 6),
('Samsung Galaxy A54', 6),
('POCO X6', 6),
('Zenfone ASUS', 6),
('Realme 12', 6),
('iPhone SE', 6),

-- ARMAZENAMENTO
('SSD Kingston 1TB', 7),
('HD Externo Seagate', 7),
('Pendrive Sandisk 64GB', 7),
('Cartão SD 128GB', 7),
('SSD NVME Samsung', 7),
('HD WD Blue 2TB', 7),
('Case HD Externo', 7),
('NAS Synology', 7),
('SSD Crucial 500GB', 7),
('Pendrive Kingston 32GB', 7),

-- REDES
('Roteador TP-Link', 8),
('Roteador WiFi 6', 8),
('Switch 8 Portas', 8),
('Repetidor WiFi', 8),
('Cabo de Rede Cat6', 8),
('Access Point Ubiquiti', 8),
('Placa de Rede PCI', 8),
('Modem Huawei', 8),
('Antena WiFi USB', 8),
('Kit Mesh WiFi', 8),

-- STREAMING
('Fire TV Stick', 9),
('Chromecast Google TV', 9),
('Smart TV Samsung 50', 9),
('Smart TV LG OLED', 9),
('Projetor Full HD', 9),
('TV Box Xiaomi', 9),
('Controle Smart TV', 9),
('Mini Projetor Portátil', 9),
('Apple TV 4K', 9),
('Tela de Projeção', 9),

-- ACESSÓRIOS
('Carregador Turbo USB-C', 10),
('Capa iPhone 15', 10),
('Película 3D', 10),
('Suporte Celular Veicular', 10),
('Power Bank 20000mAh', 10),
('Adaptador HDMI', 10),
('Cabo USB-C', 10),
('Organizador Cabos', 10),
('Tripé Celular', 10),
('Cooler Notebook', 10);

select * from dim_produto;

