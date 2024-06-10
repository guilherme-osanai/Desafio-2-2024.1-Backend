
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
    Valor DECIMAL(10, 2)
);

CREATE TABLE AgenteTrânsito (
    Matrícula INT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    DataContratação DATE,
    TempoServiçoMeses INT
);