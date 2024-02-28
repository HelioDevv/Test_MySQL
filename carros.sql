USE carros;

CREATE TABLE marcas (
	id INT NOT NULL AUTO_INCREMENT,
	nome_marca VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE inventario(
	id INT NOT NULL AUTO_INCREMENT,
    modelo VARCHAR(255) NOT NULL,
    transmissao VARCHAR(255) NOT NULL,
    motor VARCHAR(255) NOT NULL,
    combustivel VARCHAR(255) NOT NULL,
    marcas_id INT NOT NULL,
    PRIMARY KEY(id),    
    FOREIGN KEY(marcas_id) REFERENCES marcas(id)
);

CREATE TABLE clientes(
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    sobrenome VARCHAR(255) NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO marcas (nome_marca, origem)
VALUES ('Ford', 'dois'),
		('Chevrolet', 'dois'),
        ('Renout', 'dois'),
        ('Pegeot', 'dois');
        
INSERT INTO inventario (modelo, transmissao, motor, combustivel, marcas_id)
VALUES ('EcoSport','Manual','1.6','Flex', 2),
		('Montana','Manual','1.3','Flex', 3),
		('Clio','Manual','1.0','Gas', 4),
        ('206','Manual','1.0','Flex', 5);






