CREATE TABLE Cidades (
	id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	nome VARCHAR(60) NOT NULL,
  	populacao INT
);

CREATE TABLE Alunos (
	id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  	nome VARCHAR(60) NOT NULL,
  	data_nasc DATE,
  	id_cidade INT,
  
  	FOREIGN KEY(id_cidade) REFERENCEs Cidades(id)
);

INSERT INTO Cidades (nome, populacao) VALUES 
("Arraial dos Tucanos", 42632),
("Springfield", 13820),
("Arraial Hill Valley", 27383),
("Coruscant", 19138),
("Minas Tirith", 31394);

INSERT INTO Alunos (nome, data_nasc, id_cidade) VALUES
("Immanuel Kant", DATE("1724-04-22"), 4),
("Alan Turing", DATE("1912-06-23"), 3),
("George Boole", DATE("2002-01-01"), 1),
("Lynn Marguilis", DATE("1991-08-12"), 3),
("Nicolas Tesla", DATE("2090-01-08"), NULL),
("Ada Lovelace", DATE("1978-05-28"), 4),
("Claude Shannon", DATE("1982-01-15"), 3),
("Charles Darwin", DATE("2010-02-06"), NULL),
("Marie Curie", DATE("2007-07-12"), 3),
("Carl Sagan", DATE("2000-11-20"), 1),
("Tim Berners-Lee", DATE("1973-12-05"), 4), 
("Richard Feynman", DATE("1982-09-12"), 1);

SELECT 
Alunos.id, Alunos.nome, Alunos.data_nasc, -- informações aluno
Cidades.nome as nome_cidade, -- nome cidade
Cidades.populacao as populacao_cidade -- população cidade
FROM Alunos INNER JOIN Cidades On Alunos.id_cidade = Cidades.id; -- filtrando por id na table Cidades