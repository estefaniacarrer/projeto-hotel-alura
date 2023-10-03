CREATE TABLE hospedes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    sobrenome VARCHAR(255) NOT NULL,
    data_nascimento DATE,
    nacionalidade VARCHAR(255),
    telefone VARCHAR(20),
    idReserva INT,
    FOREIGN KEY (idReserva) REFERENCES reservas(id)
);

CREATE TABLE reservas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    data_entrada DATE NOT NULL,
    data_saida DATE NOT NULL,
    valor VARCHAR(255) NOT NULL,
    formaPagamento VARCHAR(255) NOT NULL
);


-- Inserir dados na tabela hospedes
INSERT INTO hospedes (id, nome, sobrenome, data_nascimento, nacionalidade, telefone, idReserva) 
VALUES
    (1, 'João', 'Silva', '1990-05-15', 'brasileiro-brasileira', '(11) 1234-5678', 1),
    (2, 'Maria', 'Santos', '1985-08-20', 'brasileiro-brasileira', '(21) 9876-5432', 2),
    (3, 'Pedro', 'Fernandes', '1995-03-10', 'brasileiro-brasileira', '(351) 9123-4567', 3),
    (4, 'Ana', 'Oliveira', '1988-12-02', 'brasileiro-brasileira', '(31) 8765-4321', 4),
    (5, 'Luis', 'Garcia', '1992-07-25', 'brasileiro-brasileira', '(34) 7654-3210', 5);

-- Inserir dados na tabela reservas
INSERT INTO reservas (data_entrada, data_saida, valor, formaPagamento)
VALUES
    ('2023-11-01', '2023-11-10', '1500.00', 'Cartão de Crédito'),
    ('2023-12-05', '2023-12-15', '1800.00', 'Cartão de Crédito'),
    ('2024-01-10', '2024-01-20', '1200.00', 'Dinheiro'),
    ('2024-02-15', '2024-02-25', '1600.00', 'Dinheiro'),
    ('2024-03-20', '2024-03-30', '2000.00', 'Cartão de Débito');
    
SELECT * FROM hospedes;
    
SELECT * FROM reservas;





