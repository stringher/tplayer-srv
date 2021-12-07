CREATE DATABASE rota66teste;
USE rota66teste;
DROP DATABASE rota66teste;


ALTER TABLE livros modify createdAt datetime DEFAULT NULL;
ALTER TABLE livros modify updatedAt datetime DEFAULT NULL;
ALTER TABLE capitulos modify createdAt datetime DEFAULT NULL;
ALTER TABLE capitulos modify updatedAt datetime DEFAULT NULL;

SELECT * FROM capitulos;
SELECT * FROM livros;


/*Inserts Livros Antigo Testamento*/

INSERT INTO livros (nome_livro, testamento)
VALUES ("Gêneses", "Antigo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("Êxodo", "Antigo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("Levítico", "Antigo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("Números", "Antigo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("Deuteronômio", "Antigo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("Josué", "Antigo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("Juízes", "Antigo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("Rute", "Antigo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("1 Samuel", "Antigo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("2 Samuel", "Antigo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("1 Reis", "Antigo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("2 Reis", "Antigo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("1 Crônicas", "Antigo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("2 Crônicas", "Antigo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("Esdras", "Antigo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("Neemias", "Antigo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("Ester", "Antigo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("Jó", "Antigo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("Salmos", "Antigo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("Provérbios", "Antigo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("Eclesiastes", "Antigo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("Cantares", "Antigo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("Isaías", "Antigo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("Jeremias", "Antigo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("Lamentações", "Antigo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("Ezequiel", "Antigo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("Daniel", "Antigo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("Oseias", "Antigo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("Joel", "Antigo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("Amós", "Antigo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("Obadias", "Antigo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("Jonas", "Antigo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("Miqueias", "Antigo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("Naum", "Antigo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("Abacuque", "Antigo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("Sofonias", "Antigo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("Ageu", "Antigo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("Zacarias", "Antigo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("Malaquias", "Antigo Testamento");

/*Inserts Livros Novo Testamento*/
INSERT INTO livros (nome_livro, testamento)
VALUES ("Mateus", "Novo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("Marcos", "Novo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("Lucas", "Novo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("João", "Novo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("Atos", "Novo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("Romanos", "Novo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("1 Coríntios", "Novo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("2 Coríntios", "Novo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("Gálatas", "Novo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("Efésios", "Novo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("Filipenses", "Novo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("Colossenses", "Novo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("1 Tessalonicenses", "Novo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("2 Tessalonicenses", "Novo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("1 Timóteo", "Novo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("2 Timóteo", "Novo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("Tito", "Novo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("Filemon", "Novo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("Hebreus", "Novo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("Tiago", "Novo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("1 Pedro", "Novo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("2 Pedro", "Novo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("1 João", "Novo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("2 João", "Novo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("3 João", "Novo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("Judas", "Novo Testamento");
INSERT INTO livros (nome_livro, testamento)
VALUES ("Apocalipse", "Novo Testamento");




/*Gênesis*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Gn. 1", 1 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Gn. 2", 1 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Gn. 3", 1 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Gn. 4", 1 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Gn. 5", 1 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Gn. 6", 1 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Gn. 7", 1 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Gn. 8", 1 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Gn. 9", 1 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Gn. 10", 1 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Gn. 11", 1 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Gn. 12", 1 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "Gn. 13", 1 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "Gn. 14", 1 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "Gn. 15", 1 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "Gn. 16", 1 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (17, "Gn. 17", 1 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (18, "Gn. 18", 1 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (19, "Gn. 19", 1 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (20, "Gn. 20", 1 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (21, "Gn. 21", 1 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (22, "Gn. 22", 1 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (23, "Gn. 23", 1 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (24, "Gn. 24", 1 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (25, "Gn. 25", 1 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (26, "Gn. 26", 1 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (27, "Gn. 27", 1 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (28, "Gn. 28", 1 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (29, "Gn. 29", 1 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (30, "Gn. 30", 1 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (31, "Gn. 31", 1 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (32, "Gn. 32", 1 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (33, "Gn. 33", 1 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (34, "Gn. 34", 1 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (35, "Gn. 35", 1 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (36, "Gn. 36", 1 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (37, "Gn. 37", 1 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (38, "Gn. 38", 1 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (39, "Gn. 39", 1 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (40, "Gn. 40", 1 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (41, "Gn. 41", 1 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (42, "Gn. 42", 1 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (43, "Gn. 43", 1 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (44, "Gn. 44", 1 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (45, "Gn. 45", 1 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (46, "Gn. 46", 1 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (47, "Gn. 47", 1 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (48, "Gn. 48", 1 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (49, "Gn. 49", 1 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (50, "Gn. 50", 1 );


/*Êxodos*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Êx. 1", 2 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Êx. 2", 2 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Êx. 3", 2 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Êx. 4", 2 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Êx. 5", 2 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Êx. 6", 2 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Êx. 7", 2 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Êx. 8", 2 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Êx. 9", 2 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Êx. 10", 2 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Êx. 11", 2 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Êx. 12", 2 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "Êx. 13", 2 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "Êx. 14", 2 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "Êx. 15", 2 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "Êx. 16", 2 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (17, "Êx. 17", 2 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (18, "Êx. 18", 2 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (19, "Êx. 19", 2 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (20, "Êx. 20", 2 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (21, "Êx. 21", 2 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (22, "Êx. 22", 2 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (23, "Êx. 23", 2 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (24, "Êx. 24", 2 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (25, "Êx. 25", 2 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (26, "Êx. 26", 2 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (27, "Êx. 27", 2 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (28, "Êx. 28", 2 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (29, "Êx. 29", 2 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (30, "Êx. 30", 2 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (31, "Êx. 31", 2 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (32, "Êx. 32", 2 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (33, "Êx. 33", 2 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (34, "Êx. 34", 2 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (35, "Êx. 35", 2 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (36, "Êx. 36", 2);
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (37, "Êx. 37", 2 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (38, "Êx. 38", 2 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (39, "Êx. 39", 2 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (40, "Êx. 40", 2 );

/*Levítico*/

INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Lv. 1", 3 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Lv. 2", 3 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Lv. 3", 3 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Lv. 4", 3 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Lv. 5", 3 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Lv. 6", 3 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Lv. 7", 3 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Lv. 8", 3 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Lv. 9", 3 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Lv. 10", 3 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Lv. 11", 3 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Lv. 12", 3 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "Lv. 13", 3 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "Lv. 14", 3 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "Lv. 15", 3 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "Lv. 16", 3 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (17, "Lv. 17", 3 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (18, "Lv. 18", 3 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (19, "Lv. 19", 3 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (20, "Lv. 20", 3 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (21, "Lv. 21", 3 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (22, "Lv. 22", 3 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (23, "Lv. 23", 3 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (24, "Lv. 24", 3 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (25, "Lv. 25", 3 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (26, "Lv. 26", 3 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (27, "Lv. 27", 3 );

/*Números*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Nm. 1", 4 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Nm. 2", 4 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Nm. 3", 4 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Nm. 4", 4 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Nm. 5", 4 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Nm. 6", 4 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Nm. 7", 4 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Nm. 8", 4 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Nm. 9", 4 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Nm. 10", 4 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Nm. 11", 4 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Nm. 12", 4 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "Nm. 13", 4 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "Nm. 14", 4 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "Nm. 15", 4 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "Nm. 16", 4 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (17, "Nm. 17", 4 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (18, "Nm. 18", 4 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (19, "Nm. 19", 4 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (20, "Nm. 20", 4 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (21, "Nm. 21", 4 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (22, "Nm. 22", 4 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (23, "Nm. 23", 4 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (24, "Nm. 24", 4 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (25, "Nm. 25", 4 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (26, "Nm. 26", 4 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (27, "Nm. 27", 4 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (28, "Nm. 28", 4 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (29, "Nm. 29", 4 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (30, "Nm. 30", 4 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (31, "Nm. 31", 4 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (32, "Nm. 32", 4 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (33, "Nm. 33", 4 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (34, "Nm. 34", 4 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (35, "Nm. 35", 4 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (36, "Nm. 36", 4);

/*Deuteronômio*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Dt. 1", 5 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Dt. 2", 5 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Dt. 3", 5 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Dt. 4", 5 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Dt. 5", 5 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Dt. 6", 5 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Dt. 7", 5 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Dt. 8", 5 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Dt. 9", 5 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Dt. 10", 5 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Dt. 11", 5 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Dt. 12", 5 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "Dt. 13", 5 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "Dt. 14", 5 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "Dt. 15", 5 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "Dt. 16", 5 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (17, "Dt. 17", 5 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (18, "Dt. 18", 5 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (19, "Dt. 19", 5 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (20, "Dt. 20", 5 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (21, "Dt. 21", 5 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (22, "Dt. 22", 5 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (23, "Dt. 23", 5 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (24, "Dt. 24", 5 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (25, "Dt. 25", 5 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (26, "Dt. 26", 5 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (27, "Dt. 27", 5 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (28, "Dt. 28", 5 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (29, "Dt. 29", 5 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (30, "Dt. 30", 5 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (31, "Dt. 31", 5 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (32, "Dt. 32", 5 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (33, "Dt. 33", 5 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (34, "Dt. 34", 5 );


/*Josué*/

INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Js. 1", 6 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Js. 2", 6 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Js. 3", 6 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Js. 4", 6 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Js. 5", 6 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Js. 6", 6 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Js. 7", 6 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Js. 8", 6 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Js. 9", 6 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Js. 10", 6 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Js. 11", 6 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Js. 12", 6 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "Js. 13", 6 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "Js. 14", 6 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "Js. 15", 6 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "Js. 16", 6 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (17, "Js. 17", 6 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (18, "Js. 18", 6 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (19, "Js. 19", 6 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (20, "Js. 20", 6 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (21, "Js. 21", 6 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (22, "Js. 22", 6 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (23, "Js. 23", 6 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (24, "Js. 24", 6 );

/*Juízes*/

INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Jz. 1", 7 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Jz. 2", 7 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Jz. 3", 7 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Jz. 4", 7 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Jz. 5", 7 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Jz. 6", 7 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Jz. 7", 7 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Jz. 8", 7 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Jz. 9", 7 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Jz. 10", 7 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Jz. 11", 7 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Jz. 12", 7 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "Jz. 13", 7 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "Jz. 14", 7 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "Jz. 15", 7 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "Jz. 16", 7 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (17, "Jz. 17", 7 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (18, "Jz. 18", 7 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (19, "Jz. 19", 7 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (20, "Jz. 20", 7 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (21, "Jz. 21", 7 );

/*Rute*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Rt. 1", 8 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Rt. 2", 8 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Rt. 3", 8 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Rt. 4", 8 );

/*1 Samuel*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "1º Sm. 1", 9 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "1º Sm. 2", 9 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "1º Sm. 3", 9 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "1º Sm. 4", 9 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "1º Sm. 5", 9 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "1º Sm. 6", 9 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "1º Sm. 7", 9 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "1º Sm. 8", 9 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "1º Sm. 9", 9 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "1º Sm. 10", 9 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "1º Sm. 11", 9 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "1º Sm. 12", 9 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "1º Sm. 13", 9 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "1º Sm. 14", 9 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "1º Sm. 15", 9 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "1º Sm. 16", 9 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (17, "1º Sm. 17", 9 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (18, "1º Sm. 18", 9 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (19, "1º Sm. 19", 9 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (20, "1º Sm. 20", 9 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (21, "1º Sm. 21", 9 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (22, "1º Sm. 22", 9 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (23, "1º Sm. 23", 9 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (24, "1º Sm. 24", 9 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (25, "1º Sm. 25", 9 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (26, "1º Sm. 26", 9 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (27, "1º Sm. 27", 9 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (28, "1º Sm. 28", 9 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (29, "1º Sm. 29", 9 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (30, "1º Sm. 30", 9 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (31, "1º Sm. 31", 9 );

/*2 Samuel*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "2º Sm. 1", 10 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "2º Sm. 2", 10 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "2º Sm. 3", 10 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "2º Sm. 4", 10 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "2º Sm. 5", 10 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "2º Sm. 6", 10 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "2º Sm. 7", 10 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "2º Sm. 8", 10 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "2º Sm. 9", 10 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "2º Sm. 10", 10 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "2º Sm. 11", 10 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "2º Sm. 12", 10 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "2º Sm. 13", 10 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "2º Sm. 14", 10 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "2º Sm. 15", 10 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "2º Sm. 16", 10 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (17, "2º Sm. 17", 10 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (18, "2º Sm. 18", 10 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (19, "2º Sm. 19", 10 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (20, "2º Sm. 20", 10 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (21, "2º Sm. 21", 10 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (22, "2º Sm. 22", 10 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (23, "2º Sm. 23", 10 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (24, "2º Sm. 24", 10 );


/*1 Reis*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "1º Rs. 1", 11 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "1º Rs. 2", 11 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "1º Rs. 3", 11 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "1º Rs. 4", 11 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "1º Rs. 5", 11 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "1º Rs. 6", 11 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "1º Rs. 7", 11 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "1º Rs. 8", 11 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "1º Rs. 9", 11 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "1º Rs. 10", 11 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "1º Rs. 11", 11 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "1º Rs 12", 11 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "1º Rs. 13", 11 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "1º Rs. 14", 11 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "1º Rs. 15", 11 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "1º Rs. 16", 11 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (17, "1º Rs. 17", 11 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (18, "1º Rs. 18", 11 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (19, "1º Rs. 19", 11 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (20, "1º Rs. 20", 11 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (21, "1º Rs. 21", 11 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (22, "1º Rs. 22", 11 );


/*2 Reis*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "2º Rs. 1", 12 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "2º Rs. 2", 12 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "2º Rs. 3", 12 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "2º Rs. 4", 12 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "2º Rs. 5", 12 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "2º Rs. 6", 12 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "2º Rs. 7", 12 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "2º Rs. 8", 12 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "2º Rs. 9", 12 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "2º Rs. 10", 12 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "2º Rs. 11", 12 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "2º Rs 12", 12 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "2º Rs. 13", 12 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "2º Rs. 14", 12 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "2º Rs. 15", 12 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "2º Rs. 16", 12 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (17, "2º Rs. 17", 12 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (18, "2º Rs. 18", 12 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (19, "2º Rs. 19", 12 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (20, "2º Rs. 20", 12 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (21, "2º Rs. 21", 12 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (22, "2º Rs. 22", 12 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (23, "2º Rs. 23", 12 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (24, "2º Rs. 24", 12 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (25, "2º Rs. 25", 12 );



/*1 Crônicas*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "1º Cr. 1", 13 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "1º Cr. 2", 13 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "1º Cr. 3", 13 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "1º Cr. 4", 13 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "1º Cr. 5", 13 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "1º Cr. 6", 13 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "1º Cr. 7", 13 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "1º Cr. 8", 13 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "1º Cr. 9", 13 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "1º Cr. 10", 13 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "1º Cr. 11", 13 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "1º Cr. 12", 13 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "1º Cr. 13", 13 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "1º Cr. 14", 13 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "1º Cr. 15", 13 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "1º Cr. 16", 13 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (17, "1º Cr. 17", 13 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (18, "1º Cr. 18", 13 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (19, "1º Cr. 19", 13 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (20, "1º Cr. 20", 13 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (21, "1º Cr. 21", 13 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (22, "1º Cr. 22", 13 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (23, "1º Cr. 23", 13 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (24, "1º Cr. 24", 13 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (25, "1º Cr. 25", 13 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (26, "1º Cr. 26", 13 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (27, "1º Cr. 27", 13 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (28, "1º Cr. 28", 13 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (29, "1º Cr. 29", 13 );


/*2 Crônicas*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "2º Cr. 1", 14 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "2º Cr. 2", 14 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "2º Cr. 3", 14 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "2º Cr. 4", 14 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "2º Cr. 5", 14 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "2º Cr. 6", 14 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "2º Cr. 7", 14 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "2º Cr. 8", 14 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "2º Cr. 9", 14 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "2º Cr. 10", 14 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "2º Cr. 11", 14 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "2º Cr. 12", 14 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "2º Cr. 13", 14 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "2º Cr. 14", 14 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "2º Cr. 15", 14 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "2º Cr. 16", 14 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (17, "2º Cr. 17", 14 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (18, "2º Cr. 18", 14 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (19, "2º Cr. 19", 14 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (20, "2º Cr. 20", 14 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (21, "2º Cr. 21", 14 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (22, "2º Cr. 22", 14 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (23, "2º Cr. 23", 14 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (24, "2º Cr. 24", 14 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (25, "2º Cr. 25", 14 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (26, "2º Cr. 26", 14 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (27, "2º Cr. 27", 14 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (28, "2º Cr. 28", 14 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (29, "2º Cr. 29", 14 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (30, "2º Cr. 30", 14 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (31, "2º Cr. 31", 14 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (32, "2º Cr. 32", 14 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (33, "2º Cr. 33", 14 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (34, "2º Cr. 34", 14 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (35, "2º Cr. 35", 14 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (36, "2º Cr. 36", 14 );


/*Esdras*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Ed. 1", 15 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Ed. 2", 15 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Ed. 3", 15 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Ed. 4", 15 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Ed. 5", 15 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Ed. 6", 15 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Ed. 7", 15 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Ed. 8", 15 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Ed. 9", 15 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Ed. 10", 15 );


/*Neemias*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Ne. 1", 16 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Ne. 2", 16 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Ne. 3", 16 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Ne. 4", 16 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Ne. 5", 16 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Ne. 6", 16 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Ne. 7", 16 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Ne. 8", 16 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Ne. 9", 16 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Ne. 10", 16 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Ne. 11", 16 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Ne. 12", 16 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "Ne. 13", 16 );


/*Ester*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Et. 1", 17 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Et. 2", 17 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Et. 3", 17 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Et. 4", 17 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Et. 5", 17 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Et. 6", 17 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Et. 7", 17 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Et. 8", 17 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Et. 9", 17 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Et. 10", 17 );


/*Jó*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Jó. 1", 18 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Jó. 2", 18 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Jó. 3", 18 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Jó. 4", 18 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Jó. 5", 18 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Jó. 6", 18 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Jó. 7", 18 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Jó. 8", 18 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Jó. 9", 18 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Jó. 10", 18 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Jó. 11", 18 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Jó. 12", 18 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "Jó. 13", 18 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "Jó. 14", 18 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "Jó. 15", 18 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "Jó. 16", 18 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (17, "Jó. 17", 18 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (18, "Jó. 18", 18 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (19, "Jó. 19", 18 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (20, "Jó. 20", 18 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (21, "Jó. 21", 18 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (22, "Jó. 22", 18 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (23, "Jó. 23", 18 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (24, "Jó. 24", 18 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (25, "Jó. 25", 18 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (26, "Jó. 26", 18 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (27, "Jó. 27", 18 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (28, "Jó. 28", 18 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (29, "Jó. 29", 18 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (30, "Jó. 30", 18 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (31, "Jó. 31", 18 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (32, "Jó. 32", 18 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (33, "Jó. 33", 18 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (34, "Jó. 34", 18 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (35, "Jó. 35", 18 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (36, "Jó. 36", 18);
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (37, "Jó. 37", 18 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (38, "Jó. 38", 18 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (39, "Jó. 39", 18 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (40, "Jó. 40", 18 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (41, "Jó. 41", 18 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (42, "Jó. 42", 18 );


/*Salmos*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Sl. 1", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Sl. 2", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Sl. 3", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Sl. 4", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Sl. 5", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Sl. 6", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Sl. 7", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Sl. 8", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Sl. 9", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Sl. 10", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Sl. 11", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Sl. 12", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "Sl. 13", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "Sl. 14", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "Sl. 15", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "Sl. 16", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (17, "Sl. 17", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (18, "Sl. 18", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (19, "Sl. 19", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (20, "Sl. 20", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (21, "Sl. 21", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (22, "Sl. 22", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (23, "Sl. 23", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (24, "Sl. 24", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (25, "Sl. 25", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (26, "Sl. 26", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (27, "Sl. 27", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (28, "Sl. 28", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (29, "Sl. 29", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (30, "Sl. 30", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (31, "Sl. 31", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (32, "Sl. 32", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (33, "Sl. 33", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (34, "Sl. 34", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (35, "Sl. 35", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (36, "Sl. 36", 19);
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (37, "Sl. 37", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (38, "Sl. 38", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (39, "Sl. 39", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (40, "Sl. 40", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (41, "Sl. 41", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (42, "Sl. 42", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (43, "Sl. 43", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (44, "Sl. 44", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (45, "Sl. 45", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (46, "Sl. 46", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (47, "Sl. 47", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (48, "Sl. 48", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (49, "Sl. 49", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (50, "Sl. 50", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (51, "Sl. 51", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (52, "Sl. 52", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (53, "Sl. 53", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (54, "Sl. 54", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (55, "Sl. 55", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (56, "Sl. 56", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (57, "Sl. 57", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (58, "Sl. 58", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (59, "Sl. 59", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (60, "Sl. 60", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (61, "Sl. 61", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (62, "Sl. 62", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (63, "Sl. 63", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (64, "Sl. 64", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (65, "Sl. 65", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (66, "Sl. 66", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (67, "Sl. 67", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (68, "Sl. 68", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (69, "Sl. 69", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (70, "Sl. 70", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (71, "Sl. 71", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (72, "Sl. 72", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (73, "Sl. 73", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (74, "Sl. 74", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (75, "Sl. 75", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (76, "Sl. 76", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (77, "Sl. 77", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (78, "Sl. 78", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (79, "Sl. 79", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (80, "Sl. 80", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (81, "Sl. 81", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (82, "Sl. 82", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (83, "Sl. 83", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (84, "Sl. 84", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (85, "Sl. 85", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (86, "Sl. 86", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (87, "Sl. 87", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (88, "Sl. 88", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (89, "Sl. 89", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (90, "Sl. 90", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (91, "Sl. 91", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (92, "Sl. 92", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (93, "Sl. 93", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (94, "Sl. 94", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (95, "Sl. 95", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (96, "Sl. 96", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (97, "Sl. 97", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (98, "Sl. 98", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (99, "Sl. 99", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (100, "Sl. 100", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (101, "Sl. 101", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (102, "Sl. 102", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (103, "Sl. 103", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (104, "Sl. 104", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (105, "Sl. 105", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (106, "Sl. 106", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (107, "Sl. 107", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (108, "Sl. 108", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (109, "Sl. 109", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (110, "Sl. 110", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (111, "Sl. 111", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (112, "Sl. 112", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (113, "Sl. 113", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (114, "Sl. 114", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (115, "Sl. 115", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (116, "Sl. 116", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (117, "Sl. 117", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (118, "Sl. 118", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (119, "Sl. 119", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (120, "Sl. 120", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (121, "Sl. 121", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (122, "Sl. 122", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (123, "Sl. 123", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (124, "Sl. 124", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (125, "Sl. 125", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (126, "Sl. 126", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (127, "Sl. 127", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (128, "Sl. 128", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (129, "Sl. 129", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (130, "Sl. 130", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (131, "Sl. 131", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (132, "Sl. 132", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (133, "Sl. 133", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (134, "Sl. 134", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (135, "Sl. 135", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (136, "Sl. 136", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (137, "Sl. 137", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (138, "Sl. 138", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (139, "Sl. 139", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (140, "Sl. 140", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (141, "Sl. 141", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (142, "Sl. 142", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (143, "Sl. 143", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (144, "Sl. 144", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (145, "Sl. 145", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (146, "Sl. 146", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (147, "Sl. 147", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (148, "Sl. 148", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (149, "Sl. 149", 19 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (150, "Sl. 150", 19 );


/*Provérbios*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Pv. 1", 20 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Pv. 2", 20 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Pv. 3", 20 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Pv. 4", 20 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Pv. 5", 20 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Pv. 6", 20 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Pv. 7", 20 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Pv. 8", 20 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Pv. 9", 20 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Pv. 10", 20 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Pv. 11", 20 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Pv. 12", 20 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "Pv. 13", 20 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "Pv. 14", 20 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "Pv. 15", 20 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "Pv. 16", 20 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (17, "Pv. 17", 20 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (18, "Pv. 18", 20 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (19, "Pv. 19", 20 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (20, "Pv. 20", 20 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (21, "Pv. 21", 20 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (22, "Pv. 22", 20 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (23, "Pv. 23", 20 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (24, "Pv. 24", 20 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (25, "Pv. 25", 20 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (26, "Pv. 26", 20 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (27, "Pv. 27", 20 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (28, "Pv. 28", 20 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (29, "Pv. 29", 20 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (30, "Pv. 30", 20 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (31, "Pv. 31", 20 );



/*Eclesiastes*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Ec. 1", 21 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Ec. 2", 21 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Ec. 3", 21 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Ec. 4", 21 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Ec. 5", 21 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Ec. 6", 21 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Ec. 7", 21 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Ec. 8", 21 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Ec. 9", 21 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Ec. 10", 21 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Ec. 11", 21 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Ec. 12", 21 );




/*Cânticos*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Ct. 1", 22 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Ct. 2", 22 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Ct. 3", 22 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Ct. 4", 22 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Ct. 5", 22 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Ct. 6", 22 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Ct. 7", 22 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Ct. 8", 22 );



/*Isaías*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Is. 1", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Is. 2", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Is. 3", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Is. 4", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Is. 5", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Is. 6", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Is. 7", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Is. 8", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Is. 9", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Is. 10", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Is. 11", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Is. 12", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "Is. 13", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "Is. 14", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "Is. 15", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "Is. 16", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (17, "Is. 17", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (18, "Is. 18", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (19, "Is. 19", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (20, "Is. 20", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (21, "Is. 21", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (22, "Is. 22", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (23, "Is. 23", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (24, "Is. 24", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (25, "Is. 25", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (26, "Is. 26", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (27, "Is. 27", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (28, "Is. 28", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (29, "Is. 29", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (30, "Is. 30", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (31, "Is. 31", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (32, "Is. 32", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (33, "Is. 33", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (34, "Is. 34", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (35, "Is. 35", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (36, "Is. 36", 23);
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (37, "Is. 37", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (38, "Is. 38", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (39, "Is. 39", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (40, "Is. 40", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (41, "Is. 41", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (42, "Is. 42", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (43, "Is. 43", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (44, "Is. 44", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (45, "Is. 45", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (46, "Is. 46", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (47, "Is. 47", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (48, "Is. 48", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (49, "Is. 49", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (50, "Is. 50", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (51, "Is. 51", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (52, "Is. 52", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (53, "Is. 53", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (54, "Is. 54", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (55, "Is. 55", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (56, "Is. 56", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (57, "Is. 57", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (58, "Is. 58", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (59, "Is. 59", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (60, "Is. 60", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (61, "Is. 61", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (62, "Is. 62", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (63, "Is. 63", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (64, "Is. 64", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (65, "Is. 65", 23 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (66, "Is. 66", 23 );


/*Jeremias*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Jr. 1", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Jr. 2", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Jr. 3", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Jr. 4", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Jr. 5", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Jr. 6", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Jr. 7", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Jr. 8", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Jr. 9", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Jr. 10", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Jr. 11", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Jr. 12", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "Jr. 13", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "Jr. 14", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "Jr. 15", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "Jr. 16", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (17, "Jr. 17", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (18, "Jr. 18", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (19, "Jr. 19", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (20, "Jr. 20", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (21, "Jr. 21", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (22, "Jr. 22", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (23, "Jr. 23", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (24, "Jr. 24", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (25, "Jr. 25", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (26, "Jr. 26", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (27, "Jr. 27", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (28, "Jr. 28", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (29, "Jr. 29", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (30, "Jr. 30", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (31, "Jr. 31", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (32, "Jr. 32", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (33, "Jr. 33", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (34, "Jr. 34", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (35, "Jr. 35", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (36, "Jr. 36", 24);
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (37, "Jr. 37", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (38, "Jr. 38", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (39, "Jr. 39", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (40, "Jr. 40", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (41, "Jr. 41", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (42, "Jr. 42", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (43, "Jr. 43", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (44, "Jr. 44", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (45, "Jr. 45", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (46, "Jr. 46", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (47, "Jr. 47", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (48, "Jr. 48", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (49, "Jr. 49", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (50, "Jr. 50", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (51, "Jr. 51", 24 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (52, "Jr. 52", 24 );


/*Lamentações*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Lm. 1", 25 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Lm. 2", 25 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Lm. 3", 25 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Lm. 4", 25 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Lm. 5", 25 );



/*Ezequiel*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Ez. 1", 26 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Ez. 2", 26 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Ez. 3", 26 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Ez. 4", 26 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Ez. 5", 26 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Ez. 6", 26 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Ez. 7", 26 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Ez. 8", 26 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Ez. 9", 26 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Ez. 10", 26 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Ez. 11", 26 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Ez. 12", 26 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "Ez. 13", 26 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "Ez. 14", 26 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "Ez. 15", 26 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "Ez. 16", 26 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (17, "Ez. 17", 26 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (18, "Ez. 18", 26 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (19, "Ez. 19", 26 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (20, "Ez. 20", 26 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (21, "Ez. 21", 26 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (22, "Ez. 22", 26 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (23, "Ez. 23", 26 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (24, "Ez. 24", 26 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (25, "Ez. 25", 26 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (26, "Ez. 26", 26 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (27, "Ez. 27", 26 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (28, "Ez. 28", 26 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (29, "Ez. 29", 26 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (30, "Ez. 30", 26 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (31, "Ez. 31", 26 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (32, "Ez. 32", 26 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (33, "Ez. 33", 26 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (34, "Ez. 34", 26 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (35, "Ez. 35", 26 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (36, "Ez. 36", 26);
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (37, "Ez. 37", 26 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (38, "Ez. 38", 26 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (39, "Ez. 39", 26 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (40, "Ez. 40", 26 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (41, "Ez. 41", 26 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (42, "Ez. 42", 26 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (43, "Ez. 43", 26 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (44, "Ez. 44", 26 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (45, "Ez. 45", 26 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (46, "Ez. 46", 26 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (47, "Ez. 47", 26 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (48, "Ez. 48", 26 );






/*Daniel*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Dn. 1", 27 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Dn. 2", 27 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Dn. 3", 27 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Dn. 4", 27 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Dn. 5", 27 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Dn. 6", 27 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Dn. 7", 27 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Dn. 8", 27 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Dn. 9", 27 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Dn. 10", 27 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Dn. 11", 27 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Dn. 12", 27 );




/*Oséias*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Os. 1", 28 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Os. 2", 28 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Os. 3", 28 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Os. 4", 28 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Os. 5", 28 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Os. 6", 28 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Os. 7", 28 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Os. 8", 28 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Os. 9", 28 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Os. 10", 28 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Os. 11", 28 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Os. 12", 28 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "Os. 13", 28 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "Os. 14", 28 );


/*Joel*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Jl. 1", 29 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Jl. 2", 29 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Jl. 3", 29 );





/*Amós*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Am. 1", 30 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Am. 2", 30 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Am. 3", 30 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Am. 4", 30 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Am. 5", 30 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Am. 6", 30 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Am. 7", 30 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Am. 8", 30 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Am. 9", 30 );


/*Obadias*/

INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Ob. 1", 31 );



/*Jonas*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Jn. 1", 32 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Jn. 2", 32 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Jn. 3", 32 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Jn. 4", 32 );

/*Miquéias*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Mq. 1", 33 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Mq. 2", 33 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Mq. 3", 33 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Mq. 4", 33 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Mq. 5", 33 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Mq. 6", 33 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Mq. 7", 33 );


/*Naum*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Na. 1", 34 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Na. 2", 34 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Na. 3", 34 );


/*Habacuque*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Hc. 1", 35 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Hc. 2", 35 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Hc. 3", 35 );



/*Sofonias*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Sf. 1", 36 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Sf. 2", 36 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Sf. 3", 36 );

/*Ageu*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Ag. 1", 37 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Ag. 2", 37 );



/*Zacarias*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Zc. 1", 38 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Zc. 2", 38 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Zc. 3", 38 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Zc. 4", 38 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Zc. 5", 38 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Zc. 6", 38 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Zc. 7", 38 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Zc. 8", 38 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Zc. 9", 38 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Zc. 10", 38 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Zc. 11", 38 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Zc. 12", 38 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "Zc. 13", 38 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "Zc. 14", 38 );



/*Malaquias*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Ml. 1", 39 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Ml. 2", 39 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Ml. 3", 39 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Ml. 4", 39 );

/*******************NOVO TESTAMENTO*********************/

/*Mateus*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Mt. 1", 40 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Mt. 2", 40 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Mt. 3", 40 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Mt. 4", 40 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Mt. 5", 40 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Mt. 6", 40 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Mt. 7", 40 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Mt. 8", 40 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Mt. 9", 40 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Mt. 10", 40 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Mt. 11", 40 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Mt. 12", 40 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "Mt. 13", 40 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "Mt. 14", 40 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "Mt. 15", 40 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "Mt. 16", 40 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (17, "Mt. 17", 40 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (18, "Mt. 18", 40 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (19, "Mt. 19", 40 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (20, "Mt. 20", 40 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (21, "Mt. 21", 40 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (22, "Mt. 22", 40 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (23, "Mt. 23", 40 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (24, "Mt. 24", 40 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (25, "Mt. 25", 40 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (26, "Mt. 26", 40 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (27, "Mt. 27", 40 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (28, "Mt. 28", 40 );

/*Marcos*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Mc. 1", 41 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Mc. 2", 41 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Mc. 3", 41 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Mc. 4", 41 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Mc. 5", 41 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Mc. 6", 41 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Mc. 7", 41 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Mc. 8", 41 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Mc. 9", 41 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Mc. 10", 41 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Mc. 11", 41 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Mc. 12", 41 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "Mc. 13", 41 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "Mc. 14", 41 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "Mc. 15", 41 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "Mc. 16", 41 );


/*Lucas*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Lc. 1", 42 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Lc. 2", 42 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Lc. 3", 42 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Lc. 4", 42 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Lc. 5", 42 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Lc. 6", 42 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Lc. 7", 42 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Lc. 8", 42 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Lc. 9", 42 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Lc. 10", 42 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Lc. 11", 42 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Lc. 12", 42 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "Lc. 13", 42 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "Lc. 14", 42 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "Lc. 15", 42 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "Lc. 16", 42 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (17, "Lc. 17", 42 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (18, "Lc. 18", 42 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (19, "Lc. 19", 42 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (20, "Lc. 20", 42 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (21, "Lc. 21", 42 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (22, "Lc. 22", 42 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (23, "Lc. 23", 42 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (24, "Lc. 24", 42 );


/*João*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Jo. 1", 43 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Jo. 2", 43 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Jo. 3", 43 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Jo. 4", 43 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Jo. 5", 43 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Jo. 6", 43 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Jo. 7", 43 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Jo. 8", 43 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Jo. 9", 43 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Jo. 10", 43 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Jo. 11", 43 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Jo. 12", 43 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "Jo. 13", 43 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "Jo. 14", 43 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "Jo. 15", 43 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "Jo. 16", 43 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (17, "Jo. 17", 43 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (18, "Jo. 18", 43 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (19, "Jo. 19", 43 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (20, "Jo. 20", 43 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (21, "Jo. 21", 43 );

/*Atos*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "At. 1", 44 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "At. 2", 44 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "At. 3", 44 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "At. 4", 44 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "At. 5", 44 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "At. 6", 44 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "At. 7", 44 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "At. 8", 44 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "At. 9", 44 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "At. 10", 44 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "At. 11", 44 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "At. 12", 44 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "At. 13", 44 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "At. 14", 44 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "At. 15", 44 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "At. 16", 44 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (17, "At. 17", 44 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (18, "At. 18", 44 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (19, "At. 19", 44 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (20, "At. 20", 44 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (21, "At. 21", 44 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (22, "At. 22", 44 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (23, "At. 23", 44 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (24, "At. 24", 44 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (25, "At. 25", 44 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (26, "At. 26", 44 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (27, "At. 27", 44 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (28, "At. 28", 44 );


/*Romanos*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Rm. 1", 45 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Rm. 2", 45 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Rm. 3", 45 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Rm. 4", 45 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Rm. 5", 45 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Rm. 6", 45 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Rm. 7", 45 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Rm. 8", 45 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Rm. 9", 45 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Rm. 10", 45 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Rm. 11", 45 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Rm. 12", 45 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "Rm. 13", 45 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "Rm. 14", 45 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "Rm. 15", 45 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "Rm. 16", 45 );



/*1 Coríntios*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "1º Co. 1", 46 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "1º Co. 2", 46 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "1º Co. 3", 46 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "1º Co. 4", 46 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "1º Co. 5", 46 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "1º Co. 6", 46 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "1º Co. 7", 46 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "1º Co. 8", 46 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "1º Co. 9", 46 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "1º Co. 10", 46 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "1º Co. 11", 46 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "1º Co. 12", 46 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "1º Co. 13", 46 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "1º Co. 14", 46 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "1º Co. 15", 46 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "1º Co. 16", 46 );

/*2 Coríntios*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "2º Co. 1", 47 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "2º Co. 2", 47 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "2º Co. 3", 47 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "2º Co. 4", 47 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "2º Co. 5", 47 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "2º Co. 6", 47 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "2º Co. 7", 47 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "2º Co. 8", 47 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "2º Co. 9", 47 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "2º Co. 10", 47 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "2º Co. 11", 47 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "2º Co. 12", 47 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "2º Co. 13", 47 );




/*Gálatas*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Gl. 1", 48 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Gl. 2", 48 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Gl. 3", 48 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Gl. 4", 48 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Gl. 5", 48 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Gl. 6", 48 );

/*Efésios*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Ef. 1", 49 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Ef. 2", 49 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Ef. 3", 49 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Ef. 4", 49 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Ef. 5", 49 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Ef. 6", 49 );


/*Filipenses*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Fp. 1", 50 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Fp. 2", 50 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Fp. 3", 50 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Fp. 4", 50 );



/*Colossenses*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Cl. 1", 51 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Cl. 2", 51 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Cl. 3", 51 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Cl. 4", 51 );


/*1 Tessalonicenses*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "1º Ts. 1", 52 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "1º Ts. 2", 52 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "1º Ts. 3", 52 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "1º Ts. 4", 52 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "1º Ts. 5", 52 );

/*2 Tessalonicenses*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "2º Ts. 1", 53 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "2º Ts. 2", 53 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "2º Ts. 3", 53 );



/*1 Timóteo*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "1º Tm. 1", 54 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "1º Tm. 2", 54 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "1º Tm. 3", 54 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "1º Tm. 4", 54 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "1º Tm. 5", 54 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "1º Tm. 6", 54 );


/*1 Timóteo*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "2º Tm. 1", 55 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "2º Tm. 2", 55 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "2º Tm. 3", 55 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "2º Tm. 4", 55 );

/*Tito*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Tt. 1", 56 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Tt. 2", 56 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Tt. 3", 56 );

/*Filemom*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Fm. 1", 57 );




/*Hebreus*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Hb. 1", 58 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Hb. 2", 58 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Hb. 3", 58 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Hb. 4", 58 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Hb. 5", 58 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Hb. 6", 58 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Hb. 7", 58 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Hb. 8", 58 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Hb. 9", 58 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Hb. 10", 58 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Hb. 11", 58 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Hb. 12", 58 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "Hb. 13", 58 );




/*Tiago*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Tg. 1", 59 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Tg. 2", 59 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Tg. 3", 59 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Tg. 4", 59 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Tg. 5", 59 );




/*1 Pedro*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "1º Pe. 1", 60 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "1º Pe. 2", 60 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "1º Pe. 3", 60 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "1º Pe. 4", 60 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "1º Pe. 5", 60 );


/*2 Pedro*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "2º Pe. 1", 61 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "2º Pe. 2", 61 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "2º Pe. 3", 61 );

/*1 João*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "1º Jo. 1", 62 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "1º Jo. 2", 62 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "1º Jo. 3", 62 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "1º Jo. 4", 62 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "1º Jo. 5", 62 );

/*2 João*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "2º Jo. 1", 63 );

/*3 João*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "3º Jo. 1", 64 );


/*Judas*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Jd. 1", 65 );


/*Apocalipse*/
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Ap. 1", 66 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Ap. 2", 66 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Ap. 3", 66 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Ap. 4", 66 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Ap. 5", 66 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Ap. 6", 66 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Ap. 7", 66 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Ap. 8", 66 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Ap. 9", 66 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Ap. 10", 66 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Ap. 11", 66 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Ap. 12", 66 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "Ap. 13", 66 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "Ap. 14", 66 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "Ap. 15", 66 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "Ap. 16", 66 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (17, "Ap. 17", 66 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (18, "Ap. 18", 66 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (19, "Ap. 19", 66 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (20, "Ap. 20", 66 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (21, "Ap. 21", 66 );
INSERT INTO capitulos (num_cap, titulo_cap, id_livro)
VALUES (22, "Ap. 22", 66 );

