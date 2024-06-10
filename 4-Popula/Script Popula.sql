
CREATE TABLE Veículo (
    Placa VARCHAR(10) PRIMARY KEY,
    Chassi VARCHAR(17) NOT NULL,
    Cor VARCHAR(20),
    Modelo VARCHAR(50),
    Categoria VARCHAR(20),
    AnoFabricação INT
);

CREATE TABLE Proprietário (
    CPF CHAR(11) PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Endereço VARCHAR(200),
    Telefones VARCHAR(50),
    Sexo CHAR(1),
    DataNascimento DATE,
    Idade INT
);

CREATE TABLE Infração (
    ID INT PRIMARY KEY,
    Placa VARCHAR(10) REFERENCES Veículo(Placa),
    DataHora DATETIME,
    TipoInfração VARCHAR(50),
    Valor DECIMAL(10, 2),
    Agente VARCHAR (20)
);

CREATE TABLE AgenteTrânsito (
    Matrícula INT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    DataContratação DATE,
    TempoServiçoMeses INT
);

INSERT INTO Veículo (Placa, Chassi, Cor, Modelo, Categoria, AnoFabricação)
VALUES
    ('ABC1234', '12345678901234567', 'Azul', '012412', '01', 2020),
    ('XYZ5678', '98765432109876543', 'Vermelho', '013465', '01', 2018),
    ('DEF9876', '54321098765432109', 'Prata', '021529', '02', 2019),
    ('MNO5432', '98765432101234567', 'Preto', '034798', '03', 2017),
    ('JKL6789', '12345678909876543', 'Branco', '011940', '01', 2022),
    ('PQR4321', '98765432100123456', 'Verde', '020568', '02', 2021);

INSERT INTO Proprietário (CPF, Nome, Endereço, Telefones, Sexo, DataNascimento, Idade)
VALUES
    ('12345678900', 'Maria Silva', 'Rua A, 123', '(61) 98765-4321', 'F', '28-02-2002', 41),
    ('98765432100', 'João Santos', 'Av. B, 456', '(61) 99999-8888', 'M', '15-02-1990', 26),
    ('11122233344', 'Ana Oliveira', 'Rua C, 789', '(61) 55555-1234', 'F', '20-09-1992', 29),
    ('55566677788', 'Pedro Souza', 'Av. D, 987', '(61) 77777-9999', 'M', '23-05-1988', 33),
    ('99988877766', 'Luciana Pereira', 'Rua E, 321', '(61) 44444-5678', 'F', '30-12-1975', 46),
    ('44433322211', 'Rafael Lima', 'Av. F, 654', '(61) 33333-9876', 'M', '18-03-2000', 21);
    
  INSERT INTO Infração (ID, Placa, DataHora, TipoInfração, Valor, Agente)
VALUES
    (1, 'ABC1234', '01-06-2024 10:30:00', '12', 150.00, 2406),
    (2, 'XYZ5678', '15-09-2024 14:45:00', '44', 100.00, 1205),
    (3, 'DEF9876', '10-01-2024 09:15:00', '15', 200.00, 4498),
    (4, 'MNO5432', '20-12-2024 16:20:00', '22', 50.00, 2261),
    (5, 'JKL6789', '05-07-2024 12:00:00', '07', 120.00, 1714),
    (6, 'PQR4321', '08-04-2024 18:30:00', '37', 80.00, 1509);  
    
INSERT INTO AgenteTrânsito (Matrícula, Nome, DataContratação, TempoServiçoMeses)
VALUES
    (2406, 'Carlos Silva', '20-03-2018', 75),
    (1205, 'Ana Rodrigues', '10-08-2019', 60),
    (4498, 'Fernando Santos', '05-05-2017', 90),
    (2261, 'Mariana Costa', '15-01-2020', 40),
    (1714, 'Lucas Oliveira', '30-11-2016', 100),
    (1509, 'Isabela Mendes', '18-02-2021', 20);

    