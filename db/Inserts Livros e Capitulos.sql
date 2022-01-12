CREATE DATABASE rota;
USE rota;
DROP DATABASE rota;

/*----------------OBSERVAÇÕES IMPORTANTES-------------------*/

/*Essa linha permite desativar o Safe Mode, para que seja possível executar o Update*/
SET SQL_SAFE_UPDATES = 0;


truncate table midia_capitulos;
truncate table Midia;


/*Alters dos Campos Nulos*/

ALTER TABLE Livros modify createdAt datetime DEFAULT NULL;
ALTER TABLE Livros modify updatedAt datetime DEFAULT NULL;
ALTER TABLE Capitulos modify createdAt datetime DEFAULT NULL;
ALTER TABLE Capitulos modify updatedAt datetime DEFAULT NULL;
ALTER TABLE Tema modify createdAt datetime DEFAULT NULL;
ALTER TABLE Tema modify updatedAt datetime DEFAULT NULL;
ALTER TABLE Midia modify createdAt datetime DEFAULT NULL;
ALTER TABLE Midia modify updatedAt datetime DEFAULT NULL;


/*Inserts da Tabela Tema, apenas para teste*/
INSERT INTO Tema (nome, descricao)
VALUES ("Casamento", "casamento ...");
INSERT INTO Tema (nome, descricao)
VALUES ("Familia", "familia ...");
INSERT INTO Tema (nome, descricao)
VALUES ("Natal", "natal ...");
INSERT INTO Tema (nome, descricao)
VALUES ("Alegria", "alegria ...");


/*Update da Tabela Livro no Campo Testamento*/

UPDATE Livros
SET cod_testamento = 1
WHERE testamento = 'Antigo Testamento';

UPDATE Livros
SET cod_testamento = 2
WHERE testamento = 'Novo Testamento';

/*Selects das Tabelas do Banco*/
SELECT * FROM Administradores;
SELECT * FROM Capitulos;
SELECT * FROM Favoritos;
SELECT * FROM Livros;
SELECT * FROM LogonsSociais;
SELECT * FROM Midia;
SELECT * FROM midia_capitulos;
SELECT * FROM MidiaTemas;
SELECT * FROM PlaylistItens;
SELECT * FROM Playlists;
SELECT * FROM SequelizeMeta;
SELECT * FROM Tema;
SELECT * FROM TituloDestaqueItems;
SELECT * FROM TitulosDestaque;
SELECT * FROM Usuarios;


/*Inserts da Tabela Midia*/
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Gênesis 6 - Corrupção gigante", "947c98d9-f9b4-4356-b42a-ab960122def1","Episódio com o tema 'Corrupção gigante' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Gênesis 6. Fique firme e venha com a gente para a Terra de Gigantes! Em nossa série de estudos no livro de Gênesis chegamos agora ao capítulo seis, e o professor Sayão vai explicar o motivo da decadência da raça humana.", "25:45");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Gênesis 34 - Ameaça de morte", "da61bda2-d147-449d-987f-ab9601333fd8","Episódio com o tema 'Ameaça de morte'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Gênesis 34. Querendo riqueza para a sua pobre vida? Só estudando a Bíblia! Às vezes, andamos por lugares cujos perigos nem imaginamos. Os desejos devem obedecer à razão, mas quando isso não acontece pode esperar pelo pior.", "24:58");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Gênesis 38 - Escândalo na família", "9e7ff449-c838-42dd-a413-ab9601333fe2","Episódio com o tema 'Escândalo na família'.Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Gênesis 38. Será que toda família é igual e só muda, mesmo, o endereço?", "24:11");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Gênesis 18 - Justiça e misericórdia", "374ff7f7-d756-42f3-ae1c-ab9601333fc6","Episódio com o tema 'Justiça e misericórdia' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Gênesis 18. Sabemos que Deus é amor, paciente, misericordioso, mas não podemos nos esquecer que Ele também é justo e disciplinador. Desobedecer a Deus é fogo! Nesta longa estrada da vida, você conhece os perigos? Quem brinca com o pecado acaba se queimando.", "26:55");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Gênesis 14 - Dois encontros emocionantes", "45cee879-e813-44a1-bf86-ab9601333fbf","Episódio com o tema 'Dois encontros emocionantes' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Gênesis 14. Vamos olhar o capítulo 14 de Gênesis e descobrir que sempre temos uma luta para enfrentar. Cuidado para não comprar uma briga de graça. Por que tantas guerras? Preparados? Vamos para mais essa lição.", "26:30");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Gênesis 4 - O progresso fatal", "93cd2698-6ba5-4379-8112-ab960122def8","Episódio com o tema 'O progresso fatal' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Gênesis 4. Neste estudo, o professor Luiz Sayão fala sobre o “Progresso Fatal”. A fuga de Caim, depois de matar o seu irmão, o leva para um lugar onde é formada a primeira cidade no mundo. O resultado você vai conhecer agora.", "25:53");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Gênesis 4 - A falsa religião", "1b9d18a4-b850-4efa-ab57-ab960122deec","Episódio com o tema 'A falsa religião' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Gênesis 4. Você sabia que Deus sempre dá mais uma oportunidade? É isso o que o professor Sayão vai explicar para nós hoje. Você sabia que os grandes problemas começam com coisas pequenas? Mesmo quando uma tragédia acontece, Deus está perto.", "27:25");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Gênesis 42 - De volta para o passado", "5162b0ce-88b7-4e3d-99f1-ab9601333fe2","Episódio com o tema 'De volta para o passado'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Gênesis 42. O teu passado incomoda a sua vida agora? Como lidar com traumas do passado? Saiba que o melhor profeta do futuro é o passado. José foi curado de vários conflitos internos, quer saber como?", "25:53");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Gênesis 2 - A origem do ser humano", "65d15cd8-6164-4105-97c2-ab960122dee7","Episódio com o tema 'A origem do ser humano' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Gênesis 2. Quem somos nós? De onde viemos? O que estamos fazendo aqui nesse mundo? Será que Adão era feliz porque não tinha sogra e nem caminhão? ", "27:36");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Gênesis 28 - A escada de emergência", "dbfba991-bf8a-40c7-bdc3-ab9601333ffa","Episódio com o tema 'A escada de emergência'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Gênesis 28. Quando as coisas começam a ficar ‘quentes’ é melhor ir até a saída de emergência, não é mesmo? A adversidade é um trampolim para a maturidade.", "25:06");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Gênesis 5 - O túnel do tempo", "d63a0396-893d-4b79-b878-ab960122def0","Episódio com o tema 'O túnel do tempo' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Gênesis 5. Nada de tristeza e angústia! A nossa viagem, agora, é através do “Túnel do Tempo”. O professor Luiz Sayão vai mostrar qual é a importância daquelas listas de nomes que encontramos na Bíblia: as genealogias. Estamos no começo da série de estudos no livro de Gênesis capítulo cinco.", "26:14");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Gênesis 1 - A criação do mundo", "83eb047f-d426-4c4f-929a-ab960122dee7","Episódio com o tema 'A criação do mundo' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Gênesis 1. O primeiro capítulo do primeiro livro da Bíblia. É o alicerce onde se apoia e se edifica a revelação de Deus. Saiba que mundo é esse e como as coisas apareceram na terra.", "28:26");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Gênesis 22 - Uma experiência de matar", "7d7b9745-92f0-45ff-96a2-ab9601333fc9","Episódio com o tema 'Uma experiência de matar'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Gênesis 22. Estamos estudando o primeiro livro da Bíblia, Gênesis. O capítulo 22 mostra que Deus sempre prova a nossa fé. Será que Deus manda fazer coisas estranhas?", "27:31");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Gênesis 12 - Uma rota sem mapa", "acb3c06c-c548-4e39-ad48-ab9601333f19","Episódio com o tema 'Uma rota sem mapa' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Gênesis 12. Quem não sabe para onde vai nunca sabe quando vai chegar. Se você se sente perdido e está cansado de procurar o sentido das coisas, preste atenção neste episódio.", "24:50");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Gênesis 30 - Jacó investimentos: prosperidade garantida", "6a6aa0ff-0a3d-4d3c-851f-ab9601333fdf","Episódio com o tema 'Jacó investimentos: prosperidade garantida'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Gênesis 30. Existem pessoas tão miseravelmente pobres que só têm dinheiro, não é verdade? Se dinheiro não cai do céu, como podemos ser prósperos? Aprenda sobre isso neste estudo.", "25:03");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Gênesis 31 - Jacó em rota de fuga", "d98d5add-4808-4805-aba6-ab9601333fd5","Episódio com o tema 'Jacó em rota de fuga'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Gênesis 31. Você vai ver como Deus trabalha na vida e no caráter de um homem. Nem tudo o que se enfrenta pode ser modificado. Mas nada pode ser modificado enquanto não for enfrentado. É isso que fez Jacó!", "26:36");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Gênesis 3 - A origem do pecado", "38b4ddc8-8765-428a-bd21-ab960122deeb","Episódio com o tema 'A origem do pecado' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Gênesis 3. Você quer saber por que o homem sofre? Por que Deus permite o mal? Então embarque nessa viagem e venha descobrir.", "27:14");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Gênesis 1 - Tudo foi criado por Deus", "7640b122-39e1-43b8-a290-ab960122defc","Episódio com o tema 'Tudo foi criado por Deus' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Gênesis 1. Vamos saber um pouco mais sobre a doutrina da criação, o lugar da ciência nesse assunto, e como o mal apareceu no mundo. Vamos juntos ver que na criação Deus se revela.", "26:14");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Gênesis 37 - Sonhos numa família em confusão", "b0cd3590-d87e-4e9c-ae82-ab9601333fdf","Episódio com o tema 'Sonhos numa família em confusão'. Apresentação: Luiz Sayão e  Alberto Veríssimo Com base em Gênesis 37. No último estudo pulamos para a história de Judá e Tamar registrada no capítulo 38. Vamos, agora, retomar a sequência para conhecer a vida de José. Rota 66 segue viagem para o Egito onde o povo de Deus vai viver sua maior aventura e também seu maior pesadelo.", "26:24");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Gênesis 3 - O pecado e suas consequências", "eaa98d11-90ec-45e1-aed5-ab960122deea","Episódio com o tema 'O pecado e suas consequências' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Gênesis 3. Hoje vamos conhecer as consequências do pecado descritas no capítulo três de Gênesis.", "26:27");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Gênesis 11 - A queda da Torre: o desastre do capítulo 11 de Gênesis", "a671b1c1-2897-471e-96d3-ab9601333fb1","Episódio com o tema 'A queda da Torre: o desastre do capítulo 11 de Gênesis' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Gênesis 11. Se prepare porque vamos subir a ladeira de Gênesis Onze. Nosso estudo é bem sugestivo: 'A queda da Torre, o desastre de Onze de Gênesis'. Será que o mundo seria mais fácil se todos falassem a mesma língua?", "25:42");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Gênesis 43, 44 e 45 - Aguenta coração!", "e11411c8-4244-47fe-a37f-ab9601333fe4","Episódio com o tema 'Aguenta coração!'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Gênesis 43, 44 e 45. Vamos falar de um assunto muito importante que encontramos nos capítulos 43 até 45 de Gênesis: o reencontro de José com seus irmãos que, no passado, tentaram contra a sua vida. José foi forte e recebeu seus irmãos novamente. Você sabia que os fracos nunca podem perdoar? ", "25:47");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Gênesis 29 - Noivo nervoso, sogro perigoso", "51a9f94f-d395-4546-b0cd-ab9601333fd2","Episódio com o tema 'Noivo nervoso, sogro perigoso'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Gênesis 29. Você sabia que casar é dividir os seus direitos e duplicar os seus deveres? Tudo na vida tem um preço, abra os olhos para não pagar caro! ", "26:06");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Gênesis 26 - Já vi este filme antes!", "6fb040fa-3a2a-41a0-a860-ab9601333fd1","Episódio com o tema 'Já vi este filme antes!'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Gênesis 26. O desafio continua. Por que, às vezes, cometemos os mesmos erros? Por que temos que passar por crises? Nada de desgosto e nem desânimo. Se acaba de fracassar, recomece. Quem não evita as pequenas faltas, pouco a pouco cai nas grandes.", "25:08");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Gênesis 27 - Irmão contra irmão: uma história cabeluda", "866dd230-3013-4b15-8288-ab9601333fd3","Episódio com o tema 'Irmão contra irmão: uma história cabeluda'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Gênesis 27. Se você se sente enganado, com raiva, querendo arrancar os cabelos, pense nas pessoas que, apesar de amar, você feriu sem querer ou sem saber! Acompanhe esse caso de família.", "25:42");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Gênesis 25 - Classificados e desclassificados: o critério de Deus", "8f4a5432-c11f-4c3c-8fc8-ab9601333fcd","Episódio com o tema 'Classificados e desclassificados: o critério de Deus'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Gênesis 25. No jogo da vida, em que time você joga? Cuidado! Tem muito craque que não é chamado para a seleção. Quais os critérios de Deus? Ele está de olho na sua próxima jogada, fique esperto!", "27:08");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Gênesis 39 - Será que vale a pena ser correto?", "2eb4a1df-5751-4f35-9af3-ab9601333fdf","Episódio com o tema 'Será que vale a pena ser correto?'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Gênesis 39. Será que vale a pena ser correto neste mundo atual?", "25:04");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Gênesis 50 - Lições de vida em meio a dois funerais", "15609145-82b8-4ab9-a9d9-ab9601333fed","Episódio com o tema 'Lições de vida em meio a dois funerais'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Gênesis 50. Chegamos ao último estudo no livro de Gênesis. Afinal, quem morreu? Confira neste estudo", "24:43");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Gênesis 17 e 18 - O fechamento do contrato", "dec92619-6bba-4b01-a47e-ab9601333fc5","Episódio com o tema 'O fechamento do contrato' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Gênesis 17 e 18. Estamos apresentando a vida de Abraão em Gênesis. Você já viu algum contrato milionário? Não estamos falando de jogador de futebol. Aliás, muito craque famoso vive trocando alianças por aí, não é mesmo? Aliança com Deus é coisa séria.", "26:11");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Gênesis 13 - Briga de família: isso é que é problema!", "1098fac5-54e8-42ee-881e-ab9601333fbe","Episódio com o tema 'Briga de família: isso é que é problema' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Gênesis 13. No último estudo, falamos sobre a chamada de Abrão, um homem que tinha fé em Deus e pé na estrada. Só que vai ter encrenca em Gênesis capítulo 13. Enquanto a turma do ‘deixa disso’ não aparece, vamos à luta, companheiro!", "26:29");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Gênesis 15 - O Deus que garante: o contrato foi assinado", "db872e41-f3ed-4b4c-b259-ab9601333f24","Episódio com o tema 'O Deus que garante: o contrato foi assinado' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Gênesis 15. Você sabia que o pai da Fé também teve suas crises chegando a questionar as coisas da vida? O que vale mais, a inteligência ou a sabedoria?", "26:06");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Gênesis 46 e 47 - Imigrantes numa terra estrangeira", "38f249b3-a9a6-42b1-af43-ab9601333fe7","Episódio com o tema 'Imigrantes numa terra estrangeira'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Gênesis 46 e 47. A vida é uma pedra de amolar: ela pode nos desgastar ou afiar, isso depende do metal de que somos feitos. O encontro de José com seu pai Jacó mostra a força desses homens de Deus.", "25:20");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Gênesis 7 e 8 - O maior tsunami da história", "1ce435ab-f321-4e08-9de4-ab960122deee","Episódio com o tema 'O maior tsunami da história' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Gênesis 7 e 8. Hoje vamos enfrentar um terrível temporal que está registrado em Gênesis capítulos 7 e 8. Quando o tempo fecha na sua frente ou quando as coisas ficam difíceis para o seu lado, como você se comporta na tempestade da vida? Agora não é hora de abrir o guarda-chuva, abra a sua Bíblia e vamos conhecer o Senhor do tempo.", "25:20");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Gênesis 9 e 10 - Esperança para uma nova humanidade", "4106c4f2-9b7d-4228-8a71-ab9601333f12","Episódio com o tema 'Esperança para uma nova humanidade' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Gênesis 9 e 10. Você sabia que o que mais mata não são as doenças e nem as guerras, e sim quando o homem perde as esperanças? O pastor Luiz Sayão vai apresentar o estudo 'Esperança para uma Nova Humanidade'.", "25:46");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Gênesis 16 - O atalho que não leva ao lugar certo", "65b8b6b7-13aa-41ae-a520-ab9601333fc7","Episódio com o tema 'O atalho que não leva ao lugar certo' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Gênesis 16. Chegamos agora no capítulo 16 e o professor Sayão vai explicar porque Deus vai devagar e Abraão vai de Agar. Você também acha que Deus demora em responder a sua oração?", "26:35");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Gênesis 40 e 41 - Deus, o Senhor da história", "f5f583fd-7de8-4507-acdf-ab9601333fe4","Episódio com o tema 'Deus, o Senhor da história'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Gênesis 40 e 41. Essa é a série Gênesis, o primeiro livro da Bíblia, já estamos nos capítulos 40 e 41. Vamos encontrar o nosso herói numa prisão e ver como Deus usa as circunstâncias para livrar aquele que é fiel.", "25:32");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Gênesis 20 e 21 - A última ameaça e a chegada da promessa", "7ecf641a-c645-4614-9024-ab9601333fcb","Episódio com o tema 'A última ameaça e a chegada da promessa'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Gênesis 20 e 21. Quem espera sempre alcança! Você vai entender porque Deus tarda, mas não falha. Estamos seguindo a trilha de Gênesis agora nos capítulos 20 e 21. Você sabia que Deus leva anos para fazer crescer um carvalho, mas um pé de abóbora ele faz em algumas semanas?", "27:06");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Gênesis 32 e 33 - A luta continua, mas é com Deus", "0140d317-3477-4e04-b277-ab9601333f3c","Episódio com o tema 'A luta continua, mas é com Deus'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Gênesis 32 e 33. Em nossa viagem ao primeiro livro da Bíblia, Gênesis, o professor Luiz Sayão nos leva aos capítulos 32 e 33. Os fortes são mais fortes quando lutam sozinhos, não é mesmo? Você quer ter vitórias na vida? Então vamos à luta!", "26:21");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Gênesis 23 e 24 - A tristeza do luto e a alegria do casamento", "90d36748-fe30-42f2-ab46-ab9601333fd2","Episódio com o tema 'A tristeza do luto e a alegria do casamento'. Apresentação: Luiz Sayão e Alberto Veríssimo .Com base em Gênesis 23 e 24. Chegamos aos capítulos 23 e 24 e encontramos o velório da Dona Sara e o casamento que sara a dor do luto. Sepultamento e casamento, dois momentos em que precisamos orar muito. ", "27:39");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Gênesis 48 e 49 - O Deus que domina o espaço, também domina o tempo", "0b00f8a8-455c-4a23-a251-ab9601333fe7","Episódio com o tema 'O Deus que domina o espaço, também domina o tempo'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Gênesis 48 e 49. Na série de Gênesis, que está quase terminando, vamos ver que o “Deus que Domina o Espaço Também Domina o Tempo”. O professor Luiz Sayão vai mostrar isso olhando para os capítulos 48 e 49 . Os anos ensinam muitas coisas que os dias desconhecem.", "25:36");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Gênesis 19 - O fogo está caindo: o julgamento de Deus chegou", "be3d0d96-7420-4f4b-8083-ab9601333fdb","Episódio com o tema 'O fogo está caindo: o julgamento de Deus chegou' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Gênesis 19. Estamos estudando o livro de Gênesis e vamos destacar o capítulo 19. Nosso personagem  é um típico crente de nossos dias: ‘um pé no mundo outro na igreja’. Seu nome era Ló, enrolado que dava dó.", "26:32");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Gênesis 35 e 36 - A separação total: quem é, é. Quem não é, não é", "3692d921-a70e-467b-bdcc-ab9601333fdf","Episódio com o tema 'A separação total: quem é, é. Quem não é, não é'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Gênesis 35 e 36. A peneira vai passar! Muitos são chamados mas poucos os escolhidos.", "25:22");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Êxodo 1 - Foi no tempo da escravidão", "025cb6af-cc05-48e0-95ae-ab9601333fe9","Episódio com o tema 'Foi no tempo da escravidão'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Êxodo 1. Começaremos uma nova série, abordando o livro Êxodo. O professor Luiz Sayão mostrará que as dificuldades e problemas aparecem.", "26:00");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Êxodo 2 - Um bebê contra o Faraó", "8a46e194-e59e-418d-8535-ab9601333feb","Episódio com o tema 'Um bebê contra o Faraó'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Êxodo 2. Neste estudo, o professor Luiz Sayão nos levará ao capítulo 2 de Êxodo e apresentará o libertador dos judeus, um bebê. Todos somos importantes nesse mundo, do menor ao maior. Veja que a maior de todas as coragens é a de assumir responsabilidade.", "25:22");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Êxodo 3 - Fugir de Deus é fogo", "4ad04b5b-3587-4ad0-96de-ab9601333fec","Episódio com o tema 'Fugir de Deus é fogo'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Êxodo 3. Estamos no livro de Êxodo, capítulo 3.  O filósofo Pascal dizia: Há dois tipos de pessoas: as que têm medo de perder Deus e as que têm medo de o encontrar. Você quer saber qual seu tipo?", "25:24");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Êxodo 24 e 25 - Marcando a Presença", "19fc10df-b410-4b8e-8011-ab98012e6a65","Episódio com o tema 'Marcando a Presença'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Êxodo 24 e 25. Qual a importância do Tabernáculo? Que relação ele tem com o mundo espiritual? Podemos ver a Deus se fizermos tudo certinho? Essas e outras questões o professor Luiz Sayão apresenta agora. Vamos juntos para mais essa escalada.", "26:04");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Êxodo 9 e 10 - Fechou o tempo!", "3d4e2964-2242-4410-ad0f-ab9601333ff7","Episódio com o tema 'Fechou o tempo!'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Êxodo 9 e 10. O Egito de Faraó, um cara de pau, com coração de pedra e que governava com mãos de ferro está sendo castigado por todo tipo de praga. Examine o seu coração e acompanhe essa exposição.", "25:41");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Êxodo 21, 22 e 23 - O Deus Santo exige justiça", "3b1b27df-6cea-44e3-82ef-ab98012e6a6b","Episódio com o tema 'O Deus Santo exige justiça'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Êxodo 21, 22 e 23. Chegamos à parte jurídica do processo. “O Deus Santo exige Justiça” é o tema da aula do professor Luiz Sayão. O texto se encontra em Êxodo, capítulos 21 até 23. O que pode e o que não pode? Vamos conhecer as prioridades de Deus.", "25:31");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Êxodo 7 e 8 - Quem não obedece, engole sapo", "75d0f7bc-8ae0-4f5e-b1b9-ab9601333fef","Episódio com o tema 'Quem não obedece, engole sapo'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Êxodo 7 e 8. Vamos falar sobre Moisés diante de Faraó pedindo a libertação do povo. Abra a sua Bíblia nos capítulos 7 e 8 de Êxodo porque o professor Luiz Sayão vai ensinar a diferença entre o poder verdadeiro e o falso. Se você anda engolindo sapos... Cuidado para não vomitar um brejo!", "25:14");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Êxodo 11 e 12 - A primeira páscoa ninguém esquece", "3db355bc-7c4c-4fbf-921b-ab9601333ff6","Episódio com o tema 'A primeira páscoa ninguém esquece'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Êxodo 11 e 12. Será que Páscoa é mais uma festa de chocolates e bombons?", "25:10");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Êxodo 26 a 31 - Onde esconderam a Arca da aliança?", "67cf817d-313c-40b1-b8c9-ab98012e6a6b","Episódio com o tema 'Onde esconderam a Arca da aliança?'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Êxodo 26, 27, 28, 29, 30 e 31. Hoje e o professor Luiz Sayão vai explicar e dizer porque ela é tão importante para trazer vitórias nas batalhas. No jogo da vida você está perdendo de goleada? Não pise na bola, está na hora de ouvir o que a Bíblia diz! Deus espera o melhor de nós.", "24:41");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Êxodo 4 - É do jeito que Deus gosta!", "86683112-5b09-4516-84ae-ab9601333feb","Episódio com o tema 'É do jeito que Deus gosta!'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Êxodo 4. No último programa vimos o chamado de Moisés, num encontro forte com o Criador. Neste episódio, o professor Luiz Sayão fala o que Deus pode fazer com um homem desmotivado. Você quer saber?", "25:50");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Êxodo 19 e 20 - A hora da aliança", "e1ff34d3-3dd4-4978-bc1f-ab98012e6a6a","Episódio com o tema 'A hora da aliança'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Êxodo 19 e 20. Você está precisando fazer uma lista de coisas? Bom, antes de apresentar seus pedidos, é melhor você dar uma olhadinha na lista de Deus.", "25:31");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Êxodo 13 e 14 - Fé em Deus e pé na água", "3c6e748f-826b-40e6-b347-ab98012e6a61","Episódio com o tema 'Fé em Deus e pé na água'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Êxodo 13 e 14. Vamos cruzar o mar sem ponte e sem bote. Você sente que os problemas estão te afogando? Você está cansado de lutar na vida e pensa que vai morrer na praia? Vamos mergulhar na Bíblia e descobrir os mistérios da fé.", "25:46");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Êxodo 35, 36, 37, 38, 39 e 40 - Adoração e manifestação da glória", "d7a44e0a-cd90-44d7-9a1f-ab98012e6a74","Episódio com o tema 'Adoração e manifestação da glória'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Êxodo 35, 36, 37, 38, 39 e 40. Você que acompanhou a série de estudo no livro de Êxodo, hoje chegamos nos últimos capítulos. O Tabernáculo está pronto! Foi uma jornada pelo deserto e aprendemos muitas coisas. Saiba aqui a realidade das coisas espirituais no tabernáculo e entenda o que existe de paralelo com o jardim do Éden.", "26:02");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Êxodo 15 e 16 - Adoração ou reclamação? Esta é a questão", "5a778b08-b64b-4453-bd16-ab98012e6a62","Episódio com o tema 'Adoração ou reclamação? Esta é a questão'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Êxodo 15 e 16. Quem é que não se sentiu nas nuvens e momentos depois deu com a cara no chão? As inconstâncias fazem parte da vida de muita gente. Como vencer quando tudo parece perdido?", "25:17");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Êxodo 17 e 18 - O que é mais difícil? O povo ou o caminho?", "15594799-446f-4f18-889c-ab98012e6a61","Episódio com o tema 'O que é mais difícil? O povo ou o caminho?'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Êxodo 17 e 18. O professor Luiz Sayão vai mostrar que a maior ameaça na jornada de fé é o próprio povo.  Quem disse que a voz do povo é a voz de Deus, nunca ouviu a Palavra do Deus da Bíblia. Você está confuso? Precisando de uns conselhos? Vamos até a fonte da verdade.", "25:20");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Êxodo 33 e 34 - A emenda ficou melhor do que o soneto", "d2af06f5-0e6f-4894-80e2-ab98012e6a6f","Episódio com o tema 'A emenda ficou melhor do que o soneto'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Êxodo 33 e 34. Nossa aventura continua. Você acha que tudo está perdido? Que não há mais esperança no seu caso? Calma, meu amigo! Nada de cabeça baixa! Nem sentimento de derrotado! A Bíblia é um guia de esperança.", "25:38");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Êxodo 5 e 6 - Vai devagar, que é feito de barro", "0cdf7d50-004d-46ea-ab99-ab9601333ff2","Episódio com o tema 'Vai devagar, que é feito de barro'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Êxodo 5 e 6. O professor Luiz Sayão vai explicar os capítulos 5 e 6 do livro de Êxodo. Não se conhece Deus só por teorias, mas nas crises e sofrimentos. Se quiser saber mais preste atenção nessa lição.", "24:50");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Êxodo 32 - Foi no deserto que quase a vaca foi pro brejo", "5ff7a3fc-1815-4614-b8ea-ab98012e6a6e","Episódio com o tema 'Foi no deserto que quase a vaca foi pro brejo'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Êxodo 32. Na série Êxodo, vamos encontrar um verdadeiro carnaval com direito até a Bezerro de Ouro. Êxodo 32 mostra o nível mais baixo que o ser humano pode chegar. É, bastam alguns dias sem ouvir a voz do profeta para o povo se corromper. Por que a idolatria é tão forte no ser humano?", "25:04");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Levítico 26 e 27 - Obediência e responsabilidade", "47973d69-0b1a-4644-8f41-ab98012e6a98","Episódio com o tema 'Obediência e responsabilidade'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Levítico 26 e 27. Tem gente perdendo a cabeça porque o coração está sofrendo. O professor Luiz Sayão encerra a série de Levítico falando sobre relacionamento verdadeiro. Você sabia que quanto mais aumenta a liberdade, aumenta também a responsabilidade?", "25:05");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Levítico 21 e 22 - Pureza total", "83511164-bc7d-4d4a-9371-ab98012e6a9","Episódio com o tema 'Pureza total'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Levítico 21 e 22. O tema da aula será 'Pureza Total'. Até parece propaganda de Sabão em pó, não é mesmo?  Mas o que vamos ver é o alto padrão que Deus estabelece. Vamos conhecê-lo?", "25:09");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Levítico 16 - O dia da purificação: é hora de jejuar", "138df758-cbbc-4486-9c8a-ab98012e6a8b","Episódio com o tema 'O dia da purificação: é hora de jejuar'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Levítico 16. Este capítulo é o clímax da primeira parte do livro de Levítico, apresentando o caminho de acesso a Deus. O Dia da Expiação, realizado uma vez ao ano, é o ritual mais solene e eficaz neste caso.", "26:28");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Levítico 23, 24 e 25 - É tempo de festa", "bee0151a-4318-4738-8957-ab98012e6a8c","Episódio com o tema 'É tempo de festa'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Levítico 23, 24 e 25. Entenda como os princípios de justiça, liberdade, igualdade e fraternidade fazem parte do plano divino para as nossas vidas. Várias sociedades já tentaram aplicar essas verdades, mas sem sucesso.", "25:29");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Levítico 13 e 14 - Chamem o sacerdote, a ferida abriu", "80bc989c-5324-4968-ac59-ab98012e6a90","Episódio com o tema 'Chamem o sacerdote, a ferida abriu'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Levítico 13 e 14. Se você acha que tem problemas, veja como era complicado ficar doente no mundo antigo. Estudar a Bíblia ainda é o melhor remédio.", "25:30");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Levítico 3, 4 e 5 - Há mais Carne no Fogo", "32a7a0e7-6774-42ec-a4aa-ab98012e6a87","Episódio com o tema 'Há mais Carne no Fogo'. Apresentação: Luiz Sayão, Alberto Veríssimo e Beltrão Texto bíblico: Levítico 3, 4 e 5 .Como anda o seu relacionamento com Deus? Você sabia que a sua comunhão com Deus é evidenciada através das suas atitudes para com as outras pessoas? É, se afastar de Deus é fogo, hein? Fique com a gente, temos muito o que aprender.", "25:36");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Levítico 11 - Impureza não se põe na mesa", "45976095-6a2f-41ed-ae58-ab98012e6a8a","Episódio com o tema 'Impureza não se põe na mesa'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Levítico 11. Poucos se preocupam com o que contamina o ser humano. O que sai da boca do homem, disse Jesus, isso contamina. Tem palavra que machuca mais que uma faca afiada. Portanto é melhor nos afinar com a Palavra de Deus.", "25:58");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Levítico 18, 19 e 20 - Nova moralidade ou velha imoralidade?", "2d4607a0-fcc6-4fbb-8d87-ab98012e6a90","Episódio com o tema 'Nova moralidade ou velha imoralidade?'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Levítico 18, 19 e 20. A vida está uma luta? Vença a si mesmo e terá vencido o seu próprio adversário. Será que é assim? Você acha difícil resistir e permanecer firme em certas situações, não é mesmo? Então, acompanhe só essa exposição.", "24:58");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Levítico 1 e 2 - Onde há fumaça, há culto", "fd60fd0a-277b-4165-9adf-ab98012e6a87","Episódio com o tema 'Onde há fumaça, há culto'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Levítico 1 e 2. Estamos começando uma nova série. É sobre o livro de Levítico, que fala da santidade de Deus. Venha com a gente descobrir as riquezas desse terceiro livro da Bíblia.", "25:52");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Levítico 6, 7, 8, 9 e 10 - Com Fogo Santo não se Brinca. O Sacerdote", "29187788-9071-4be0-b3be-ab98012e6a86","Episódio com o tema 'Com fogo santo não se brinca'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Levítico 6, 7, 8, 9 e 10. Você acha difícil e chato ler alguns livros da Bíblia? Pois agora é a hora de acabar com essa ideia. Acompanhe só essa exposição.", "25:14");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Levítico 12, 13, 14 e 15 - Um banho só é pouco", "f6e68747-3970-4ba3-9551-ab98012e6a8c","Episódio com o tema 'Um banho só é pouco'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Levítico 12, 13, 14 e 15. Neste episódio, você terá um banho de informação sobre o cerimonial bíblico do Antigo Testamento.", "24:40");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Levítico 17 e 19 - Nada de ser um fora da lei", "66ce5467-afff-4130-a482-ab98012e6a90","Episódio com o tema 'Nada de ser um fora da lei'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Levítico 17 e 19. Ética, honestidade e santidade fazem parte da vida do crente. Se você acha que pode ser justo com suas próprias forças, cuidado! Não tente, não invente, Leia a Bíblia com a gente.", "25:17");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Números 26 - Os inúmeros números de Números", "e57ca313-0ead-40b4-8250-ab980142485","Episódio com o tema 'Os inúmeros números de Números'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Números 26. Em vez de você ficar contando os problemas e dificuldades, comece a contar as bênçãos e os milagres que Deus tem feito em sua vida. Você sabia que Deus conhece os que lhe pertencem? É uma alegria saber que nenhum de nós foi esquecido e que para cada um ele tem um plano que está registrado.", "24:51");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Números 25 - Ultrapassando os limites", "92f85303-6692-4f32-b205-ab9801424852","Episódio com o tema 'Ultrapassando os limites'. Apresentação: Luiz Sayão e Alberto  Veríssimo Com base em Números 25. É muito fácil perder a referência, cuidado! Quem está de pé cuide-se para não cair. Essas e outras orientações da Palavra você acompanha a partir de agora.", "24:58");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Números 21 - A serpente que trazia cura", "037e3039-cc9d-410c-9eed-ab980142484c","Episódio com o tema 'A serpente que trazia cura'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Números 21. Que bicho é esse que iremos analisar, hein? Essa história das serpentes nos dá ilustrações sobre o pecado, o sofrimento, a tristeza, a súplica e por fim da salvação. Vamos juntos descobrir o segredo do olhar da fé.", "25:42");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Números 27 - Lições de herança e liderança", "ccfa4e50-64f1-47e3-b879-ab980142484d","Episódio com o tema 'Lições de herança e liderança'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Números 27. Como solucionar as dificuldades levando-as a Deus? Moisés era um sonhador. Enquanto alguns homens veem as coisas como elas são, e perguntam por quê, o homem levantado por Deus sonha coisas que nunca foram, e pergunta por que não?", "25:11");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Números 14 - Descrença, ingratidão e revolta", "84331de4-b9c1-4866-aaa1-ab9801424848","Episódio com o tema 'Descrença, ingratidão e revolta'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Números 14. Quem já desobedeceu sabe o prejuízo que sofre e o atraso de vida que é. Como se diz no interior: Há mais ingratos que sapatos!", "25:54");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Números 15, 16 e 17 - Independência e morte", "59746e40-84fb-4ca2-a62e-ab9801424849","Episódio com o tema 'Independência e morte'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Números 15, 16 e 17. Quando a insurreição vem traz consigo a hipocrisia e a falsidade. Vamos ver que a atitude dos rebeldes foi de desafio e de arrogância e o resultado trágico desta atitude foi sofrido também pelos seus familiares.", "24:40");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Números 5 e 6 - Deus Santo, povo puro", "3f94bf9c-c98e-4104-aa67-ab980142483f","Episódio com o tema 'Deus Santo, povo puro'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Números 5 e 6. A necessidade da santidade e consagração significa que cada possibilidade pertence a Deus. Você acha que tem coisa difícil de cumprir na Bíblia?", "25:40");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Números 12 e 13 - Sem boa visão, só há distorção", "a56ba452-2a57-49e5-a09c-ab9801424845","Episódio com o tema 'Sem boa visão, só há distorção'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Números 12 e 13. Estabilidade significa manter o equilíbrio num ambiente de pressão e transformação; aceitar desafios e superá-los no dia-a-dia. Como vencer a oposição interna e externa? Será que o silêncio é a melhor resposta às acusações falsas? Como Moisés superou as crises em sua liderança?", "26:04");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Números 18, 19 e 20 - Que jornada atribulada!", "8e6dcbe0-f3af-4062-956e-ab9801424849","Episódio com o tema 'Que jornada atribulada!'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Números 18, 19 e 20. Você sabe, numa trilha todo cuidado é pouco, não é mesmo? Devemos estar preparados para tudo, até para coisas que não podemos entender. O perigo da incredulidade, o perigo da desobediência, o perigo do desânimo e o perigo da desconfiança.", "25:23");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Números 10 e 11 - É reclamação que não acaba mais", "	7809c2ba-c271-42b5-a219-ab9801424843","Episódio com o tema 'É reclamação que não acaba mais'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Números 10 e 11. Descontentamento é fruto da falta de fé em Deus. Você sabia que o desânimo leva à tristeza que produz a insatisfação que, por sua vez, gera ingratidão?", "26:52");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Números 31 e 32 - Vitória na batalha e impasse na chegada", "700595c0-3a2d-44af-9fe1-ab9801424858","Episódio com o tema 'Vitória na batalha e impasse na chegada'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Números 31 e 32. Será que Deus é vingativo? O que acontece com aqueles que buscam seus próprios interesses? Você sabia que a fraqueza e o egoísmo provocam escolhas erradas?", "25:59");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Números 7, 8 e 9 - O preparo para a presença do Senhor", "265b088d-3e16-4e52-97eb-ab9801424845","Episódio com o tema 'O preparo para a presença do Senhor'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Números 7, 8 e 9. Estamos aprendendo alguns aspectos da natureza de Deus aqui no livro de Números. A fidelidade imutável de Deus; a Soberania e poder de um Deus sobre o paganismo e a superstição. Qual é a sua atitude para com esse Deus que te criou e te ama?", "25:39");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Números 28, 29 e 30 - Doar e votar, é só começar", "1434cce7-11e9-490f-95e2-ab9801424859","Episódio com o tema 'Doar e votar, é só começar'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Números 28, 29 e 30. A vida com Deus requer atitude e compromisso. Andar com fé é uma festa. Se a sua vida está uma rotina sem graça, é melhor rever os seus princípios.", "25:03");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Números 33, 34, 35 e 36 - Entre o passado e o futuro", "44ca38cb-2ec3-446b-b6c3-ab980142485f","Episódio com o tema 'Entre o passado e o futuro'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Números 33, 34, 35 e 36. Quem não gosta de recordar os bons momentos, hein? E quem nunca sonhou com um futuro de paz e segurança?  A vida se contrai e se expande proporcionalmente à coragem do individuo.", "24:54");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Números 22, 23 e 24 - A jumenta que impediu a burrice", "8cdc0a78-a89f-4c78-a9f1-ab980142484e","Episódio com o tema 'A jumenta que impediu a burrice'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Números 22, 23 e 24. É o mundo animal dando um coice no pecado. Fique conosco, pois vamos discutir sobre vários assuntos: qual a diferença entre Vidente e profeta? Deus pode agir num ambiente pagão?", "24:40");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Números 1, 2, 3 e 4 - De malas prontas, façamos as contas", "d3fe0074-1b8f-409e-94de-ab98012e6aab","Episódio com o tema 'De malas prontas, façamos as contas'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Números 1, 2, 3 e 4. Nosso caminho agora é percorrer o quarto livro do Antigo Testamento: Números. Vamos aprender que o nosso Deus exige decência, ordem e nunca confusão. Obedecer é essencial para trazer alegria, satisfação e felicidade.", "25:46");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Deuteronômio 7 - Monoteísmo Radical", "52ed3f92-18cc-47fd-80bf-ab980142486b","Episódio com o tema 'Monoteísmo radical'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Deuteronômio 7. Tentações especiais que perseguem a todos: orgulho devido aos próprios privilégios e timidez às responsabilidades. Você sabia que a consciência de que Deus está perto vendo tudo é a maior razão do nosso encorajamento?", "24:35");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Deuteronômio 6 - Para amar é preciso demonstrar", "73387e42-596e-4f4d-9539-ab9801424866","Episódio com o tema 'Para amar é preciso demonstrar'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Deuteronômio 6. Quem ama também corre perigo, essa é a advertência. Onde está o seu tesouro, aí estará o teu coração. O que você valoriza na vida? Você sabe viver ou apenas sobrevive? Ama ou só quer ser amado?", "26:20");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Deuteronômio 24 e 25 - Pobreza e Segurança", "c480d137-358e-4904-8d0c-ab9801424874","Episódio com o tema 'Pobreza e segurança'. Apresentação: Luiz Sayão e Alberto Veríssimo Texto Bíblico: Deuteronômio 24 e 25 Quem é que não vive o drama da insegurança em nosso país? O que fazer com tanta pobreza ao nosso redor? Não é benéfico ajudar um amigo colocando moedas em seus bolsos quando existem buracos neles. A fé sem obras é morta.", "26:18");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Deuteronômio 14 e 15 - Consagração e misericórdia", "2b413aad-7628-41ba-9da0-ab9801424870","Episódio com o tema 'Consagração e misericórdia'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Deuteronômio 14 e 15. Você vai perceber no estudo de hoje que se a vontade de Deus fosse perfeitamente obedecida, não haveria mais pobreza e muitos problemas seriam evitados. Enquanto isso, seguimos nos ensinos básicos da vida para mostrar que a nossa vontade é um problema.", "26:40");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Deuteronômio 5 - O significado dos 10 mandamentos", "f1e8fb2c-0f4f-42a3-b173-ab980142486b","Episódio com o tema 'O significado dos 10 mandamentos'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Deuteronômio 5. Os Dez Mandamentos são a base para a liberdade e a vida eterna. Eles servem de bússola para quem vive numa sociedade sem rumo, em crise e mutação, como num mar agitado, ela faz com que não percamos a rota para alcançar o porto seguro.", "25:48");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Deuteronômio 22 e 23 - Pureza e consciência social", "4ae69425-83f3-4a2d-80ac-ab9801424878","Episódio com o tema 'Pureza e consciência social'. Apresentação: Luiz Sayão e Alberto Veríssimo Texto Bíblico: Deuteronômio 22 e 23 Aqueles que reconhecem claramente a voz de suas próprias consciências normalmente reconhecem também a voz da justiça. Se cada um de nós varresse a frente do nosso lugar, o mundo todo seria limpo, não é mesmo? Isso também é espiritualidade.", "26:24");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Deuteronômio 33 e 34 - As bênçãos e o adeus final", "ab95d9d5-8f0c-4c89-82c9-ab9801424883","Episódio com o tema 'As bênçãos e o adeus final'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Deuteronômio 33 e 34. A série Deuteronômio chega ao fim. Toda mudança provoca incerteza e o futuro assusta alguns. Alguém já disse com propriedade que 'O medo aprisiona, a fé liberta; o medo paralisa, a fé dá poder; o medo desanima; a fé encoraja; o medo debilita, a fé cura; o medo torna inútil, a fé torna útil'.", "25:46");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Deuteronômio 29 e 30 - A decisão é sua", "049fbd78-933c-4a7f-9e1b-ab9801424886","Episódio com o tema 'A decisão é sua'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Deuteronômio 29 e 30. Você acha difícil tomar uma decisão? Ora, então faça como  Francisco de Assis: Comece fazendo o que é necessário, depois o que possível  e, de repente, você estará fazendo o impossível.", "25:26");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Deuteronômio 1 - Inconstância na rota para a terra prometida", "62ecbd0d-f338-43c4-8edf-ab9801424867","Episódio com o tema 'Inconstância na rota para a terra prometida'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Deuteronômio 1. Hoje vamos começar uma nova série de estudo. Vamos para o quinto livro da Bíblia: Deuteronômio. Você sabia que o preguiçoso morre de tanto desejar e de nunca pôr as mãos no trabalho? Todos nós precisamos aprender a vencer a inconstância, sob pena de nunca ascendermos a nenhum degrau na escadaria da vida.", "25:48");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Deuteronômio 10 e 11 - Fé horizontal e vertical", "e14b5878-87b2-4c88-9a3e-ab980142486c","Episódio com o tema 'Fé horizontal e vertical'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Deuteronômio 10 e 11. Você sabe reconhecer um místico? Sabe identificar um humanista? Na trilha da fé encontramos de tudo e todos querem acrescentar algo. Como manter a esperança no Céu sem desligar-se da terra?", "27:00");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Deuteronômio 8 e 9 - Entre a bênção e a tribulação", "779a9147-e2d4-4ea4-9589-ab980142486e","Episódio com o tema 'Entre a bênção e a tribulação'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Deuteronômio 8 e 9. Você quer ser abençoado? Então se prepare porque a vida é para quem topa qualquer parada e não para quem para em qualquer topada!", "24:53");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Deuteronômio 2 e 3 - Caminhos e descaminhos no deserto", "240ee578-8655-4081-84f6-ab9801424865","Episódio com o tema 'Caminhos e descaminhos no deserto'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Deuteronômio 2 e 3. Você já se viu num deserto? Já  sentiu a solidão no meio do povão? Se você está cansado de lutar e acha que todo mundo está contra, esse programa tem muito a ver com isso.", "25:26");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Deuteronômio 4 - Nem pau, nem pedra, nenhum idolozinho", "9cd59fb5-1710-4e41-8eb9-ab9801424866","Episódio com o tema 'Nem pau, nem pedra, nenhum idolozinho'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Deuteronômio 4. Neste mundo existem vagões com muitas superstições e quem não obedece a Deus perde o Trem da história. Última chamada! Embarque agora.", "27:10");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Deuteronômio 31 e 32 - Liderança e direção contra a confusão", "80065f5d-8712-4022-a0fb-ab980142487f","Episódio com o tema 'Liderança e direção contra a confusão'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Deuteronômio 31 e 32. Você sabe a diferença entre um chefe e um líder? Bons líderes fazem as pessoas sentirem que elas estão no centro das coisas, não na periferia. Quer saber mais?", "25:11");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Deuteronômio 27 e 28 - Entre a bênção e a maldição", "4b78560d-3d5c-486b-8f43-ab980142487e","Episódio com o tema 'Entre a bênção e a maldição'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Deuteronômio 27 e 28. Descubra que na vida colhemos o que plantamos. O poeta já dizia: Ser desafiado na vida é inevitável. Ser derrotado é opcional.", "24:49");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Deuteronômio 19, 20 e 21 - Justiça nos mínimos detalhes", "c35e6edd-700d-40e5-8bf2-ab9801424873","Episódio com o tema 'Justiça nos mínimos detalhes'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Deuteronômio 19, 20 e 21. Há esperança para quem espera em Deus. Acompanhe essa exposição e veja como o homem pode ser outro quando segue as Escrituras.", "26:21");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Deuteronômio 12 e 13 - Adoração única ao único Deus num único lugar", "6206ca2e-a319-4f11-9157-ab9801424871","Episódio com o tema 'Adoração única ao único Deus num único lugar'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Deuteronômio 12 e 13. Deus colocou na natureza do homem a necessidade e o desejo de adorar. Todos somos adoradores. Mas será que estamos adorando da maneira certa?", "24:49");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Deuteronômio 16, 17 e 18 - O Deus do tempo e da justiça", "7a3deefd-e6d3-4ea8-a527-ab9801424873","Episódio com o tema 'O Deus do tempo e da justiça'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Deuteronômio 16, 17 e 18. Quem é que nunca ouviu uma ‘profecia’ daquelas prometendo tudo e mais um pouco? Como identificar uma verdadeira profecia?", "25:17");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Josué 1 - A Palavra falou, tá falado", "07b36a4b-8aae-421f-8044-ab9801424889","Episódio com o tema 'A Palavra falou, tá falado'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Josué 1. Começamos os estudos no livro de Josué. Várias batalhas e conquistas, lutas e vitórias, e muitas dificuldades. Nessa série vamos aprender muito com o general Josué, um homem que cumpria as ordens do Criador.", "25:22");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Josué 10 - O dia em que o sol parou", "28f72d8a-ba84-4b67-a93c-ab9a00e7d29e","Episódio com o tema 'O dia em que o sol parou'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Josué 10. Matéria difícil para explicar. Será verdade que o sol parou? E não escureceu até o fim da batalha?", "25:49");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Josué 8 e 9 - Entre a vitória e a armadilha", "9609a483-41e9-4fd1-885e-ab98014248ca","Episódio com o tema 'Entre a vitória e a armadilha'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Josué 8 e 9. Como diz o filósofo Kierkegaard: a vida só pode ser compreendida olhando-se para trás; mas só pode ser vivida olhando-se para frente.", "25:42");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Josué 22 - Quem não se comunica, se complica", "98e8a216-20df-4c13-85b1-ab9a00e7d2a1","Episódio com o tema 'Quem não se comunica, se complica'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Josué 22. Nem sempre é fácil ser compreendido, afinal, comunicação não é o que você diz. É o que os outros entendem. Tem gente que entende, mas não compreende. Tem gente que escuta, mas não ouve.", "24:37");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Josué 11 e 12 - Analisando o diário do general", "01f5ac47-fa02-49c3-858e-ab9a00e7d29a","Episódio com o tema 'Analisando o diário do general'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Josué 11 e 12. Nem sempre foi fácil lutar por aquilo que Deus estava dando. Alguém sabiamente já disse: Aquele que colherá rosas não deve temer os espinhos. Ah! A vida é bela. Não tenha medo de enfrentar as incertezas do amanhã.", "23:59");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Josué 7 - O esconde-esconde que não deu certo", "27ec0077-b298-4a0f-baaa-ab980142489f","Episódio com o tema 'O esconde-esconde que não deu certo'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Josué 7. Você sabia que o Senhor é maravilhosamente bom para aqueles que esperam por Ele e procuram por Ele? É, mas tem muita gente querendo resolver as coisas do seu próprio jeito. Você é uma pessoa transparente?", "25:42");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Josué 20 e 21 - Redesenhando o mapa: as cidade de refúgio e as cidades dos levitas", "48f099f4-f84d-4f55-8f27-ab9a00e7d2a4","Episódio com o tema 'Redesenhando o mapa: as cidade de refúgio e as cidades dos levitas'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Josué 20 e 21. Você já deve ter ouvido essa frase: Faça aos outros o que você gostaria que eles fizessem a você. Essa é uma lição dura de ser praticada, mas é assim que devemos agir.", "26:41");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Josué 5 e 6 - Que barulhão! O muro veio ao chão!", "e505ed6d-5775-40e9-b11e-ab980142488c","Episódio com o tema 'Que barulhão! O muro veio ao chão!'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Josué 5 e 6. Você sabia que um dia qualquer pode tornar-se um dia extraordinário? Seja qual for o obstáculo que você enfrenta, deixe o Criador no controle.", "25:46");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Josué 23 e 24 - A despedida do general e o compromisso do povo", "ab1d2ebe-8c46-4663-9264-ab9a00e7d2ac","Episódio com o tema 'A despedida do general e o compromisso do povo'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Josué 23 e 24. Um grande desafio que aprendemos com o livro de Jousé: a fé toma espaço no lugar pagão. Você ainda tem dificuldades para enfrentar a vida? Veja quanta coisa boa o Senhor já fez, e siga em frente!", "24:14");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Josué 2 - Os agentes secretos e a mulher de má fama", "3d7fb301-8a96-4072-b84b-ab9801424892","Episódio com o tema 'Os agentes secretos e a mulher de má fama'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Josué 2. Como podemos encontrar gente de fé autêntica? Um contraste chocante! Um exemplo de fé! Você sabia que a fé recupera uma pessoa em qualquer situação?", "26:09");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Josué 3 e 4 - Quando a correnteza parou... Por que parou? Parou por quê?", "1e7d00ad-bd6f-4d73-bb55-ab9801424886","Episódio com o tema 'Quando a correnteza parou... Por que parou? Parou por quê?'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Josué 3 e 4. Onde você está não tem metade da importância se comparado para onde você está indo. Não peça a Deus para guiar seus passos se você não está disposto a mover seus pés.", "24:50");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Josué 13, 14, 15, 16, 17, 18 e 19 - Desenhando o mapa", "f065e565-fa49-4115-8e48-ab9a00e7d29f","Episódio com o tema 'Desenhando o mapa'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Josué 13, 14, 15, 16, 17, 18 e 19. Este é o momento onde o povo de Israel começa a tomar posse da terra prometida. O importante não é vencer todos os dias, mas lutar sempre, não é mesmo?  É, nada na vida vem fácil. Boa madeira não cresce com facilidade. Quanto mais forte o vento, mais forte as árvores. Problemas, conflitos... E a ação de Deus em tudo.", "26:50");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Juízes 1 e 2 - Os juízes diante da derrota", "006975d6-a10e-4b50-aae9-ab9a00e7d335","Episódio com o tema 'Os juízes diante da derrota'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Juízes 1 e 2. Vamos encontrar um ambiente conturbado e cheio de inimigos. O perigo está presente em todos os momentos. Já dizia Einstein: No meio de toda dificuldade encontra-se a oportunidade.", "25:31");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Juízes 4 e 5 - Vitórias conquistadas com um toque feminino", "6a8e52fc-8ad5-43b3-a79a-ab9a00e7d2ac","Episódio com o tema 'Vitórias conquistadas com um toque feminino'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Juízes 4 e 5. Saiba você que um homem não está acabado quando enfrenta a derrota. Ele está acabado quando desiste. Troque o NÃO pelo POR QUE NÃO? É isso que fizeram Débora e Jael.", "24:26");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Juízes 17 e 18 - Uma decadência total", "1f1a2cfc-72bc-44a9-b7b2-ab9a00e7d34b","Episódio com o tema 'Uma decadência total'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Juízes 17 e 18. Você sabia que um pequeno desvio traz perigos seríssimos?! Esse é o assunto que o professor Luiz Sayão tem para nós hoje. O que acontece quando tudo parece relativo e todos dizem saber a verdade do seu jeito?", "24:26");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Juízes 7 e 8 - Passar uma noite em Midiã", "07e36fa3-ad41-401d-9bd8-ab9a00e7d2b2","Episódio com o tema 'Passar uma noite em Midiã'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Juízes 7 e 8. Estamos falando sobre coragem em meio à escuridão. O grande líder negro Martin Luther King que lutou contra a desigualdade humana sentenciou: Devemos construir diques de coragem para conter a correnteza do medo.", "24:28");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Juízes 3 - Primeiras provas para os problemáticos de Israel", "13fabe4d-0d62-4648-b44e-ab9a00e7d2ae","Episódio com o tema 'Primeiras provas para os problemáticos de Israel'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Juízes 3. Pastor Peter Marshall costumava dizer que Deus não permitirá que qualquer dificuldade nos aconteça, a menos que ele tenha um plano específico pelo qual grandes bênçãos possam surgir da dificuldade. É disso que falaremos agora.", "25:25");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Juízes 10 e 11 - Jefté, um juiz diferente", "4a15567f-40ff-4305-bc2b-ab9a00e7d2b1","Episódio com o tema 'Jefté, um juiz diferente'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Juízes 10 e 11. No Antigo Testamento encontramos um livro que mostra como as pessoas podem ir ao caos quando não obedecem a Deus, Juízes. Vamos trilhar pelos capítulos 10 e 11 onde o  Luiz Sayão apresenta o tema: 'Jefté, o juiz diferente por parte de mãe e de filha'.", "24:51");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Juízes 14 e 15 - Sansão, o juiz sem senso", "47946fbd-32c4-4712-a03f-ab9a00e7d34e","Episódio com o tema 'Sansão, o juiz sem senso'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Juízes 14 e 15. O assunto separado pelo  Luiz Sayão será: 'Sansão: o Juiz sem senso'. Vamos ver que a adversidade faz com que alguns homens quebrem, e que outros ‘quebrem recordes’.", "25:33");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Juízes 9 - Quem disse que querer é poder?", "6fa17125-6f5d-4ad8-b0e0-ab9a00e7d341","Episódio com o tema 'Quem disse que querer é poder?'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Juízes 9. O grande líder negro Martin Luther King que lutou contra a desigualdade humana sentenciou: Devemos construir diques de coragem para conter a correnteza do medo.", "24:46");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Juízes 19, 20 e 21 - Crime e castigo", "65792db4-8c9e-4114-983e-ab9a00e7d351","Episódio com o tema 'Crime e castigo'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Juízes 19, 20 e 21. Talvez aqui encontremos a história mais triste de toda a Bíblia.  Somente duas coisas são infinitas: o universo e a estupidez humana, e eu não estou seguro sobre a primeira. Dizia o físico Albert Einstein. É verdade, sem Deus veja a que ponto chega o ser humano.", "25:08");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Juízes 6 - Gideão e o teste da lã no chão", "e756d17a-e89b-458b-a115-ab9a00e7d33c","Episódio com o tema 'Gideão e o teste da lã no chão'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Juízes 6. Você vai aprender que nenhuma grande vitória é possível sem que tenha sido precedida de pequenas vitórias sobre nós mesmos. Deus não desiste de ninguém!", "24:42");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Juízes 16 - Entre o amor e a morte", "91bf1c76-4b04-49ef-96c7-ab9a00e7d345","Episódio com o tema 'Entre o amor e a morte'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Juízes 16. Hoje destacamos o capítulo 16 que trata de um dos episódios mais conhecidos da história. Sansão e Dalila. 'Entre o Amor e a Morte' esse será o nosso assunto que o Luiz Sayão vai comentar.", "25:44");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Juízes 12 e 13 - Problemas cabeludos e o nascimento de Sansão", "676b00f8-78e4-4597-8a84-ab9a00e7d343","Episódio com o tema 'Problemas cabeludos e o nascimento de Sansão'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Juízes 12 e 13. Seguindo com toda força no livro de Juízes, vamos para os capítulos 12 e 13.  O assunto separado pelo professor Luiz Sayão será: 'Problemas Cabeludos e o Nascimento de Sansão'.", "24:42");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Rute 3 - Romeu e Julieta", "67b879e5-2411-464f-a829-ab9a00e7d350","Episódio com o tema 'Romeu e Julieta'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Rute 3. Esta é a versão bíblica para uma história de sofrimento, amor e esperança. Quem é que não tem sonhos? Hoje em nosso estudo você vai aprender que Deus tarda mais não falha. Você anda desiludido? Ora, o que o oxigênio é para os pulmões, assim é a esperança para o significado da vida. Respire fundo e siga em frente.", "24:51");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Rute 1 - Uma tragédia após a outra", "9ae10311-c923-4d18-bbed-ab9a00e7d350","Episódio com o tema 'Uma tragédia após a outra'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Rute 1. O mundo é um lugar perigoso para se viver, não é mesmo? Ele é hostil, não por causa das pessoas que são más, mas por causa das pessoas que não fazem nada a respeito disso. Fique ligado e veja como superar as adversidades.", "25:44");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Rute 2 - Uma moça entre os boias-frias", "7b51726d-57c1-4df9-a6ee-ab9a00e7d352","Episódio com o tema 'Uma moça entre os boias-frias'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Rute 2. Você verá como uma mulher sem perspectivas na vida consegue encontrar forças. Otimismo é a fé que leva à realização.", "24:15");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Rute 4 - E eles viveram felizes para sempre", "fc3aba66-1221-4feb-8326-ab9a00e7d352","Episódio com o tema 'E eles viveram felizes para sempre'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Rute 4. Quer final mais emocionante do que esse? Estórias de amor verdadeiro nunca têm fim, não é mesmo? Apesar das adversidades e injustiças, há sempre um propósito em tudo, mesmo que você não o veja na hora.", "24:13");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Samuel 16 - Pedimos substituição", "482a4b79-9764-49dc-9389-ab9a00e7d360","Episódio com o tema 'Pedimos substituição'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Samuel 16. Davi é o craque eleito que vai entrar. Muitas das circunstâncias da vida são criadas por três escolhas básicas: as disciplinas que você decide manter, as pessoas com quem você decide estar; e, as leis que você decide obedecer. Disciplina, amizade e obediência, sem isso você pode perder a cabeça.", "25:58");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Samuel 1 - A esperança está na mãe", "56d17a3c-ce7e-4e03-9aa0-ab9a00e7d357","Episódio com o tema 'A esperança está na mãe'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Samuel 1. Quando o mundo diz, 'Desista', a esperança sussurra, 'Tente uma vez mais'.", "25:05");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Samuel 17 - Tamanho não é documento", "70a46b40-2ea3-49c3-b12f-ab9a00e7d35f","Episódio com o tema 'Tamanho não é documento'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Samuel 17. Você se considera uma pessoa alta? Grande coisa. E você que acha que é baixinho demais, não se sinta por baixo. Veja o que diz o capítulo 17 do Primeiro livro de Samuel. Como bem dizia o artista Van Gogh: 'As grandes coisas não são feitas por impulso, mas através de uma série de pequenas coisas acumuladas'.", "25:52");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Samuel 18 - A inveja mata", "663209c1-e63d-4438-a50c-ab9a00e7d365","Episódio com o tema 'A inveja mata'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Samuel 18. Muita atenção para essa palavra inveja. Como diz Provérbios 14.30: A paz de espírito dá saúde ao corpo, mas a inveja destrói como câncer. Cuidado! A inveja só consegue roer seu próprio coração.", "25:05");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Samuel 21 e 22 - Entre fugas e loucuras", "3917c9d5-cc83-43da-87be-ab9a00e7d363","Episódio com o tema 'Entre fugas e loucuras'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Samuel 21 e 22. Seguimos pelas veredas do Primeiro Livro de Samuel no Antigo Testamento capítulos 21 e 22. Luiz Sayão conta um episódio triste das peregrinações de Davi pelo sul da Palestina. 'Entre Fugas e Loucuras', esse é o assunto da nossa aula.", "24:55");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Samuel 28 - Falar com morto, caminho torto", "15cf926e-b6ef-4b57-9a3c-ab9a00e7d36c","Episódio com o tema 'Falar com morto, caminho torto' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Samuel 28. Você acha que é possível a comunicação com os mortos? Só em pensar nisso dá medo! É verdade que o homem com medo é derrotado antes da derrota, por isso, devemos enfrentar os desafios da vida com coragem. Nosso estudo Bíblico vai além para descobrir esse mistério. Todo homem morre, mas nem todo homem realmente vive.", "25:29");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Samuel 15 - Quem rejeita a Palavra será rejeitado", "10f5d146-c8b4-4127-8de9-ab9a00e7d367","Episódio com o tema 'Quem rejeita a Palavra será rejeitado'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Samuel 15. Tem gente que nunca leu a Bíblia e já está criticando, criando problemas... O homem que não tem problemas está fora do jogo. E a pessoa que não conhece a Palavra de Deus está fora da vida.", "24:23");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Samuel 19 e 20 - Desejo de matar", "6e53e4a2-3bbd-4b74-9f08-ab9a00e7d365","Episódio com o tema 'Desejo de matar'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Samuel 19 e 20. Cabe aqui aquela máxima que diz: Semeia um pensamento e colherás um desejo; semeia um desejo e colherás a ação; semeia a ação e colherás um hábito; semeia o hábito e colherás o caráter.", "26:31");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Samuel 2 e 3 - Deus escolhe e Deus rejeita", "0683a79f-b0d2-47e1-8311-ab9a00e7d354","Episódio com o tema 'Deus escolhe e Deus rejeita'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Samuel 2 e 3. O que você faz com as oportunidades que tem? Sabe, conheço muitos que não puderam, quando deviam, porque não quiseram quando podiam. Vou repetir: Conheço muitos que não puderam, quando deviam, porque não quiseram quando podiam.", "24:13");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Samuel 26 e 27 - Dormindo com o inimigo", "6bd63fcd-323c-4e71-ba0a-ab9a00e7d373","Episódio com o tema 'Dormindo com o inimigo' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Samuel 26 e 27. Às vezes, o perigo está ao lado e precisamos agir com sabedoria. Não seja como as pulgas que só andam pela cabeça dos outros. O mundo inteiro abre caminho para o homem que sabe para onde está indo.", "25:47");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Samuel 31 - O sombrio suicídio de Saul", "e885c2bf-f68e-449c-9e4f-ab9a00e7d373","Episódio com o tema 'O sombrio suicídio de Saul' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Samuel 31. O rei...jeitado rei acabou tendo um final melancólico após ter uma vida medíocre.  O filósofo francês Jean Paul Sartre costumava dizer: Um homem não é outra coisa senão o que faz de si mesmo. É hora da gente analisar nossos atos e atitudes.", "27:03");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Samuel 4 e 5 - A surpresa das sete quedas", "4b54ec92-24e9-4481-a04b-ab9a00e7d2c2","Episódio com o tema 'A surpresa das sete quedas'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Samuel 4 e 5. O rei, Saul, em um dos seus primeiros atos, profetizou e brigou. Como entender uma situação dessas? O Luiz Sayão vai desvendar esse mistério. Será que é verdade que os nossos atos nos determinam, tanto quanto nós determinamos nossos atos? Saul sabia exatamente o que significava isso.", "24:42");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Samuel 12 e 13 - Bye bye: a hora do adeus!", "95317639-6542-43b9-aabb-ab9a00e7d362","Episódio com o tema 'Bye bye: a hora do adeus!'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Samuel 12 e 13. Vamos acompanhar a despedida do Juiz, profeta, o líder Samuel capítulos 12 e 13 do primeiro livro de Samuel que fica no Antigo Testamento. Luiz Sayão vai mostrar que Deus usa homens íntegros para os planos da  sua história. É hora de prestar contas! Você sabe que bem feito é melhor do que bem explicado.", "26:28");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Samuel 6 e 7 - A vitória do Senhor: A vitória de Israel", "6317a658-31a6-4c87-a273-ab9a00e7d35b","Episódio com o tema 'A vitória do Senhor: A vitória de Israel'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Samuel 6 e 7. Luiz Sayão vai nos falar se a Arca da aliança tinha poder ou não.", "26:24");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Samuel 8 e 9 - Queremos um rei! Queremos um rei!", "16965579-15a4-465c-aea1-ab9a00e7d35b","Episódio com o tema 'Queremos um rei! Queremos um rei!'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Samuel 8 e 9. A aula de hoje fala do assunto: 'Queremos um rei! Queremos um rei!' O Luiz Sayão vai nos coroar com uma exposição sobre a escolha de Saul como primeiro rei de Israel.", "23:39");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Samuel 25 - Só um toque feminino para segurar o furor masculino", "528b666b-baa6-42cd-9f2b-ab9a00e7d362","Episódio com o tema 'Só um toque feminino para segurar o furor masculino'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Samuel 25. Ele criou o homem e descansou. Depois, criou a mulher. Desde então, nem Deus, nem o homem, nem o Mundo, tiveram mais descanso. O estudo de hoje vai mostrar que a beleza delas não é só estética, mas brilha quando tem ética. Ah! se não fossem elas...", "25:01");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Samuel 14 - A hora do pânico: será possível ter um líder tão impulsivo?", "85003e06-1030-4d67-97b1-ab9a00e7d35f","Episódio com o tema 'A hora do pânico: será possível ter um líder tão impulsivo?'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Samuel 14. Nessa aula você vai descobrir de onde vem o poder de um grande líder. Agora preste atenção; O líder que exercita o poder com honra trabalhará de dentro para fora, começando por si próprio. É aí que começa a dificuldade.", "25:34");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Samuel 10 e 11 - Há uma unção! O rei pode sentir", "df4f6b20-612b-43aa-bb4b-ab9a00e7d2c7","Episódio com o tema 'Há uma unção! O rei pode sentir'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Samuel 10 e 11. O rei, Saul, em um dos seus primeiros atos, profetizou e brigou. Como entender uma situação dessas? O Luiz Sayão vai desvendar esse mistério. Será que é verdade que os nossos atos nos determinam, tanto quanto nós determinamos nossos atos? Saul sabia exatamente o que significava isso.", "24:23");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Samuel 29 e 30 - O inimigo mora ao lado: entre filisteus e amalequitas", "c8db72cf-0d67-43fd-8874-ab9a00e7d371","Episódio com o tema 'O inimigo mora ao lado: entre filisteus e amalequitas' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Samuel 29 e 30. Aquele que colherá rosas não deve temer os espinhos, não é mesmo? A coragem nem sempre ruge. Às vezes, ela é a voz silenciosa ao final do dia que diz; Tentarei novamente amanhã.", "24:08");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Samuel 1 - O caráter de Davi", "daa1e133-2f93-4560-9137-ab9a00e7d369","Episódio com o tema 'O caráter de Davi'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 2 Samuel 1.Hoje damos início a mais uma série. Na verdade, seguindo agora nossa aventura, no Segundo Livro de Samuel. Que alegria! Um raly pela Bíblia. Você sabia que a medida fundamental de um homem não é como ele se posiciona em momentos de conforto e conveniência, mas como ele se posiciona em tempos de desafio e controvérsia?", "28:24");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Samuel 2, 3 e 4 - Onde já se viu? O povo de Deus em guerra civil?", "94e05d13-58e6-4b88-9b5e-ab9a00e7d370","Episódio com o tema 'Onde já se viu? O povo de Deus em guerra civil?'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 2 Samuel 2, 3 e 4. A luta pelo poder é algo terrível, não é mesmo? Foi Nietzsche quem sentenciou: 'Insanidade em indivíduos é algo raro - mas em grupos, festas, nações e épocas, ela é uma regra'.", "25:23");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Samuel 5 - Subindo o planalto para governar", "64f2a008-9290-401b-9859-ab9a00e7d36c","Episódio com o tema 'Subindo o planalto para governar'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 2 Samuel 5. Você já leu na Bíblia que é muito mais difícil controlar as emoções do que conquistar uma cidade? É o que aconteceu com o rei Davi. Por isso que o homem paciente vale mais que um general que venceu muitas batalhas. A luta continua companheiro! Quer ser mais que um vencedor? Preste atenção nesta exposição.", "27:23");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Samuel 6 - Quando a mão pesou", "532f4438-79ce-42a7-9103-ab9a00e7d36e","Episódio com o tema 'Quando a mão pesou' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 2 Samuel 6. É, quando uma pessoa está na ociosidade e deixa que os outros façam as suas obrigações e deveres só para ficar ‘pensando na vida’, começa a ver coisas que não devem ser vistas e a cobiçar as que são proibidas. Adultério: quando você pensa que está longe é porque está perto demais.", "25:36");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Samuel 7 - Uma aliança para sempre", "df04e936-e8b2-40f1-b2c9-ab9a00e7d375","Episódio com o tema 'Uma aliança para sempre' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 2 Samuel 7. Nessa aula você vai descobrir uma profecia ampla que fala da vida do rei Davi e do seu descendente, O FILHO DE DAVI.  A experiência de Davi me faz lembrar a frase de Martin Luther King: 'Eu guardei muitas coisas em minhas mãos, e perdi todas; mas todas que coloquei nas mãos de Deus, essas eu ainda possuo'.", "26:50");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Samuel 8, 9 e 10 - Guerra e Paz", "10da93f5-d02c-4034-8f52-ab9a00e7d377","Episódio com o tema 'Guerra e Paz'. Apresentação: Luiz Sayão e Alberto Veríssimo. Com base em 2 Samuel 8, 9 e 10. Vamos em frente na série de estudos no Segundo livro de Samuel. Hoje examinando os capítulos 08,09 e 10. Luiz Sayão preparou um tema interessante: 'Guerra e Paz'.", "25:28");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Samuel 11 - O pecado mora ao lado", "0d980a35-1fec-4a87-831a-ab9a00e7d371","Episódio com o tema 'O pecado mora ao lado' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 2 Samuel 11. É, quando uma pessoa está na ociosidade e deixa que os outros façam as suas obrigações e deveres só para ficar ‘pensando na vida’, começa a ver coisas que não devem ser vistas e a cobiçar as que são proibidas. Adultério: quando você pensa que está longe é porque está perto demais.", "24:01");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Samuel 12 - O erro revelado do rei arrependido", "f1b4bd68-4d33-473f-83fe-ab9a00e7d376","Episódio com o tema 'O erro revelado do rei arrependido' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 2 Samuel 12. Recapitulando, o rei Ruivo (Davi) adulterou e quase foi à ruína. Agora no capítulo 12 recebe sem reservas a visita do profeta Ratã, digo, Natã; que revoltado, mas com responsabilidade e coragem, coloca o dedo em riste e rasga o Verbo!", "27:17");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Samuel 13 - Instinto Selvagem", "edadc1bf-36ea-44db-9998-ab9a00e7d37c","Episódio com o tema 'Instinto Selvagem'. Apresentação: Luiz Sayão e Alberto Veríssimo. Com base em 2 Samuel 13. O pensador cristão C. S. Lewis definiu bem a condição humana quando disse que ‘Mandar obedecer aos instintos é como mandar obedecer às pessoas. Pessoas dizem coisas diferentes: assim também fazem os instintos. Nossos instintos estão em guerra.", "25:41");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Samuel 14 e 15 - Que beleza, hein!", "6a1d576c-8f77-4a10-8555-ab9a00e7d37a","Episódio com o tema 'Que beleza, hein!'. Apresentação: Luiz Sayão e Alberto Veríssimo. Com base em 2 Samuel 14 e 15. A beleza e a insensatez são antigas companheiras, não é mesmo? Peço a sua atenção para essa exposição bíblica onde a estética tenta roubar o lugar da ética.", "25:25");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Samuel 15 e 16 - Golpe sujo", "87ce7c3f-7671-4d60-a5a4-ab9a00e7d376","Episódio com o tema 'Golpe sujo'. Apresentação: Luiz Sayão e Alberto Veríssimo. Com base em 2 Samuel 15 e 16. Martin Luther King costumava dizer que Nada no mundo é mais perigoso que a verdadeira ignorância e a estupidez conscienciosa.", "25:14");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Samuel 17 e 18 - Independência e morte", "16523df1-2fd9-49cf-a7e7-ab9a00e7d377","Episódio com o tema 'Independência e morte'. Apresentação: Luiz Sayão e Alberto Veríssimo. Com base em 2 Samuel 17 e 18. Você vai aprender nesse programa sobre o perigo da auto-confiança sem Deus. A coragem vem de se querer fazer. A segurança vem de saber que se pode fazer. A confiança vem de se ter feito o que Deus espera. Esse era o segredo de Davi.", "27:22");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Samuel 18 e 19 - As boas notícias de grande tristeza", "0060ca7c-ef23-4cda-9328-ab9a00e7d2e5","Episódio com o tema 'As boas notícias de grande tristeza'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 2 Samuel 18 e 19. A Bíblia ensina que nós colhemos aquilo que plantamos, não é verdade? O Luiz Sayão apresenta um desafio para você. O assunto da aula será: “Grandes Notícias de Tristeza”. Como enfrentar os piores momentos da vida? Saiba que o exemplo é um comportamento contagiante.", "25:10");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Samuel 20 e 21 - Cheiro de morte", "11725023-83f7-4920-bc17-ab9a00e7d2e7","Episódio com o tema 'Cheiro de morte'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 2 Samuel 20 e 21. Problemas não resolvidos de relacionamentos podem matar! Portanto, é bom escolher certo. A pessoa certa é a que está ao seu lado nos momentos incertos. Do contrário, a confusão é certa.", "26:21");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Samuel 22 e 23 - A Deus toda a Glória", "203eda6b-4045-45d2-adb8-ab9a00e7d37e","Episódio com o tema 'A Deus toda a Glória'. Apresentação: Luiz Sayão e Alberto Veríssimo. Com base em 2 Samuel 22 e 23. A gratidão desbloqueia a abundância da vida. Ela torna o que temos em suficiente, e mais. A gratidão dá sentido ao nosso passado, traz paz para o hoje, e cria uma visão para o amanhã, não é mesmo? Deus te deu de presente 86 mil e 400 segundos hoje. Você usou um deles pra dizer obrigado?", "26:15");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Samuel 24 - Rei orgulhoso, número perigoso", "38301b42-eb59-4e76-9866-ab9a00e7d380","Episódio com o tema 'Rei orgulhoso, número perigoso'. Apresentação: Luiz Sayão e Alberto Veríssimo. Com base em 2 Samuel 24. Uma virada radical para alguém que já não estava num momento jovem e quase perdeu um tempo com Deus.", "26:08");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Reis 1 e 2 - A sucessão sem sossego", "730a16be-b504-4ac6-92cc-ab9a00e7d3cb","Episódio com o tema 'A sucessão sem sossego' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Reis 1 e 2. O programa Rota 66 está começando uma nova etapa. É a série no Primeiro livro dos Reis que vai explorar a vida do Israel antigo na monarquia. Luiz Sayão abre esse nosso primeiro estudo com o título; “A sucessão sem sossego”. Você pode acompanhar essa exposição lendo os capítulos 1 e 2 do Primeiro Livro dos Reis que fica no Antigo Testamento. Se você gosta de fortes emoções e muita aventura, não vai querer perder mais essa empolgante história da vida daqueles que marcaram as páginas das Escrituras Sagradas.", "25:09");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Reis 19 - Conhecendo a Deus na depressão", "8a536b77-146f-4d33-bbeb-ab9a00e7d3cf","Episódio com o tema 'Conhecendo a Deus na depressão' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Reis 19. Estamos na etapa do Primeiro Livro dos Reis que apresenta vários golpes e crimes, ambição e sedução, luta pelo poder. Hoje Luiz Sayão chama a nossa atenção para o capítulo Dezenove com o título: 'Conhecendo a Deus na Depressão'. Não é fácil admitir, mais às vezes fica difícil prosseguir. Não se desespere e nem desanime. Como costumava dizer o físico Albert Eistein: no meio de toda dificuldade, sempre existe uma oportunidade.", "24:37");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Reis 21 - O Rei sem caráter ameaça o sem-terra", "b1723a83-39fd-45ac-97a3-ab9a00e7d343","Episódio com o tema 'O Rei sem caráter ameaça o sem-terra' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Reis 21. Se quiser por à prova o caráter de um homem, dê-lhe poder - dizia Abraham Lincoln. Você vai conhecer a loucura de um rei que influenciado por uma mulher ambiciosa comete uma grande injustiça. É, um rei sem religião tem sempre aparência de tirano. Mas e quanto a nós que não somos do governo ou da monarquia, qual a vantagem de ter fé?", "24:53");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Reis 7 e 8 - Glória maravilhosa, Glória perigosa", "fafe462e-4f9a-4d12-8bad-ab9a00e7d33a","Episódio com o tema 'Glória maravilhosa, Glória perigosa' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Reis 7 e 8. Você já sonhou em achar Petróleo no quintal de casa? Ou mesmo ganhar uma herança milionária? Dizem que riqueza não traz felicidades, manda buscar. Cuidado! O pensador Arthur Schopenhauer dizia que a riqueza é como a água salgada: quanto mais se bebe, mais sede se tem. O poder de ter tudo o que se quer.", "25:06");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Reis 9 e 10 - Em alta no mercado internacional", "dbc8471d-6d3f-4b82-a540-ab9a00e7d3cf","Episódio com o tema 'Em alta no mercado internacional' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Reis 9 e 10. O que você faz para sobreviver no mundo selvagem de nossos dias? Salomão que era um grande observador aprendeu muitas lições com a natureza. Ele sabia que a união do rebanho obriga o leão a ir dormir com fome. Que quando o galo está bêbado, se esquece do gavião. Que um camelo não zomba da corcunda de outro camelo. E quando o rato ri do gato, é porque há um buraco por perto.", "25:03");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Reis 11 e 12 - Entrando numa dividida: a derrota da nação", "61573acc-e5be-4f38-9ca6-ab9a00e7d3d1","Episódio com o tema 'Entrando numa dividida: a derrota da nação' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Reis 11 e 12. Estamos estudando algumas atitudes do rei Salomão, e hoje nos capítulos 11 e 12, Luiz Sayão apresenta o tema: 'Entrando Numa dividida: A Derrota da Nação'.", "25:27");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Reis 3 e 4 - Você sabia que Salomão solicitou sabedoria?", "c0b6549a-3ba2-478f-9fd6-ab9a00e7d3ca","Episódio com o tema 'Você sabia que Salomão solicitou sabedoria?' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Reis 3 e 4. Sem ser sonolento seguiremos a sapiência do sempre simpático Sayão em sua super série no Primeiro Livro dos Reis hoje salientando sutilmente os capítulos 3 e 4 com o tema: 'Você Sabia que Salomão Solicitou Sabedoria?'. Sinceramente, Salomão sobrou com superlativo sem igual. Será suficiente ser sábio? Seja simples e satisfará seus sentidos. Sem sabedoria suscitará superstição. Sabedoria significa submeter-se ao Senhor e sobreviver sem sofrer.", "25:23");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Reis 17 e 18 - Previsão do tempo: tempo fechado, solo rachado, fogo mandado", "a3df16a2-fe83-4f25-96f2-ab9a00e7d341","Episódio com o tema 'Previsão do tempo: tempo fechado, solo rachado, fogo mandado' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Reis 17 e 18. Nossa série no Primeiro Livro dos Reis entra num momento muito importante a partir de agora nos capítulos 17 e 18. Céu carrancudo, clima abafado sujeito a trovoadas. O Luiz Sayão fala da: 'Previsão do Tempo. Tempo fechado. Solo rachado. Fogo mandado'. Esse é o tema. Sua vida anda Arida, seca, sem nenhuma expectativa de chuvas de bênçãos? Ora meu amigo, não fique desanimado pensando que está sozinho nesta luta. Se prepare que vem chuva de informação e muita vibração.", "24:44");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Reis 15 e 16 - Longe do bom domínio, o reino vai de mal a pior", "f69db0dc-18b6-4a18-838e-ab9a00e7d340","Episódio com o tema 'Longe do bom domínio, o reino vai de mal a pior' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Reis 15 e 16. Nossa série de meditações está empolgante no Primeiro Livro dos Reis que destaca os capítulos 15 e 16. Luiz Sayão traz uma advertência para todos nós. 'Longe do bom domínio, o reino vai de mal a pior'. Este será o assunto do estudo preparado com muito carinho para você. Na vida precisamos tomar muitas decisões, portanto, tome cuidado com o que você coloca em seu coração, pois isto certamente será seu.", "24:16");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Reis 5 e 6 - Uma casa para Deus e para todo mundo", "4f53061f-ad09-41a5-9e32-ab9a00e7d3c7","Episódio com o tema 'Uma casa para Deus e para todo mundo' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Reis 5 e 6. É pau, é pedra, é o início do caminho, a construção do Templo; um resto de toco... É a vida, é o sol é a noite, é a morte, é um laço, é o anzol é Cedro do Líbano, é o nó da madeira...Até parece a música ‘as águas de março’, mas é um novo começo para o povo de Deus no Antigo Testamento. Luiz Sayão está apresentando uma nova série de estudos no Primeiro Livro dos Reis. Hoje capítulos 5 e 6 trazem o tema: 'Uma Casa para Deus e pra Todo Mundo'. Qual teria sido a razão de construir um Templo? Haveria alguma esperança em dedicar um lugar para Deus habitar? Que diferença faz saber que Deus está perto ou longe?", "25:58");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Reis 13 e 14 - O reino ruiu, a casa caiu", "0d38c176-3001-420d-a2b1-ab9a00e7d3d8","Episódio com o tema 'O reino ruiu, a casa caiu' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Reis 13 e 14. Programa Rota 66 fazendo um verdadeiro ‘cross’ no reino do antigo Israel. Nossa série de meditações está no Primeiro Livro dos Reis e hoje vamos explorar os capítulos 13 e 14. Luiz Sayão preparou um assunto muito interessante: 'O reino ruiu, a casa caiu'. Por que será que às vezes perdemos coisas que julgávamos ser para sempre? Com certeza, mais difícil do que construir um projeto de vida é mantê-lo vivo, não é mesmo? Por isso precisamos buscar sabedoria, fuja dos micos! Porque os verdadeiros caráteres da ignorância são a vaidade, o orgulho e a arrogância...", "25:43");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Reis 20 e 22 - Acabe com a maldade antes que ela acabe com você", "12c9c4ec-c091-4644-8825-ab9a00e7d346","Episódio com o tema 'Acabe com a maldade antes que ela acabe com você' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Reis 20 e 22. Neste episódio, o Luiz Sayão fecha esse livro com um trocadilho: “Acabe com a maldade antes que ela acabe com você”. Você vai ver neste estudo como Deus não desiste de ninguém, até mesmo um rei perverso e ruim tem chance na vida. Se você pensa que pode dar um jeitinho em tudo e escapar das conseqüências, então preste atenção nesta exposição do Luiz Sayão.", "25:18");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Reis 12, 13, 14 e 15 - De rei em rei o reino perde espaço", "ec14cf1e-4e6f-4886-9c6a-ab9a00e7d34b","Episódio com o tema 'De rei em rei o reino perde espaço' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 2 Reis 12, 13, 14 e 15. Examinaremos neste episódio vários capítulos que começa no 12 e vai até o 15. Você poderá ler com calma após a exposição: 'De rei em rei o reino perde espaço'. Esse será o tema da aula do professor Luiz Sayão. Deus está dando ao Israel antigo a última oportunidade de se arrepender para voltar a viver de maneira justa e correta. É, as oportunidades normalmente estão disfarçadas de trabalho pesado, por isso a maioria das pessoas não as reconhece. E quanto a você? Será que está aproveitando as oportunidades que o Criador colocou à sua frente?", "26:51");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Reis 3 e 4 - Milagres, milagres, milagres", "a91cd670-f8e7-4284-99cc-ab9a00e7d3d9","Episódio com o tema 'Milagres, milagres, milagres' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 2 Reis 3 e 4. Iniciamos a série de estudos no Segundo Livro dos Reis com o Luiz Sayão que apresenta agora os capítulos 3 e 4 para falar sobre: 'Milagres, milagres, milagres!'. Um dos maiores milagres de Deus é permitir que pessoas comuns façam coisas incomuns. É, parafraseando o poeta: Há mais mistério na fé do que imagina a vã lógica humana. O que realmente é um milagre? Qual a verdadeira finalidade de um milagre? Vamos meditar um pouco sobre esse assunto.", "25:14");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Reis 7 e 8 - Guerra dois, fome zero", "a9de61e6-65ed-4c00-9379-ab9a00e7d3df","Episódio com o tema 'Guerra dois, fome zero' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 2 Reis 7 e 8. Esta é a série de estudos no Segundo Livro dos Reis que mostra os capítulos 7 e 8 como um clássico de todos os tempos. 'Guerra Dois Fome Zero'. Esse é o tema que o Luiz Sayão preparou para essa aula. Quantas vezes você leu partes da Bíblia que parece não fazer sentido algum ou mesmo que nada dizem, hein? O que interessa saber sobre a guerra da Síria ou a miséria de uma viúva? O que isso tem a ver com a nossa vida hoje?", "24:36");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Reis 1 e 2 - Final horroroso, final glorioso", "62cf9810-3a4a-4905-be00-ab9a00e7d3da","Episódio com o tema 'Final horroroso, final glorioso' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 2 Reis 1 e 2. Nossa aventura continua agora no Segundo Livro dos Reis explorando os Capítulos 1 e 2. Estamos fazendo um rali de norte a sul na terra de Canaã com Luiz Sayão que abre essa série com o tema: 'Final horroroso, final glorioso'. Você vai acompanhar os fatos mais impressionantes da história. O povo escolhido que deveria viver os valores de Deus e ser exemplo para todos os povos, afunda-se cada vez mais na infidelidade e degradação moral. Será que um milagre resolve? Você pode estar pensando: Onde estará Deus que deixa o caos tomar conta? Será que Ele é Poderoso mesmo, ou está longe e não pode fazer nada?", "25:10");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Reis 18, 19 e 20 - Com o Deus verdadeiro ninguém pode", "9077dacd-4bf4-4677-a19f-ab9a00e7d3e2","Episódio com o tema 'Com o Deus verdadeiro ninguém pode' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 2 Reis 18, 19 e 20. Em nosso estudo pela trilha do Segundo Livro dos Reis vamos nos aproximando dos últimos capítulos. Hoje o Luiz Sayão preparou o tema: 'Com o Deus verdadeiro ninguém pode'. Em destaque os capítulos 18 até o 20 do Segundo livro dos Reis. Vamos acompanhar a reação de um rei que resistiu a pressão do inimigo e quando tudo parecia contra permaneceu firme na fé. É, como dizia o poeta: Se você quer o arco-íris, você tem que suportar a chuva. Se prepare que vem muita coisa boa pra você.", "26:26");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Reis 21, 22 e 23 - Entre a loucura e a bravura", "61be0e61-1bf1-49d5-baec-ab9a00e7d3e3","Episódio com o tema 'Entre a loucura e a bravura' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 2 Reis 21, 22 e 23. Entramos na reta final em nosso estudo pela trilha do Segundo Livro dos Reis. Atenção especial aos capítulos 21 até 23. Muitas vezes o lugar e o momento transformam homens medrosos em valentes ou valentes em medrosos, não é mesmo? Neste episódio o professor Luiz Sayão vai nos falar sobre: 'Entre a loucura e a bravura'. Monteiro Lobato afirmava que um país se faz com homens e livros. Mas, o que acontece com alguém que faz tudo o que dá na cabeça? Perde o juízo, claro. E o que acontece com quem acha o Livro? É, essa nem Lobato esperava.", "25:29");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Reis 5 e 6 - Com os nervos à flor da pele", "4cb571b2-4a4f-4669-9f1b-ab9a00e7d3dd","Episódio com o tema 'Com os nervos à flor da pele' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 2 Reis 5 e 6. Esta é a série de estudos no Segundo Livro dos Reis que destaca hoje os capítulos 5 e 6 com o tema: 'Com os nervos à flor da pele'. O Luiz Sayão conta a história de um general estrangeiro que teve uma experiência forte com o Criador. O que você faria se soubesse que contraiu uma doença incurável? O mundo espiritual existe? É, na hora da aflição a reação mostra a sua condição.", "28:02");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Reis 16 e 17 - Finda-se este reino que do Pai se esqueceu", "b5a26a3c-a861-4dcd-b640-ab9a00e7d3df","Episódio com o tema 'Finda-se este reino que do Pai se esqueceu' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 2 Reis 16 e 17. Será que as piores coisas podem acontecer de uma hora para outra? Sabemos que não existe essa história de ‘súbito ataque cardíaco’, o que acontece são anos de negligência sem dar a devida atenção ao coração. Bom, a aula de hoje é uma advertência para quem anda displicente.", "25:49");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Reis 9, 10 e 11 - A morte vem a galope", "d04ee8da-9cb3-496d-9178-ab9a00e7d3dc","Episódio com o tema 'A morte vem a galope' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 2 Reis 9, 10 e 11. Tem gente que morre de medo em falar de morte, não é mesmo? Este será o assunto do  professor Luiz Sayão. O homem não morre quando deixa de viver, mas sim quando deixa de amar, dizia Charles Chaplin. Isso explica porque de tanta maldade, não é mesmo? Já o estadista Winston Churchill filosofou dizendo que existem três tipos de pessoas: as que se preocupam até a morte, as que trabalham até morrer e as que se aborrecem até a morte.", "24:37");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Reis 24 e 25 - E agora, Judá? A festa acabou, o reino se foi...", "72ff7c79-a095-442c-b849-ab9a00e7d3e2","Episódio com o tema 'E agora, Judá? A festa acabou, o reino se foi...' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 2 Reis 24 e 25. É com muita alegria que estamos concluindo mais uma etapa de nossa aventura explorando o Livro Sagrado. Depois da tragédia que destruiu o reino de Israel no norte devido ao pecado, agora é a vez do reino do sul, Judá. Os valores morais e espirituais foram menosprezados. Ora, a moral é filha da justiça e da consciência, sem uma não há como ter a outra. Quando se perde a visão de Deus, a consciência fica cega e os ideais degradados, você não concorda? Vamos à mais uma reflexão.", "24:56");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Crônicas 10, 11 e 12 - O rei rejeitado e o rei abençoado", "76d3bb14-e08c-4f69-b7ee-ab9c012dc664","Episódio com o tema 'O rei rejeitado e o rei abençoado' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Crônicas 10, 11 e 12. A forma como se deu a morte de Saul tem explicação? E o surgimento do reinado de Davi, que podemos aprender? Esta série até parece uma revisão dos fatos narrados em Samuel. É, pra tudo sempre existe um propósito, nada acontece por acaso. Vamos conferir?", "25:38");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Crônicas 23, 24, 25, 26, 27, 28 e 29 - Cantai ao Senhor um cântico novo", "93c52676-c183-40ee-b354-ab9c012dc663g","Episódio com o tema 'Cantai ao Senhor um cântico novo' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Crônicas 23, 24, 25, 26, 27, 28 e 29. Lá vamos nós de novo encontrar aquelas listas cheias de instruções para cultuar no Templo. Mas o que isso tem a ver com a nossa vida em pleno século 21? Vamos conhecer algumas características da forma antiga de adoração. Será que podemos extrair alguma coisa nova para nós? Fique agora com essa aula do professor Sayão.", "24:59");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Crônicas 13, 14, 15 e 16 - Deus sempre em primeiro lugar", "e2d5e544-43ca-47ea-9705-ab9c012dc65e","Episódio com o tema 'Deus sempre em primeiro lugar' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Crônicas 13, 14, 15 e 16. Que atitudes devemos ter diante do Sagrado? Como reconhecer que Deus está agindo em todas as coisa?", "24:12");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Crônicas 17, 18, 19 e 20 - O reino que ele pediu a Deus", "6d8b86a2-c2b4-4f6c-be7e-ab9c012dc666","Episódio com o tema 'O reino que ele pediu a Deus' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Crônicas 17, 18, 19 e 20. Sucesso parece estar ligado à ação. Pessoas prósperas continuam se mexendo. Eles cometem erros, mas eles não desistem nunca. Nada de desânimo e muito menos cabeça baixa. Levanta, sacode a poeira e... continue a buscar a vontade de Deus pra sua vida. Confira essa meditação.", "25:26");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Crônicas 21 e 22 - Errar é humano, consertar o erro é do Deus soberano", "38b9eb13-a4d3-4d4b-ac19-ab9c012dc662","Episódio com o tema 'Errar é humano, consertar o erro é do Deus soberano' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Crônicas 21 e 22. Tudo na vida tem um preço, não é verdade? Então é bom você pensar bem antes de tomar uma decisão. Você sabia que Deus espera que lhe entreguemos o que há de melhor em nossas vidas, e não só aquilo que não custa nada? Acompanhe só o que aconteceu com um homem que tinha o coração nas mãos de Deus.", "26:55");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Crônicas 1, 2, 3, 4, 5, 6, 7, 8 e 9 - É nome que não acaba mais", "fa1180f5-79e8-4236-8b63-ab9c012dc662","Episódio com o tema 'É nome que não acaba mais' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Crônicas 1, 2, 3, 4, 5, 6, 7, 8 e 9. A mensagem teológica desta obra se resume em analisar a situação do povo de Deus, o rei e o Templo, bênção e condenação divinas. Está começando mais uma aventura que vai desde Adão até Sião com explicação do Sayão", "24:15");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Crônicas 1, 2, 3 e 4 - Uma obra Salomônica", "f9e29add-2036-42bb-8cbb-ab9c012dc665","Episódio com o tema 'Uma obra Salomônica' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 2 Crônicas 1, 2, 3 e 4. Você conhece a fama do rei Salomão, certo? Sabe de suas riquezas e principalmente de sua sabedoria, não é mesmo? Você vai saber nesses primeiros estudos como foi próspero o seu reinado. Mas a pergunta é: Pra que tanta sabedoria, fama e poder? O professor Sayão vai nos contar o que Deus espera quando abençoa o seu povo. Vamos conferir?", "25:25");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Crônicas 13, 14, 15 e 16 - É luta e guerra na santa terra", "bd86f890-66b8-4fb5-8666-ab9c012dc66b","Episódio com o tema 'É luta e guerra na santa terra' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 2 Crônicas 13, 14, 15 e 16. O que acontece com as pessoas que só vivem em crises e conflitos? Por que será que todo homem é mais parecido com sua época do que com seu pai? Estaria aí o motivo de tanta confusão?", "25:01");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Crônicas 5, 6 e 7 - Deus de aliança, Deus de promessa!", "ddd85f8d-2d85-429a-a915-ab9c012dc665","Episódio com o tema 'Deus de aliança, Deus de promessa!' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 2 Crônicas 5, 6 e 7. Quando você começa um projeto novo de vida, qual é a sua motivação? Vamos aprender que os ingredientes fundamentais para o sucesso devem conter: perdão, amor, compreensão... e outras coisas de igual importância que você descobrirá a partir de agora com o Sayão. Vamos juntos!", "24:55");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Crônicas 31, 32, 33, 34, 35 e 36 - A grande vitória e a grande derrota", "332707ba-6cf7-43ae-a5e7-ab9c012dc66e","Episódio com o tema 'A grande vitória e a grande derrota' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 2 Crônicas 31, 32, 33, 34, 35 e 36. Quantas coisas podemos aprender com a vida desses reis que a história conta, não é mesmo? Não digo isso só por causa das grandes vitórias, mas principalmente pelas derrotas. Um estadista americano disse certa vez: Um homem não está acabado quando enfrenta a derrota. Ele está acabado quando desiste. Então vamos enfrente!", "25:06");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Crônicas 17, 18, 19 e 20 - O rei do bem e o rei do mal", "f68874c7-10ad-462f-8592-ab9c012dc669","Episódio com o tema 'O rei do bem e o rei do mal' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 2 Crônicas 17, 18, 19 e 20. Você sabe avaliar direito a influência de uma amizade? Amigos e inimigos estão em posições trocadas. Uns nos querem mal, fazem-nos bem. Outros almejam o bem e nos fazem mal. Analisava Rui Barbosa famoso jurista brasileiro. Vamos conhecer um caso típico. Confira comigo.", "25:20");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Crônicas 21, 22, 23, 24 e 25 - É um pior que o outro", "a23e835a-106a-4c71-903a-ab9c012dc669","Episódio com o tema 'É um pior que o outro' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 2 Crônicas 21, 22, 23, 24 e 25. A corrupção dos governantes quase sempre começa com a corrupção dos seus princípios, você não concorda? Mas não é só em nível de governo que a corrupção existe, ela também está presente, infelizmente, em toda sociedade e bem pertinho de você, Cuidado! Ela pode te pegar. Sayão, é a sua vez.", "25:22");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Crônicas 26, 27, 28, 29 e 30 - Uma luz no fim do túnel", "ffbec4d5-345b-4efa-9c3c-ab9c012dc668","Episódio com o tema 'Uma luz no fim do túnel' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 2 Crônicas 26, 27, 28, 29 e 30. Você já ficou desanimado por não conseguir mudar uma situação? E quando as coisas estão ruins e ficam piores, hein? É, mas quando Deus fecha uma porta, ele pode estar abrindo uma janela. Acompanhe essa aula.", "25:17");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Crônicas 8, 9, 10, 11 e 12 - Da gloriosa posição à triste divisão", "c0c8462f-57f0-4981-ac07-ab9c012dc66a","Episódio com o tema 'Da gloriosa posição à triste divisão' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 2 Crônicas 8, 9, 10, 11 e 12. Ah, como é bom ter tudo o que se deseja, não é mesmo? Mas na vida, antes de mais nada, o importante é ter o principal: saúde espiritual e comunicação com o Criador. Quando falta isso a ambição e o orgulho atacam como um vírus destruindo a vida e dividindo as pessoas. Vamos acompanhar mais essa exposição eclética!", "25:25");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Esdras 4, 5 e 6 - Por que parou? Parou porquê?", "5102fafd-9ad6-48f3-8f0c-aba300d181cd","Episódio com o tema 'Por que parou? Parou porquê?' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Esdras 4, 5 e 6. Fazer a vontade de Deus parece fácil, e não é nada complicado. O problema está na oposição e na nossa frágil constituição. Você fica desanimado quando ouve críticas? Fica confuso quando não é maioria? É, temos muito que falar sobre essas coisas, vamos enfrente?", "24:22");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Esdras 7 e 8 - O retorno de Judá - parte 2", "ce5e9626-ab7e-41cb-a586-aba300d18269","Episódio com o tema 'O retorno de Judá - parte 2' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Esdras 7 e 8. É meu amigo, para reconstruir dá mais trabalho que construir, você não acha? Os esforços e investimentos para este projeto receberam várias criticas e muita gente torcendo contra. Volta a trás e recomeçar requer muita coragem e fé, mesmo sabendo que muitos vão bater o pé e questionar. Fique com a gente e confira essa meditação preparada pelo mestre Sayão.", "24:38");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Esdras 1, 2 e 3 - O retorno de Judá - parte 1", "fd219c30-9d16-4f13-96fd-aba300d181d0","Episódio com o tema 'O retorno de Judá - parte 1' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Esdras 1, 2 e 3. É com muito prazer que convidamos você para mais uma aventura no Rota 66 hoje iniciando mais uma etapa no livro de Esdras. O professor Luiz Sayão vai mostrar que Deus age soberanamente por meio de agentes humanos responsáveis para realizar o seu objetivo. Quem espera sempre alcança, não é mesmo? É, mas muitas vezes as circunstâncias parecem conspirar contra nós. Quando o possível foi feito e nada mudou, é hora de confiar no Deus do impossível.", "25:01");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Esdras 9 e 10 - Perde o pelo mas não perde o vício", "dc59102f-dfbf-4097-9592-aba300d181d1","Episódio com o tema 'Perde o pelo mas não perde o vício' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Esdras 9 e 10. Você já ouviu alguém dizendo assim: eu sou deste jeito e não mudo! Nasci desta maneira e assim vai ser... Pois é, tem muita gente que pensa que está fazendo a coisa certa, mas não parou para ver o que o Criador diz sobre o assunto. Será que um erro justifica o outro? O que dizer sobre casamento e divórcio? Veja bem o que vai fazer, se não você dança. Vamos juntos em mais esta aventura.", "24:01");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Neemias 5 - Mercado financeiro: juros em alta", "252976f8-8137-4fb2-97ae-aba300d1826c","Episódio com o tema 'Mercado financeiro: juros em alta' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Neemias 5. Benjamin Franklin dizia que o trabalho paga as dívidas; e que o desespero aumenta-as. Dinheiro é como o adubo: só serve quando espalhado. Se você tem problemas nesta área, então fique ligado!", "25:55");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Neemias 3 e 4 - Contra o veto da oposição", "99cd61f0-040a-4c9c-816c-aba300d18269","Episódio com o tema 'Contra o veto da opsição' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Neemias 3 e 4. Você está preparado para realizar grandes coisas? Então coragem! E não se assuste com as pedras no caminho, pois obstáculos são aquelas coisas assustadoras que você vê quando desvia o olhar de sua meta. É o que podemos aprender com alguém determinado. Vamos conferir?", "25:00");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Neemias 1 e 2 - Saindo de cima do muro", "58908438-bc72-4b70-b108-aba300d18269","Episódio com o tema 'Saindo de cima do muro' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Neemias 1 e 2. Na hora da decisão qual é a sua opção? Não fique aí lamentando vendo a hora passar, se quiser mudanças comece a orar e depois muita ação. Acompanhe esta meditação.", "24:39");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Neemias 8, 9 e 10 - De volta aos bons tempos", "6b2a3bc6-2ff3-40ea-9cb2-aba300d18273","Episódio com o tema 'De volta aos bons tempos' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Neemias 8, 9 e 10. Não vamos querer ser saudosistas, mas como dizia o nosso poeta Mário de Andrade: O passado é lição para refletir, não para repetir. É hora de resgatar os bons costumes e valores que deixamos com a correria dos tempos modernos, você não acha? Então fique com a gente nos próximos minutos e reflita sobre essa questão.", "23:18");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Neemias 6 e 7 - Muros altos contra o baixo nível", "2b1afb9d-324b-4d04-befb-aba300d1826e","Episódio com o tema 'Muros altos contra o baixo nível' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Neemias 6 e 7. O grande pregador e líder, Martin Luther King costumava dizer que a verdadeira medida de um homem não é como ele se comporta em momentos de conforto e conveniência, mas como ele se mantém em tempos de controvérsia e desafio. Como você lida com as críticas e inimizades? É, a todo momento estamos sendo desafiados em nossa integridade. Como resistir? Fique ligado nesta meditação.", "25:18");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Neemias 11, 12 e 13 - Assentamento dos sem terra, sem propriedade, sem cidade", "fdfd3a26-0a3c-4bad-9762-aba300d1826f","Episódio com o tema 'Assentamento dos sem terra, sem propriedade, sem cidade' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Neemias 11, 12 e 13. Vida espiritual tem muito mais do que você imagina! Envolve compromisso social, responsabilidade pessoal e preocupação devocional. O que podemos aprender com esse líder que soube comandar sem abandonar suas convicções? Você é nosso convidado para essa reflexão. Vamos juntos!", "24:06");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Ester 1 - A rainha recebe xeque-mate", "86cce047-9b53-43c3-9e7c-aba30027e1f5","Episódio com o tema 'A rainha recebe xeque-mate' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Ester 1. Às vezes é num momento de festa e alegria que muitas vezes acontecem decepções, não é mesmo? Qual é sua atitude diante de uma situação constrangedora? É o que vamos examinar explorando o primeiro capítulo de Éster. Fique atento porque preparamos um ‘banquete’ bíblico.", "25:06");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Ester 2 - Do concurso de beleza para a realeza", "7c33ff6a-0de4-4a86-a1e8-aba30027e1f2","Episódio com o tema 'Do concurso de beleza para a realeza' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Ester 2. 'Do concurso de beleza para a realeza', este será o tema do professor Luiz Sayão que comenta diretamente da passarela os detalhes da Miss Persa! Sem dispersar, vamos direto ao que interessa. Quem ‘anda de salto alto’ muitas vezes acaba se machucando, certo? Veja o que acontece com quem tem passos firme no caminho da fé.", "24:57");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Ester 3 e 4 - Escapando do Genocídio", "ce56cee4-8152-4f52-867b-aba300d1825b","Episódio com o tema 'Escapando do Genocídio' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Ester 3 e 4. Como você costuma resolver os problemas que ameaçam sua estabilidade? Como tomar a decisão correta em meio a tantas dúvidas e incertezas? Risco de morte em toda parte! É hora de agir com fé.", "24:28");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Ester 5, 6 e 7 - Comendo com a corda no pescoço", "9a7c5f9a-8801-4844-a00a-aba300d18265","Episódio com o tema 'Comendo com a corda no pescoço' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Ester 5, 6 e 7. Atenção aventureiro! O Rota 66 começa mais um estudo na Palavra de Deus pra você viver em paz o dia inteiro. O professor Luiz Sayão segue na série de meditações no livro de Éster, hoje encarando uma parada indigesta. Os capítulos Cinco até Sete encontramos a rainha Éster oferecendo um banquete onde o prato principal é Hamã, um homem cheio de ódio. “Comendo com a corda no pescoço”, tema desta aula que vai nos ensinar o que acontece com quem planeja o mal e projeta desgraça para alguém. Dizia o filósofo Franz Kafka: Depois de ter dado abrigo ao mal, ele não mais pedirá que você acredite nele. Incredulidade e coração duro, faz qualquer um perder a cabeça.", "23:56");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Ester 8, 9 e 10 - 'Pur' pouco a sorte não muda'", "dfbb2f25-5c65-40ac-8fb3-aba300d181c7","Episódio com o tema 'Pur' pouco a sorte não muda' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Ester 8, 9 e 10. O professor Luiz Sayão fecha esta série falando da festa celebrada pelo povo e explica a reviravolta da história. A única coisa segura sobre a sorte é que ela mudará. Uma coisa podemos aprender: Sua sorte é como você trata as pessoas. Agora com você, o professor Sayão, sorte sua.", "25:02");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Jó 1 - Deus e o diabo na terra de Jó", "d34145a5-807f-4faf-86c9-ab9a00e7d3e3","Episódio com o tema 'Deus e o diabo na terra de Jó' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Jó 1. Em nossa nova série de estudos, Luiz Sayão vai comentar um dos poemas épicos mais impressionantes da história. O sofrimento de um justo. É o primeiro capítulo que mostra como surgem as provações. Você sabe que o milho de pipoca que não passa pelo fogo continua a ser milho pra sempre, não é mesmo? Assim também é com a gente, as grandes transformações acontecem quando passamos pelo fogo. Quem não passa pelo fogo fica do mesmo jeito a vida inteira. O fogo é quando nos vemos numa situação nunca antes imaginada: a dor o sofrimento a dúvida e o medo... Se prepare que essa série vai esquentar!", "27:04");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Jó 38, 39, 40 e 41 - Santa ignorância, Jó!", "a85073c2-26a3-4919-9f29-ab9a00e7d3ef","Episódio com o tema 'Santa ignorância, Jó!' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Jó 38, 39, 40 e 41. Chegamos nos capítulos 38 e vamos até o 41 com o tema: 'Santa Ignorância Jó'. É a resposta de Deus a Jó. O homem sendo criatura finita não pode compreender a infinita sabedoria do Criador. Mas será que pode questionar seus feitos?  Esse é o ponto, enquanto Jó pergunta o 'por que?', Deus responde o 'pra que'. Bom, para ficar mais claro vamos de imediato para a aula com o Mestre Sayão.", "26:47");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Jó 42 - Além da imaginação", "ea0ecd81-d4d8-4283-aae5-ab9a00e7d3f5","Episódio com o tema 'Além da imaginação' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Jó 42. Hoje estamos cumprindo mais uma etapa de nossa jornada. Vamos fechar a série no livro poético de Jó comentando o capítulo 42. “Além da Imaginação”. Este será o assunto do Luiz Sayão. O que é ter uma experiência com Deus? Jó passou por isso e agora reconhece que suas perguntas e questionamentos não têm importância comparadas com as vitórias que recebe. O que você espera da vida? Será que precisamos de Deus apenas para ‘financiar’ nossos projetos?", "25:51");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Jó 2 - Perigo: satanás está solto", "c42642e5-246f-4262-8baf-ab9a00e7d3e6","Episódio com o tema 'Perigo: satanás está solto' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Jó 2. Você vai ver como a vida de um homem pode mudar de uma hora para outra. Da riqueza para a pobreza. Do vigor para a doença. Do conforto da família para o descaso da solidão. Seria tudo obra do Diabo? Será que corremos o mesmo risco no mundo de hoje?", "27:15");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Jó 3, 4, 5, 6 e 7 - O que Ele faz, não entende Jó, nem Elifaz", "78aee610-9cc3-4e58-ad46-ab9a00e7d354","Episódio com o tema 'O que Ele faz, não entende Jó, nem Elifaz' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Jó 3, 4, 5, 6 e 7. Por que o justo sofre? O assunto preparado para a nossa meditação será: 'O que Ele faz, não entende Jô, nem Elifáz'. Luiz Sayão examina os capítulos 3 até o 7 onde acontece o primeiro diálogo após a tragédia de Jó. Seria o sofrimento resultado direto do pecado na vida de Jó? Quando os amigos aparecem as coisas mudam! A vida é em parte o que nós fazemos dela, e em parte o que é feito pelos amigos que nós escolhemos. É, se conselho fosse bom, as pessoas iriam querer vendê-lo ao invés de dá-lo.", "25:26");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Jó 8, 9 e 10 - Tenha piedade, senhor Bildade", "4a459fba-976d-40d2-a921-ab9a00e7d353","Episódio com o tema 'Tenha piedade, senhor Bildade' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Jó 8, 9 e 10. A série Jó segue com argumentos sutis e palavras delicadas. Cuidado para não escorregar!  Luiz Sayão vai explorar os capítulos 8 até o 10 do livro de Jó para mostrar que um mui amigo não tem dó de Jó que está com sofrendo no pó. Tema desse estudo: 'Tenha Piedade, senhor Bildade'. Se você quiser ajudar alguém, cuidado para não condenar antes de fazer uma boa avaliação. Para bem julgar não basta sempre ver, é necessário olhar; nem basta ouvir, é conveniente escutar, certo?", "26:56");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Jó 11, 12, 13 e 14 - Com um amigo desses, quem precisa de inimigo!", "44580fcf-811d-4146-9544-ab9a00e7d3ef","Episódio com o tema 'Com um amigo desses, quem precisa de inimigo!' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Jó 11, 12, 13 e 14. A série Jó segue seu debate sobre o sofrimento do justo. É a vez de mais um amigo entrar em cena. Um legalista que por causa de seu conhecimento superficial das coisas de Deus aplica a Palavra de forma errada. Luiz Sayão apresenta os capítulos 11 até 14 do livro de Jó com o tema: 'Com um amigo desses, quem precisa de inimigo?'. Na prosperidade é muito fácil encontrar amigos, na adversidade não há nada mais difícil. É isso que Jó está experimentando neste momento.", "26:05");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Jó 15, 16, 17, 18, 19, 20 e 21 - Três contra um", "5ed7f86e-4660-4cb8-8618-ab9a00e7d357","Episódio com o tema 'Três contra um' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Jó 15, 16, 17, 18, 19, 20 e 21. A série Jó atinge seu clímax com os amigos de Jó intensificando as acusações falsas. Com a alma angustiada Jó busca paz e justiça virando as costas a homens fanáticos para achar misericórdia em Deus. Luiz Sayão percorre os capítulos 15 até 21 com o tema: 'Três Contra Um'. Você vai ver no programa de hoje que a dor possui um grande poder educativo: faz-nos melhores, mais misericordiosos, mais capazes de nos recolhermos em nós mesmos...", "25:52");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Jó 27, 28, 29, 30 e 31 - Sessão nostalgia: lições do passado", "352b7746-431a-4f33-b77b-ab9a00e7d3ee","Episódio com o tema 'Sessão nostalgia: lições do passado' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Jó 27, 28, 29, 30 e 31. Teremos um estudo especial neste episódio. Quem não gosta de recordar os bons momentos? Luiz Sayão apresenta a defesa de Jó contra as falsas acusações, é hora da saudade. Capítulos27 até o 31 do livro de Jó com o tema: “Sessão Nostalgia: Lições do passado”. Ah! Estamos saudosistas! Como bem destacou o poeta brasileiro ‘o passado é lição para refletir, não para repetir’. Profundo, né?", "24:45");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Jó 32, 33, 34, 35, 36 e 37 - Entre problemas mil, um enfoque juvenil", "4c1041bd-e376-4ba1-bacc-ab9a00e7d360","Episódio com o tema 'Entre problemas mil, um enfoque juvenil' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Jó 32, 33, 34, 35, 36 e 37. Neste episódio, Luiz Sayão traz uma novidade em nosso estudo; um personagem misterioso que entra em cena para colocar um ponto final no debate. 'Entre problemas mil, um enfoque juvenil'. Este será o tema extraído dos capítulos 32 até o 37 de Jó. Você costuma pensar em sua vida? Sobre seu comportamento e atitude? É, um exame não faz mal a ninguém, não é mesmo? Platão, o grande filósofo ensinou que uma vida não questionada não merece ser vivida. Se teve um homem que teve sua vida dissecada, esse era Jó.", "26:08");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Jó 22, 23, 24, 25 e 26 - Um é pouco, dois é bom, três é demais", "36b5f1e9-859f-4993-a8f7-ab9a00e7d3ee","Episódio com o tema 'Um é pouco, dois é bom, três é demais' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Jó 22, 23, 24, 25 e 26. Em nossa série de estudo Bíblico no livro de Jó o debate continua fervendo com acusações e insinuações. Quem é que não passou por uma situação de aberto onde, até os amigos desconfiam da gente, hein? Pois é, hoje o professor Luiz Sayão comenta os capítulos 22 até 26 do livro de Jó com o tema: 'Um é pouco, dois é bom, três é demais'.  E lá vem mais explicação sobre o sofrimento de Jó. William Shakespeare observou que há mais mistérios entre o Céu e a Terra do que sonha a nossa vã filosofia. O sofrimento é, em certo sentido um mistério. Bom, chega de ‘filosofar’ e vamos direto para a aula com o professor Sayão.", "25:54");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 82, 85 e 86 - Domínio total", "1c3bbe52-d836-4e86-8c85-ab9a00e7d3bc","Episódio com o tema 'Domínio total' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Salmos 82, 85 e 86. Nossa expedição continua examinando o livro de Salmos. O tema preparado pelo professor Luiz Sayão será: 'Domínio Total'. Vamos destacar os salmos 82,85 e 86", "26:24");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 119 - Minha Palavra basta", "0db7cb44-c274-454f-a0bf-ab9a00e7d3be","Episódio com o tema 'Minha Palavra basta' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Salmos 119. Estamos na etapa da série Salmos, reta final. Neste episódio, o professor Luiz Sayão fala sobre a importância da Bíblia com o tema: 'Minha Palavra Basta!'. É o capítulo mais longo de todo livro sagrado! Salmo 119 aonde o salmista deseja uma vida pura a fim de obedecer à Palavra de Deus, e obedece à Palavra de Deus a fim de ter uma vida pura. Será que tem gente que conseguiu decorar mil versículos? Cuidado, é como disse Moody, o grande evangelista do século Dezenove: A Bíblia não nos foi dada para aumentar nosso conhecimento, mas para mudar nossa vida.", "26:18");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 40 e 41 - Pobreza e sinceridade", "fec804da-bb06-48b6-ba2f-ab9a00e7d39c","Episódio com o tema 'Pobreza e sinceridade' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Salmos 40 e 41. Estamos na série do livro de Salmos, explorando a poesia hebraica. Todo mundo parece querer ficar rico de qualquer jeito. Mas um homem pobre não é aquele que tem muito pouco, é aquele que constantemente deseja mais. A final de contas: o que é ser pobre?", "26:33");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 30 e 31 - Quando o choro vira alegria", "9f6770b3-c3f3-4ac5-bfe5-ab9a00e7d397","Episódio com o tema 'Quando o choro vira alegria' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Salmos 30 e 31. Continuamos na série Salmos e hoje você vai aprender um segredo muito importante. Luiz Sayão fará uma exposição dos Salmos 30 e 31.", "26:01");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 144 e 145 - Deus do presente, Deus do futuro", "d324a63a-6657-4914-b9ec-ab9a00e7d3c7","Episódio com o tema 'Deus do presente, Deus do futuro' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Salmos 144 e 145. Foi uma longa jornada pelo livro de Salmos, entramos agora na reta final! Luiz Sayão apresenta os Salmos: 144 e 145. O tema desta aula será: 'Deus do Presente, Deus do Futuro'. Você anda preocupado com o futuro? Ansioso com o presente? Angustiado com o passado? Vamos ver como Deus intervém na hora do perigo e nos dias alegres e de paz. Prosperidade será sinal de benção? Quem sabe? Se controlarmos a nossa riqueza, seremos ricos e livres; agora, se a nossa riqueza nos controlar, seremos na verdade pobres.", "26:41");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 90, 91, 92 e 93 - Contemplando o infinito", "57be25c9-038e-4670-903b-ab9a00e7d3b9","Episódio com o tema 'Contemplando o infinito' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Salmos 90, 91, 92 e 93. Você já deve ter pensado em alcançar a sabedoria para ter sucesso na vida, não é mesmo? Mas não confunda jamais conhecimento com sabedoria. Um o ajuda a ganhar a vida; o outro a construir uma vida. Quer saber a receita para vida bem e melhor? Acompanhe essa exposição com o mestre Sayão.", "24:47");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 38 e 39 - Rompendo em febre", "8e949071-f5e7-4e4b-8fd6-ab9a00e7d39e","Episódio com o tema 'Rompendo em febre' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Salmos 38 e 39. O tema de nossa reflexão será: 'Rompendo em Febre'. Vamos aprender que a dor é a origem do conhecimento. E que muitas vezes sofremos por causa de algum pecado não confessado. O salmista busca o socorro do Criador e ora pedindo ajuda.", "25:38");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 27 e 28 - O seguro não morreu de velho", "3a22fce6-400b-4d44-8936-ab9a00e7d392","Episódio com o tema 'O seguro não morreu de velho'. Apresentação: Luiz Sayão e Alberto Veríssimo. Com base em Salmos 27 e 28. Estamos percorrendo um raly muito especial no livro de Salmos. Hoje Luiz Sayão comenta os salmos 27 e 28. Você quer estar seguro e bem, ou você tem medo de se arriscar e ser grande? A segurança comprova em quem você confia.", "26:01");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 46, 47, 48 e 49 - A segurança de Sião!", "bd3ebcd6-f9db-4c4d-9019-ab9a00e7d3a1","Episódio com o tema 'A segurança de Sião!' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Salmos 46, 47, 48 e 49. Nossa expedição caminha pelo livro de Salmos extraindo as preciosidades dos ensinamentos de Deus. O nome de Martinho Lutero sempre será associado com esse salmo – uma fortaleza segura nosso Deus é. Uma confiança tranquila na soberania de Deus em meio aos tumultos da natureza e da história.", "25:32");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 66, 67 e 68 - História, vitória, oh Glória!", "8cbbb38c-f3a7-4a65-8777-ab9a00e7d3ac","Episódio com o tema 'História, vitória, oh Glória!' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Salmos 66, 67 e 68. Estamos estudando Salmos. Quando as coisas estão difíceis, comece a agradecer. A gratidão desbloqueia a abundância da vida. Ela torna o que temos em suficiente. Ela pode transformar uma refeição em um banquete, uma casa em um lar.", "27:08");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 16, 17 e 18 - Fé, justiça e gratidão", "a662e805-8345-4c95-a633-ab9a00e7d38c","Episódio com o tema 'Fé, justiça e gratidão'. Apresentação: Luiz Sayão e Alberto Veríssimo. Com base em Salmos 16, 17 e 18. A série Salmos está empolgante e temos aprendido muitas coisas a respeito da vida, do homem e do Criador. Sem fé, nada é possível. Com fé, nada é impossível, não é mesmo? Então, faça aos outros o que você gostaria que eles fizessem a você, essa é a regra do cristianismo. ", "25:08");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 32 e 51 - A hora da confissão", "8dcec62b-3468-4f5b-aee3-ab9a00e7d307","Episódio com o tema 'A hora da confissão'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Salmos 32 e 51. Luiz Sayão destaca os Salmos 32 e 51 para falar sobre um problema que leva a humanidade à destruição: o pecado. Você sabia que o perdão de Deus só vem ao encontro do sincero arrependimento humano? Limpo não é aquele que não se suja, mas aquele que sempre se lava.", "25:30");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 91 e 92 - Isso é que é otimismo!", "4ab0afdb-d938-49fe-8db7-ab9a00e7d3b3","Episódio com o tema 'Isso é que é otimismo!' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Salmos 91 e 92. Qual seria o segredo do salmista para viver com alegria? Você sabe que otimismo é a fé em ação e que nada se pode levar a efeito sem otimismo, não é mesmo? Então, vamos enfrente!", "25:05");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 9 e 10 - Gratidão e reclamação, a perfeita união", "3e00d9a5-47b0-4d66-bd15-ab9a00e7d385","Episódio com o tema 'Gratidão e reclamação, a perfeita união'. Apresentação: Luiz Sayão e Alberto Veríssimo. Com base em Salmos 9 e 10. Às vezes, quando as preocupações nos transtornam, parece que Deus fica mais distante e escondido, não é mesmo? Porém, ele está mais perto de nós que o ar que respiramos. Essa certeza vem do fato de que Deus é soberano e tem o controle de tudo!", "26:08");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 6 e 7 - Guerra e falta de paz", "bfddca52-2613-4d92-869b-ab9a00e7d382","Episódio com o tema 'Guerra e falta de paz'. Apresentação: Luiz Sayão e Alberto Veríssimo. Com base em Salmos 6 e 7. O justo pode enfrentar seus problemas com a certeza de que Deus já ouviu suas orações. Na verdade, Deus sempre atende a uma oração de sincera confissão. Quem semeia ventos colhe tempestades, não é mesmo? Na vida é assim, colhemos o que plantamos.", "26:07");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 81, 82, 83 e 84 - Alegria de festa, saudade da festa", "e433a9b0-1a12-41eb-819c-ab9a00e7d3b2","Episódio com o tema 'Alegria de festa, saudade da festa' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Salmos 81, 82, 83 e 84. Na série de estudos no livro de Salmos, já passamos pela metade e agora o  Luiz Sayão examina os Salmos 81 e 84. Uma vida de fé faz com que os próprios tempos difíceis e áridos da nossa existência possam ser momentos de refrigério e esperança.", "25:40");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 135, 136 e 137 - Cantarei teu amor para sempre!", "6e8a236d-a8c8-4e02-98a9-ab9a00e7d3c7","Episódio com o tema 'Cantarei teu amor para sempre!' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Salmos 135, 136 e 137. Depois de percorrer vários, dos mais belos poemas das escrituras sagradas, chegamos aos capítulos 135 ao 137 da série Salmos. O Luiz Sayão apresenta o tema; “Cantarei teu amor pra sempre”. É, tem gente que diz que quem canta seus males espanta! Mas quando acaba a canção... Você vai descobrir no programa de hoje que adoração é muito mais do que música. Deus deseja que nossa adoração seja motivada por amor, ação de graças e alegria.", "26:34");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 20 e 21 - Reino em risco, Reino que resiste", "55a2e265-7100-4cd0-a6c1-ab9a00e7d38b","Episódio com o tema 'Reino em risco, Reino que resiste'. Apresentação: Luiz Sayão e Alberto Veríssimo. Com base em Salmos 20 e 21. O que você faz diante das oscilações e perigos da vida? Veja bem, as pessoas podem duvidar do que você diz, mas elas acreditarão no que você faz.", "27:14");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 146, 147, 148, 149 e 150 - Aleluia, aleluia, aleluia!", "003c13cb-d49b-4271-8c9b-ab9a00e7d3c7","Episódio com o tema 'Aleluia, aleluia, aleluia!' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Salmos 146, 147, 148, 149 e 150. Vamos completar a série Salmos depois de uma aventura fantástica pelo livro mais poético da história humana. Luiz Sayão reuniu os Salmos146 até o 150. O assunto para fechar esse brilhante estudo será: “Aleluia, aleluia, aleluia!”. O famoso físico Albert Einstein disse certa vez: Existem apenas dois modos de viver a vida: um é como se nada fosse milagre; o outro é como se tudo fosse um milagre. Eu acredito no último. É meu amigo, a vida é um grande milagre, até mesmo uma simples mensagem como essa chegando até você é um milagre.", "27:44");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 35 e 36 - Isso não vai ficar assim!", "44ccd1c0-b66a-4ccc-9c36-ab9a00e7d307","Episódio com o tema 'Isso não vai ficar assim!'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Salmos 35 e 36. Você que é apaixonado pelas coisas de Deus e ama a vida, Luiz Sayão apresenta a série mais poética e vibrante de toda a Bíblia: Salmos! Por que será que a justiça tarda mas não falha? Como deve ser a nossa atitude para com as pessoas ruins e maldosas? Será que o salmista pede vingança? Qual o perfil do pecador?", "25:36");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 56, 57, 58 e 59 - Há males que vêm para o bem", "a5d94e71-da39-4fa7-bd98-ab9a00e7d3a6","Episódio com o tema 'Há males que vêm para o bem' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Salmos 56, 57, 58 e 59. A Série de estudos no livro de Salmos está mexendo com muita gente! Uma cartela premiada! Você vai ver que os salmos 56, 57, 58 e 59 são um protesto contra a corrupção em círculos de gente com autoridades. Na vida tudo tem um preço, aquele que procura pérolas deve mergulhar fundo.", "27:09");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 63, 64 e 65 - Deus do coração, Deus da plantação", "820632fc-afad-441f-8131-ab9a00e7d3a9","Episódio com o tema 'Deus do coração, Deus da plantação' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Salmos 63, 64 e 65. Seguimos percorrendo esse fantástico livro poético do Antigo Testamento, Salmos. Embarque nesta viagem!", "26:36");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 94, 95, 96, 97, 98, 99 e 100 - Há esperança para o governo", "ea5c9bf2-22c1-4b05-b018-ab9a00e7d3bc","Episódio com o tema 'Há esperança para o governo.' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Salmos 94, 95, 96, 97, 98, 99 e 100. Hoje o Luiz Sayão acelera o estudo e apresenta os Salmos 94 até o Salmo 100 para dizer que: 'Há Esperança para o Governo'. Este será o tema de sua reflexão. A chave desses Salmos e de nossas vidas é adorar a Deus em espírito e em verdade.", "24:49");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 103:1-22 - Conte as bênçãos, conte quantas são", "eca14e79-89c2-4fa3-a273-ab9a00e7d3ba","Episódio com o tema 'Conte as bênçãos, conte quantas são' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Salmos 103:1-22. Você ja parou para ver quantas coisas boas Deus fez? Uma pequena fé levará tua alma ao céu, uma grande fé trará o céu para sua alma. Na hora de reclamar a gente conta para todo mundo, na hora de louvar a gente nem conta, não é mesmo?", "25:55");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 20 e 69 - O sofrimento supremo do Salvador", "33b1adb1-6ba1-422b-908b-ab9a00e7d38c","Episódio com o tema 'O sofrimento supremo do Salvador'. Apresentação: Luiz Sayão e Alberto Veríssimo. Com base em Salmos 20 e 69. Por que será que temos que passar por lutas e sofrimentos? O Pastor Peter Marshall pregou durante a Segunda Guerra que Deus não permitirá que qualquer dificuldade nos aconteça, a menos que Ele tenha um plano específico pelo qual grandes bênçãos possam surgir da dificuldade.", "25:59");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 33 e 34 - Deus criador, Deus sustentador", "89516b49-51bb-47a2-a3ad-ab9a00e7d306","Episódio com o tema 'Deus criador, Deus sustentador'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Salmos 33 e 34. O astronauta Neil Armstrong contemplou o espaço e disse: O mistério gera curiosidade e a curiosidade é a base do desejo humano para compreender. Será que existe alguma contradição entre ciência e fé? Se há um Deus que age na natureza, como ele pode interferir em nossas vidas? ", "27:00");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 70 e 71 -  felicidades e muitos anos de vida", "573f36a2-f116-4be4-a9be-ab9a00e7d3ab","Episódio com o tema 'Muitas felicidades e muitos anos de vida' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Salmos 70 e 71. Como a vida é bela! Meus parabéns a você! Agora, se você é daqueles que morre de medo de morrer, a questão não é se morreremos, mas como viveremos! Você não pode fazer nada sobre o comprimento da sua vida, claro. Mas você pode fazer algo sobre sua largura e profundidade.", "26:26");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 45, 46 e 47 - Chamem os convidados, a festa vai começar", "3d9716b7-ee05-410c-b34e-ab9a00e7d39f","Episódio com o tema 'Chamem os convidados, a festa vai começar' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Salmos 45, 46 e 47. Luiz Sayão continua percorrendo as páginas poéticas da Bíblia e destaca os Salmos 45 a 47 com o tema: 'Chamem os convidados, a festa vai começar'.", "25:55");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 110, 111 e 112 - Deus é rei e Deus é justiça", "3a692929-3061-4426-ad46-ab9a00e7d3bc","Episódio com o tema 'Deus é rei e Deus é justiça' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Salmos 110, 111 e 112. A série de salmos está em seus momentos finais e fortes emoções estão reservadas para você. Mais do que nunca queremos justiça e paz, não é mesmo?", "26:24");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 25 e 26 - A justiça adverte: o Salmo faz bem à saúde!", "f9f8550d-dd84-4b4e-9eef-ab9a00e7d393","Episódio com o tema 'A justiça adverte: o Salmo faz bem à saúde!'. Apresentação: Luiz Sayão e Alberto Veríssimo. Com base em Salmos 25 e 26. Uma boa dose de Salmos por dia ajuda a suportar as dificuldades do mundo moderno. Na verdade, a injustiça é relativamente fácil de suportar; o que ‘pinica’ é a justiça. Você sabe que existe o dia do juízo não é mesmo?", "26:30");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 87, 88 e 89 - De pressão em pressão, lá vem depressão", "e3c3943b-0981-4f01-9ba4-ab9a00e7d3b5","Episódio com o tema 'De pressão em pressão, lá vem depressão' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Salmos 87, 88 e 89. Nossa aventura pelo livro de Salmos continua agora analisando os Salmos 87, 88 e 89. O professor Luiz Sayão vai falar de um assunto que tem afligido a nossa sociedade nos últimos tempo: depressão. Quem nunca passou por um momento de profunda tristeza? É, como dizia Santo Agostinho: o que mais Deus odeia depois do pecado é a tristeza, porque nos predispõe ao pecado.", "27:14");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 127, 128, 129, 130, 131, 132, 133 e 134 - Pra cima, nosso Deus ajuda", "8819c6e7-261d-4ac5-b05f-ab9a00e7d3c3","Episódio com o tema 'Pra cima, nosso Deus ajuda' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Salmos 127, 128, 129, 130, 131, 132, 133 e 134. Já estamos nos últimos capítulos da série Salmos, e hoje o professor Luiz Sayão traz o tema: Pra cima nosso Deus ajuda'. São os salmos 127 até o 134. Quem é que não passa por problemas em casa ou mesmo no trabalho? Então, qual será a solução para esses conflitos? Você vai aprender que a humildade é a virtude que falta nesses momentos para reconhecer os defeitos e aceitar a ajuda do Criador.", "24:51");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 80, 81, 82 e 83 - Os conflitos do Oriente Médio", "f3f43edd-b8b5-4500-af33-ab9a00e7d3b2","Episódio com o tema 'Os conflitos do Oriente Médio' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Salmos 80, 81, 82 e 83. Em nossa série de estudos no livro de Salmos, Luiz Sayão comenta o assunto mais falado de todos os tempo: 'Conflitos do Oriente Médio'. Acompanhe em sua Bíblia lendo os Salmos 80 e 83. Por que será que na região das terras Bíblicas sempre tivemos guerras? Poderia Deus, que tirou o povo da escravidão do Egito permitir mais sofrimento?  Você sabia que nossos problemas são agravados porque somos ‘bitolados’ e imprevidentes?", "25:49");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 74, 75, 76, 77, 78 e 79 - E agora? A casa caiu!", "c1a9c5ba-923c-4cca-8ba5-ab9a00e7d3ad","Episódio com o tema 'E agora? A casa caiu!' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Salmos 74, 75, 76, 77, 78 e 79. Estamos explorando bem no meio da Bíblia, o livro de Salmos. Em cada poema e em cada verso uma verdade para o nosso progresso. Precisamos aprender a ouvir! Escutou? O povo que não ouviu a advertência de Deus lamentou a tragédia.", "27:08");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 138, 139, 140, 141, 142 e 143 - Basta de violência. A justiça vencerá", "871f8dbe-f1ab-478f-b4d8-ab9a00e7d3c5","Episódio com o tema 'Basta de violência. A justiça vencerá' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Salmos 138, 139, 140, 141, 142 e 143. Luiz Sayão comenta os seguintes Salmos: 138 depois vamos para o 140 até o 143. O tema desta aula será: 'Basta de Violência! A justiça vencerá'. O pacifista Gandhi que sofreu na carne o preconceito e a discriminação ensinou: Nunca use violência de nenhum tipo. Nunca ameace com violência de nenhum  modo. Nunca sequer tenha pensamentos violentos. Nunca discuta, porque isto ataca a opinião do outro. Nunca critique, porque isto ataca o ego do outro. E o seu sucesso está garantido.", "25:13");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 120, 121, 122, 123, 124, 125 e 126 - O Deus dos viajantes", "ea3ea7aa-5a4e-41fa-9089-ab9a00e7d3c2","Episódio com o tema 'O Deus dos viajantes' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Salmos 120, 121, 122, 123, 124, 125 e 126. A nossa aventura vai passar por alguns Salmos que foram cantados nas estradas que iam para Jerusalém. Você acha que Deus está longe? Tens saudades do passado? Então venha conferir mais essa exposição e descobrir que quem vive com fé e obediência, mesmo em dificuldades, vai ver resultados maravilhosos da ação de Deus. Peço sua atenção por alguns minutos, não vai ficar aí 'viajando', pensando na morte da bezerra, né? Vale a pena ouvir essa.", "24:30");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 3, 4 e 5 - Oração em segredo, vitória sobre o medo", "f888d35f-c609-49d3-b926-ab9a00e7d383","Episódio com o tema 'Oração em segredo, vitória sobre o medo'. Apresentação: Luiz Sayão e Alberto Veríssimo. Com base em Salmos 3, 4 e 5. Você anda nervoso, preocupado e cheio de ansiedade e medo? Ora meu amigo, quem tem fé quando as coisas vão bem, verá que essa fé é uma fortaleza na hora da dificuldade.", "25:38");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 72, 73, 74 e 75 - Presidir e governar, não é só começar", "3d8ad2f4-7215-447d-9730-ab9a00e7d3b4","Episódio com o tema 'Presidir e governar, não é só começar' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Salmos 72, 73, 74 e 75. Quem é que não gostaria de ser presidente de uma grande companhia? Ou governar um país rico? O poder é um perigo! Um homem que quer reger a orquestra precisa dar as costas à plateia. Em outras palavras, comandar é servir, nada mais e nada menos.", "25:40");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 42, 43 e 44 - Procura-se Deus: vivo e em pessoa!", "132a7753-ef12-4038-bec8-ab9a00e7d39f","Episódio com o tema 'Chamem os convidados, a festa vai começar' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Salmos 42, 43 e 44. Muitos vivem como se Deus estivesse morto quando se sentem desanimados e deprimidos. O salmista enfrentou tempos desanimadores e áridos, mas sempre teve uma atitude que o impediu de se tornar amargo ao dar graças a Deus.", "26:17");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 14 e 53 - Ateu, mas sem a graça de Deus", "0a3c2e76-014c-43e8-8e19-ab9a00e7d38a","Episódio com o tema 'Ateu, mas sem a graça de Deus'. Apresentação: Luiz Sayão e Alberto Veríssimo. Com base em Salmos 14 e 53. Não é apenas o homem ateu que nega a existência de Deus, mas também aquele que vive e age como se nunca tivesse que prestar contas ao Criador.", "26:10");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 107, 108 e 109 - Clamar é preciso, sofrer não é preciso", "e19b80c0-1792-4c4f-8fe6-ab9a00e7d3c0","Episódio com o tema 'Clamar é preciso, sofrer não é preciso' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Salmos 107, 108 e 109. Quando você passa por um grande problema, tem costume de pedir ajuda a Deus? Quando o desespero bate, todos clamam. Será que clamamos a pessoa certa? Sabemos que muitas dificuldades nos vem porque não obedecemos a palavra de Deus.", "25:06");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 76, 77 e 78 - Deus do passado, do presente e do futuro", "7b3d1cba-9fca-4448-b073-ab9a00e7d3ae","Episódio com o tema 'Deus do passado, do presente e do futuro' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Salmos 76, 77 e 78. O interesse do salmista em obter conhecimento de Deus não era teórico, mas prático. Seu desejo era entender a verdade a fim de que seu coração pudesse viver de acordo com a vontade do Criador.", "27:27");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 50, 52 e 54 - O bem Deus quer, o mal (Ele) não quer", "04cbe68a-c150-4c98-9cb7-ab9a00e7d3a6","Episódio com o tema 'O bem Deus quer, o mal (Ele) não quer' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Salmos 50, 52 e 54. No tempo que temos, é nosso dever fazer todo o bem que pudermos para todas as pessoas que pudermos e de todos os modos que pudermos. A menor das boas ações é melhor que a maior das boas intenções.", "27:15");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 113, 114, 115, 116, 117 e 118 - Aleluia! O seu amor dura para sempre", "25643140-c489-48e7-8817-ab9a00e7d3c1","Episódio com o tema 'Aleluia! O seu amor dura para sempre' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Salmos 113, 114, 115, 116, 117 e 118. Você vai conferir a futilidade dos que confiam na criação ao invés do criador. Como será que Deus vê a morte de um justo? Onde entra o amor em tudo isso? Você sabia que o amor não tem nada a ver com o que você está esperando receber e sim com o que você está esperando a dar? Imagina então o amor de Deus.", "26:06");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 1 - A caminho do sucesso", "e434d1d4-9bd5-45ed-a2ee-ab9a00e7d2ef","Episódio com o tema 'A caminho do sucesso'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Salmo 1. Martinho Lutero denominou o livro dos Salmos de 'uma pequena Bíblia e o resumo do Antigo Testamento'.", "26:09");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Provérbios 8 e 9 - Um convite irrecusável", "3782beb5-c4b4-46a2-9dbe-ab9c012dc640","Episódio com o tema 'Um convite irrecusável' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Provérbios 8 e 9. É, nos momentos de decisão que seu destino é decidido, sabia disso? Luiz Sayão apresenta os capítulos 8 e 9 do livro de Provérbios para falar sobre: 'Um Convite Irrecusável'. Todos os dias temos pela frente várias situações que requerem uma decisão. O que fazer numa hora de crise? Num momento delicado?  É fácil decidir o que fazer. O difícil é decidir o que não fazer. Então vamos começar ouvindo essa exposição para entender melhor a importância de viver com sabedoria.", "24:02");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Provérbios 21 e 22 - Plantou, colheu", "34074ec8-6149-4293-83aa-ab9c012dc64a","Episódio com o tema 'Plantou, colheu' Apresentação: Luiz Sayão e Alberto Veríssimo Com  base em Provérbios 21 e 22. Neste episódio vamos falar das consequências de nossas decisões. 'Plantou, colheu'. A mudança mais significante na vida de uma pessoa é uma mudança de atitude. Atitudes corretas produzem ações corretas, certo? Bom, sempre que estudamos um texto Bíblico somos levados a pensar sobre nossas vidas e refletir como estamos vivendo. Você está disposto a corrigir sua atitude? Então ouça essa meditação.", "24:03");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Provérbios 16, 17 e 18 - Segredos do sucesso", "257bb48b-1022-4ab8-90c4-ab9c012dc5ad","Episódio com o tema 'Segredos do sucesso' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Provérbios 16, 17 e 18. Bom, não estamos aqui para ensinar o segredo do sucesso, mas de alguma forma esse será o nosso assunto. De prático podemos aprender com um importante general americano que disse: Não há nenhum segredo para o sucesso. Isso é o resultado de preparação, trabalho duro, e aprender com o fracasso.", "24:58");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Provérbios 28 e 29 - Horário político: vem aí o PV", "45806c48-903c-42fb-bcca-ab9c012dc5b4","Episódio com o tema 'Horário político: vem aí o PV' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Provérbios 28 e 29. O que devemos esperar de um governo à luz das Escrituras Sagradas? O valor da ética nos nossos dias e a vida em sociedade. O que? Você não gosta de política? Então já está fazendo política!", "26:06");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Provérbios 25, 26 e 27 - É rir para não chorar", "1330233c-e98f-4da4-a9ec-ab9c012dc5b5","Episódio com o tema 'É rir para não chorar' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Provérbios 25, 26 e 27. Há situações na vida que nos levam ao ridículo, e então como devemos reagir? Charles Chaplin observou que através do humor nós vemos no que parece racional, o irracional; no que parece importante, o insignificante. O humor desperta o nosso sentido de sobrevivência e preserva a nossa saúde mental.", "25:02");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Provérbios 3 e 4 - Na rota segura da sabedoria", "3fe5dc8b-00e9-4a05-8fc8-ab9c012dc5a8","Episódio com o tema 'Na rota segura da sabedoria' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Provérbios 3 e 4. Normalmente o ser humano procura inventar suas próprias soluções para as diversas situações da vida, não é mesmo? Mas baseado em que? Qual a garantia de que é o que se busca? Qual será então a melhor maneira para fazer o que é certo? É o que vamos descobrir.", "24:34");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Provérbios 1 e 2 - Nem cultura nem ciência, apenas sabedoria", "561da948-dc75-4fbb-a7eb-ab9c012dc5a4","Episódio com o tema 'Nem cultura nem ciência, apenas sabedoria' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Provérbios 1 e 2. Estamos começando uma nova série de estudos Bíblicos. Vamos para o livro da sabedoria, Provérbios. Luiz Sayão nos conduzirá a esta aventura explorando os conceitos práticos da vida. Provérbios, não é apenas uma coletânea de ditos populares nem produto da especulação humana; é isso sim, fruto do conhecimento de quem tem por princípio o temor a Deus. 'Nem cultura, nem ciência. Apenas Sabedoria'. Este será o tema desta aula nos dois primeiros capítulos de Provérbios.", "26:09");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Provérbios 23 e 24 - Todo cuidado é pouco", "324d2eb4-6589-4572-b998-ab9c012dc5b2","Episódio com o tema 'Todo cuidado é pouco' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Provérbios 23 e 24. Você sabe qual é o seu limite? Isso mesmo será que você anda exagerando na bebida, no divertimento, nas horas vagas. Assuntos importantes que não podemos menosprezar. Você sabia que a liberdade é o direito de fazer aquilo que não é prejudicial?", "24:54");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Provérbios 13, 14 e 15 - Quem avisa, amigo é", "addbaf40-a6a6-4915-8980-ab9c012dc5ae","Episódio com o tema 'Quem avisa, amigo é' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Provérbios 13, 14 e 15. Como é bom saber que sempre podemos contar com um amigo, principalmente naquelas horas difíceis! Não é mesmo? Seja em casa ou na rua, sempre estamos às voltas com situações que exigem atitudes certas. Como enfrentar o dia-a-dia? Vem aí o Luiz Sayão com suas pérolas de sabedoria.", "25:06");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Provérbios 30 e 31 - Vida misteriosa, mulher maravilhosa", "d8e56c06-3cbc-4935-b748-ab9c012dc650","Episódio com o tema 'Vida misteriosa, mulher maravilhosa' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Provérbios 30 e 31. Chegamos no último estudo de Provérbios. Mais uma missão cumprida do programa Rota 66!  Luiz Sayão fecha esta série falando de: 'Vida misteriosa, mulher maravilhosa'. São os capítulos 30 e 31 de provérbios que terminam com um conselho surpreendente! William Shakespeare tem uma frase muito famosa que diz assim: Há mais mistérios entre o Céu e a Terra do que sonha a nossa vã filosofia. Se você pensa que sabe alguma coisa, cuidado. Confira nesta exposição a grandeza da vida até nos detalhes mais esquecidos.", "25:50");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Provérbios 19 e 20 - Será que existe razão para as coisas do coração?", "c231630a-06b9-43b1-8a35-ab9c012dc645","Episódio com o tema 'Será que existe razão para as coisas do coração?' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Provérbios 19 e 20. É o coração que faz o caráter, dizia o nosso poeta Eça de Queiroz. Vamos fazer um eletrocardiograma espiritual. Como anda a sua atitude para com o próximo? Seu comportamento em casa? Sua motivação? Seu coração determina a sua ação? Ou será que você faz tudo sem muita razão?", "24:22");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Provérbios 5, 6 e 7 - Antes que você caia, cuidado com um 'rabo de saia'", "b854f3e4-5026-4b95-a37b-ab9c012dc5a8","Episódio com o tema 'Antes que você caia, cuidado com um 'rabo de saia' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Provérbios 5, 6 e 7. É importante reconhecer que o nosso comportamento diário é algo de que teremos de prestar contas perante Deus. Você já pensou nisso antes? Traição e adultério, eu já ouvi dizer que quando um homem trai uma mulher perde 90% de seu caráter. Só não perde os outros 10% porque não existe homem 100%.", "25:38");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Provérbios 10, 11 e 12 - O Conselho é bom, e é de graça", "8fca6b2e-dc2b-4292-9985-ab9c012dc5aa","Episódio com o tema 'O Conselho é bom, e é de graça' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Provérbios 10, 11 e 12. Hoje, não se sabe falar porque já não se sabe ouvir, não é mesmo? Como é importante a gente saber se expressar, e isso no tempo certo. Foi um filósofo alemão que certa vez disse: Falar é uma necessidade, escutar é uma arte. Bom, para quem então deseja aprender sabedoria já viu que o assunto está no ouvir e no falar.", "25:25");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Eclesiastes 1 e 2 - Nada faz sentido", "608f6dcb-d7f4-4199-a2ac-ab9c012dc64d","Episódio com o tema 'Nada faz sentido' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Eclesiastes 1 e 2. Este livro do Antigo Testamento busca dar uma resposta à pergunta: Que proveito tem o homem com seu trabalho e com tanto saber? O que é melhor? Qual a vantagem que se leva? Seria tudo inutilidade e vaidade? Essas e outras perguntas iremos descobrir lendo essa literatura de sabedoria.", "24:55");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Eclesiastes 5 e 6 - Dinheiro, pra que dinheiro?", "b6802a2d-dc07-4220-9b36-ab9c012dc5bc","Episódio com o tema 'Dinheiro, pra que dinheiro?' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Eclesiastes 5 e 6. Quem acredita que o dinheiro faz tudo, costuma estar habituado a fazer qualquer coisa por dinheiro. Ah, Muita calma nesta hora. Dinheiro é como o adubo: só serve quando espalhado. Essa é uma questão que merece nossa atenção.", "25:58");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Eclesiastes 3 e 4 - Esta vida é um absurdo!", "83d6f56e-6f71-4c1a-bd50-ab9c012dc651","Episódio com o tema 'Esta vida é um absurdo!' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Eclesiastes 3 e 4. Neste episódio, o Luiz Sayão vai falar sobre o contra tempo de nossas vidas, quando somos pego de surpresa por algo não esperado. 'Esta vida é um absurdo'. Este será o tema de sua meditação nos capítulos 3 e 4 de Eclesiastes. A vida é uma pedra de amolar: desgasta-nos ou afia-nos, conforme o metal de que somos feitos, dizia o escritor Irlandês George Bernard Shaw. E você? Como reage as provações da vida? Assunto sério para a gente refletir agora.", "24:28");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Eclesiastes 7 e 8 - Sabedoria do dia-a-dia", "3dad2bef-39bd-4744-8031-ab9c012dc650","Episódio com o tema 'Sabedoria do dia-a-dia' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Eclesiastes 7 e 8. Você com certeza já se perguntou qual é o sentido da vida, certo? Já deve ter questionado se Deus deixou algo acontecer de errado, certo? Que no fundo mesmo, o negócio é aproveitar a vida enquanto é tempo, certo?", "24:34");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Eclesiastes 11 e 12 - Vivendo com juízo antes de chegar o juízo", "8f01890d-7634-4f73-af49-ab9c012dc654","Episódio com o tema 'Vivendo com juízo antes de chegar o juízo' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Eclesiastes 11 e 12. Na juventude os dias são curtos e os anos são longos; na velhice os anos são curtos e os dias longos. De uma foram ou de outra devemos aprender a desfrutar melhor do tempo que temos, não é mesmo? Vamos então para a meditação final em Eclesiastes com Luiz Sayão.", "23:41");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Eclesiastes 9 e 10 - Debaixo do sol não adianta esquentar a cabeça", "0af5452a-2418-497d-9842-ab9c012dc656","Episódio com o tema 'Debaixo do sol não adianta esquentar a cabeça' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Eclesiastes 9 e 10. Onde o medo está presente, a sabedoria não consegue estar, não é verdade? Se você anda preocupado, pensando nas contas a pagar e com medo do futuro, então fique colado nessa mensagem que foi preparada especialmente pra quem deseja viver um dia de cada vez.", "24:59");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Cântico dos cânticos 1, 2, 3 e 4 - Vem, morena, cantar comigo esta cantiga", "3a32ee7b-79b2-4b90-9296-ab9c012dc657","Episódio com o tema 'Vem, morena, cantar comigo esta cantiga' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Cântico dos cânticos 1, 2, 3 e 4. O amor está no ar! Neste episódio, vamos iniciar uma trilha que mexe com os nossos corações, Cântico dos cânticos de Salomão. Será uma viagem curta através deste livro poético. O Luiz Sayão vai comentar o livro mais sensual da Bíblia. O poema fala mais de emoções do que ideias racionais, exigindo uma sensibilidade especial do leitor. É um livro para aqueles que desejam saber ou lembrar-se do significado de estar apaixonado. Quem não gosta de ouvir uma história de amor? Então essa é sua vez. Vamos lá!", "23:34");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Cântico dos cânticos 4, 5, 6, 7 e 8 - Enfim sós", "c5f5b745-1f91-4f7f-8754-ab9c012dc658","Episódio com o tema 'Enfim sós' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Cântico dos cânticos 4, 5, 6, 7 e 8. Você vai ver que vale a pena esperar pelo amor verdadeiro apesar dos desencontros. Este livro revela algumas qualidades do amor entre um homem e uma mulher: autodoação, desejo e compromisso. O homem ama, porque o amor é a essência da sua alma. Por isso não pode deixar de amar. Ah! Como é bom amar! Vamos ouvir essa reflexão cheia de paixão.", "24:42");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Isaías 1 - Religião não; chega de religião", "751517cd-060a-46ea-ac1b-ab9c012dc673","Episódio com o tema 'Religião não; chega de religião' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Isaías 1. Como toda mensagem profética, Isaías ataca a superficialidade e superstição da nação que deixou de lado sua devoção ao Criador e Senhor da vida. Qual o grande problema da religião? Será que corremos algum risco em ignorar essa pergunta? Vamos conferir.", "25:02");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Isaías 38 e 39 - Muitas felicidades, muitos anos de vida", "663ddd8c-cf2f-4802-9dae-ab9c012dc683","Episódio com o tema 'Muitas felicidades, muitos anos de vida' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Isaías 38 e 39. Quem é que já não pediu por um milagre, hein? Como reagir a uma enfermidade que muda todos os nossos planos e expectativa de vida? É isso que vamos estudar agora. Fique com a gente.", "25:47");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Isaías 5 e 6 - Convocado para um momento complicado", "Isaías 5 e 6 - Convocado para um momento complicado","Episódio com o tema 'Convocado para um momento complicado' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Isaías 5 e 6. Você vai identificar uma parábola como sendo o juízo de Deus para o seu povo. A destruição de uma nação que não levou Deus a sério. E a visão que Isaías teve que mudou a sua vida. Você leva as coisas de Deus a sério? Acompanhe a experiência desse homem.", "24:41");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Isaías 9 e 10 - Um bebê que promete", "a4f36ff3-ae0c-4993-be50-ab9c012dc67a","Episódio com o tema 'Um bebê que promete' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Isaías 9 e 10. Chegando pra causar! Ah, o impossível pode acontecer, mesmo quando tudo diz para desistir ainda assim há uma promessa de vida. Você acredita nisso? Peço sua atenção para os próximos minutos onde vamos discutir a questão da ira divina e da hora divina.", "25:24");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Isaías 11 e 12 - O renovo brotará, a ecologia brotará", "3cf4508c-dad5-4704-b8ce-ab9c012dc67c","Episódio com o tema 'O renovo brotará, a ecologia brotará' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Isaías 11 e 12. Você é daqueles que quer tudo para ontem? Não tem muita paciência para esperar as coisas? E que quanto mais reza mais a assombração aparece? Então meu amigo, fique com a gente porque temos muito em comum. Deus nunca abandona um projeto ou mesmo jamais se esquece de alguém, não é mesmo? Pare um pouquinho o que está fazendo e acompanhe essa reflexão.", "25:14");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Isaías 24, 25, 26 e 27 - O julgamento global", "148b8497-7225-4b35-b631-ab9c012dc67f","Episódio com o tema 'O julgamento global' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Isaías 24, 25, 26 e 27. Você já percebeu que as notícias de tragédias e corrupções já fazem parte do nosso dia-a-dia? Será que estamos nos acostumando com a desgraça ou a insensibilidade tomou conta dos nossos corações? Essa é a advertência do profeta. Quer saber o que mais? Então confira essa reflexão do mestre Sayão.", "25:20");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Isaías 7 e 8 - Entre a guerra e a esperança da terra", "47080107-3d1c-45e1-a247-ab9c012dc67","Episódio com o tema 'Entre a guerra e a esperança da terra' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Isaías 7 e 8. Poderia um profeta anunciar o nascimento de Jesus setecentos anos antes do fato?  E quem seria a virgem que é mencionada na profecia? Dias difíceis e complicados. Agora é com você, pense um pouco: na hora do desespero e da crise, qual é a sua atitude?", "25:27");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Isaías 58, 59, 60 e 61 - Quem disse que não tem jeito?", "6319b8f8-3685-4c7c-8b65-ab9c012dc5f5","Episódio com o tema 'Quem disse que não tem jeito?' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Isaías 58, 59, 60 e 61. Estamos na série profetas do Antigo Testamento explorando o livro do profeta Isaías. É, tem momentos na vida da gente que parece que tudo está perdido e que nada poderá nos tirar do atoleiro em que estamos, não é mesmo?", "24:24");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Isaías 62, 63, 64, 65 e 66 - Julgamento final, salvação sem igual", "9cf8eda7-af0e-4ed4-8158-ab9c012dc5f2","Episódio com o tema 'Julgamento final, salvação sem igual' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Isaías 62, 63, 64, 65 e 66. Graças a Deus estamos de volta com mais um Rota 66.  Estamos na série profetas do Antigo Testamento e hoje um programa especial, encerrando mais uma etapa em nossa jornada no livro do profeta Isaías. O Luiz Sayão fala sobre: “Juízo final, salvação sem igual”. São os capítulos Sessenta e Dois até Sessenta e Seis. Estudando os profetas compreendemos que o mundo está nesta situação porque prefere viver em desobediência a Palavra do Criador. E você? O que espera do seu futuro? Confira a partir de agora o que acontecerá à aqueles que confiam nas promessas eternas.", "25:46");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Isaías 40, 41 e 42 - Salvação sem igual, um Deus especial", "3cc22f86-3841-4b59-b527-ab9c012dc687","Episódio com o tema 'Salvação sem igual, um Deus especial' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Isaías 40, 41 e 42. Num mundo de muitas superstições e religiões, as pessoas procuram algo apenas para garantir o sucesso e a prosperidade. Mas o significado da vida vai além de nossas meras crenças e rituais. Entenda melhor a questão com a apresentação de Luiz Sayão.", "25:09");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Isaías 36 e 37 - Um rei arrogante, que sofreu uma derrota humilhante", "d89a81eb-c550-4d40-ab12-ab9c012dc683","Episódio com o tema 'Um rei arrogante, que sofreu uma derrota humilhante' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Isaías 36 e 37. A arrogância precede a ruína, e o espírito altivo, a queda. É isso que aprendemos com a Bíblia. Você não concorda que a humildade é uma coisa estranha... No momento em que achamos que a temos... Já a perdemos, não é mesmo? Vamos à lição de hoje com o Sayão.", "24:42");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Isaías 34 e 35 - O sertão se alegrará, o deserto florescerá", "5b392927-e3d9-4cce-ae6f-ab9c012dc682","Episódio com o tema 'O sertão se alegrará, o deserto florescerá' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Isaías 34 e 35. Em nossa série profetas do Antigo Testamento, percorremos o livro do profeta Isaías em busca do significado da vida.  Apesar de tantos pessimismos e incertezas, ainda sonhamos com um futuro melhor, não é mesmo? O futuro têm muitos nomes. Para os incapazes o inalcançável, para os medrosos o desconhecido, para os valentes a oportunidade. Sentenciou Victor Hugo.", "26:16");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Isaías 54, 55, 56 e 57 - Nova esperança na nova aliança", "6c9db4f2-6b58-4954-9443-ab9c012dc5f2","Episódio com o tema 'Nova esperança na nova aliança' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Isaías 54, 55, 56 e 57. Nossa aventura chega na reta final e nesses momentos decisivos vamos conhecer um lado fantástico do Deus eterno. Seu cuidado, sua misericórdia, seu amor. Como é bom saber que não estamos sozinhos e nem abandonados a própria sorte, não é mesmo? Fique com a gente e confira mais essa lição.", "25:51");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Isaías 43, 44, 45, 46 e 47 - De volta para o futuro", "4f12ceb9-7887-4728-b6f4-ab9c012dc5f0","Episódio com o tema 'De volta para o futuro.' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Isaías 43, 44, 45, 46 e 47. As dificuldades destes capítulos misteriosos e um tema polêmico e controverso; quem criou o mal? Como pode um rei pagão ser escolhido por Deus? São alguns dos desafios do programa de hoje que você acompanha neste instante. Fique agora com o Luiz Sayão.", "26:04");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Isaías 28, 29, 30, 31, 32 e 33 - Ai, ai, ai, ai, ai. Ai da falsa esperança!", "f8203af6-fb39-4331-9bfb-ab9c012dc67f","Episódio com o tema 'Ai, ai, ai, ai, ai. Ai da falsa esperança!' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Isaías 28, 29, 30, 31, 32 e 33. Se não houvesse esperança, não estaríamos lutando, não é mesmo? Um conhecido religioso disse certa vez que o caminho da verdade é único e simples; o da falsidade, são vários e infinitos. Este é o ponto: aonde você coloca a sua esperança? No poder, nos negócios, nas riquezas? Em quem confiar na hora de um conflito? Preste atenção nessa meditação.", "25:40");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Jeremias 1 - Um chamado inesperado", "d9d5ad94-0915-494e-b960-ab9c012dc68d","Episódio com o tema 'Um chamado inesperado' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Jeremias 1. Hoje começaremos um estudo maravilhoso no livro de Jeremias. O Luiz Sayão pesquisou e investigou a vida desse jovem profeta e apresenta pra você, 'Um chamado inesperado'. Capítulo Um é fascinante e mostra a soberania de um Deus que tem controle de tudo. Será mesmo que Deus sabe o que está acontecendo com você? Se ele é tão poderoso assim, por que a vida está tão complicada?", "24:38");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Jeremias 16 e 17 - Esqueceram de mim", "d7c91c0c-5d04-4f8d-95d6-ab9c012dc692","Episódio com o tema 'Esqueceram de mim' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Jeremias 16 e 17. Um momento delicado na vida de um homem de Deus, sozinho no meio da multidão. É, a pior solidão é não ter amizades verdadeiras, concorda? Sozinho, mas não solitário, quem tem fé nunca está sozinho. Então fique na companhia do professor Sayão.", "25:22");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Jeremias 21, 22 e 23 - Agora, Deus é contra", "3789703c-4273-420e-a1a0-ab9c012dc5ff","Episódio com o tema 'Agora, Deus é contra' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Jeremias 21, 22 e 23.Atenção você que gosta de pensar e refletir sobre os caminhos da vida! Seguimos na série profetas do Antigo Testamento. Livro de Jeremias o profeta que não ficou calado diante das injustiças de seu tempo. Hoje o Luiz Sayão mostra que ás vezes Deus permite o mal para ser ouvido. Como distinguir a voz divina em meio a tantos profetas? Como saber o que é certo quando tudo está errado?", "25:23");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Jeremias 24 e 25 - Figo, furor e fogo", "1139f353-1ded-478c-9d12-ab9c012dc697","Episódio com o tema 'Figo, furor e fogo' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Jeremias 24 e 25. Estamos explorando o livro do profeta Jeremias que viveu uns Seiscentos anos antes de Cristo. O que podemos aprender com uma nação corrupta que foi destruída a centenas de anos atrás? Fique ligado e acompanhe essa lição.", "26:02");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Jeremias 7, 8, 9 e 10 - Imunidade para lamentar", "84dcaf79-4cfe-42a2-b6fc-ab9c012dc68c","Episódio com o tema 'Imunidade para lamentar' Apresentação: Luiz Sayão e Alberto  Veríssimo Com base em Jeremias 7, 8, 9 e 10. Você já percebeu como as pessoas têm facilidade para se apegar a crendices e filosofias vãs? O que é sagrado pode virar uma superstição? É o que vamos discutir.", "23:45");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Jeremias 34 e 35 - Até que a infidelidade os separe", "5114a588-e9b2-445d-bc29-ab9c012dc69b","Episódio com o tema 'Até que a infidelidade os separe' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Jeremias 34 e 35. Em meio ao caos de uma sociedade sem valores éticos o profeta encontra um grupo determinado a não se contaminar. Quem são? O que podemos aprender com eles? É o que vamos saber a partir de agora. Embarque nessa!", "25:05");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Jeremias 26, 27, 28 e 29 - Marcado para morrer", "f5617425-2ac0-4f03-9cdd-ab9c012dc697","Episódio com o tema 'Marcado para morrer' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Jeremias 26, 27, 28 e 29. Diferente, mas não esquisito. Este é o programa Rota 66 o caminho certo para conhecer a Bíblia. Esta é a série profetas do Antigo Testamento. Nossa aventura segue pelo livro do profeta Jeremias um homem que vivia nos padrões de Deus e não tinha vergonha de sua fé. O Luiz Sayão vai apresentar os capítulos Vinte e Seis a Vinte e Nove para falar exatamente sobre esse assunto: 'Marcado para morrer'.  É corajoso quem teme o que se deve temer, e não teme o que não se deve temer; dizia o poeta russo Tolstoi. Vamos juntos aprender mais desse homem que temia a Deus.", "24:57");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Jeremias 39 e 52 - A tragédia: Jerusalém em chamas", "7fa70188-6c49-4eb0-bcdf-ab9c012dc69a","Episódio com o tema 'A tragédia: Jerusalém em chamas' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Jeremias 39 e 52. Vamos apresentar os capítulos Trinta e Nove e Cinqüenta e Dois. Duas passagens que relatam os momentos finais da grande cidade sagrada. É, essa sim foi uma tragédia anunciada e ignorada. Vamos ficar atentos aos detalhes da vida?", "25:28");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Jeremias 2, 3, 4, 5 e 6 - Infidelidade não, traição não", "f2bba336-3f20-44a3-a1bb-ab9c012dc692","Episódio com o tema 'Infidelidade não, traição não' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Jeremias 2, 3, 4, 5 e 6. O que um comportamento pode revelar sobre nossa espiritualidade? O que muitas vezes toleramos e a Bíblia condena? Vamos conferir?", "24:41");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Jeremias 40, 41, 42, 43 e 45 - Tolice pura, cabeça dura", "d2631b10-7c4d-474a-925f-ab9c012dc69f","Episódio com o tema 'Tolice pura, cabeça dura' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Jeremias 40, 41, 42, 43 e 45. Entrando em campo para vencer qualquer desafio! Rota 66 um campeão de audiência segue com sua série profetas do Antigo Testamento explorando o livro do profeta Jeremias. Neste estudo, o Luiz Sayão fala do ‘Day After’ -  o dia seguinte da catástrofe. Vamos destacar os capítulos Quarenta até Quarenta e Cinco com o tema: “Tolice pura. Cabeça dura”. Depois da derrota e humilhação onde o povo foi levado como escravo, os remanescentes parecem que não aprenderam a lição. Persistir no erro é um absurdo, não é mesmo? O perigo de ser obstinado. Vamos conhecer?", "24:52");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Jeremias 36, 37 e 38 - Retido entre o rei e o rolo", "f01b7a66-d229-4ca0-8fa3-ab9c012dc69a","Episódio com o tema 'Retido entre o rei e o rolo' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Jeremias 36, 37 e 38. Não é fácil remar contra a maré, não é mesmo? Pior ainda quando a correnteza joga pesado, arrastando a tudo. Como permanecer firme? Venha descobrir junto com a gente.", "23:53");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Jeremias 11, 12, 13, 14 e 15 - Contrato ignorado, juízo anunciado", "c5e17c9f-0a02-4bc6-a676-ab9c012dc694","Episódio com o tema 'Contrato ignorado, juízo anunciado' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Jeremias 11, 12, 13, 14 e 15. Vamos conferir porque as coisas vão piorando para o povo que esquece de seu Criador. Povo em pecado, Deus irado. Julgamento de novo ao povo religioso. É hora de fazer uma reflexão para não cair em confusão.", "23:45");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Jeremias 46, 47, 48, 49, 50 e 51 - Sumindo do mapa", "e27872ea-fc49-4544-afe8-ab9c012dc69c","Episódio com o tema 'Sumindo do mapa' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Jeremias 46, 47, 48, 49, 50 e 51. Enquanto as nações vizinhas de Judá comemoravam o fim de Jerusalém, elas não poderiam imaginar que o juízo viria em dobro. Com toda injustiça, guerra e miséria, não queira fazer justiça do seu modo. Ah, como é bom esperar pela justiça divina. Acompanhe essa meditação.", "23:59");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Jeremias 18, 19 e 20 - Vai devagar, que o vaso é de barro", "5bd7829c-f83b-4576-ad33-ab9c012dc696","Episódio com o tema 'Vai devagar, que o vaso é de barro' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Jeremias 18, 19 e 20. Percorrendo as veredas do Rota 66 você encontrará o sentido da vida. Que postura devemos ter diante de uma sociedade permissiva e incrédula? Não desanime e nem se desespere! Vamos aprender com a experiência do profeta o segredo da vitória. Fique com a gente, a nossa aula está começando.", "24:43");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Lamentações 1 - Vou chorar. Desculpe, mas vou chorar", "9b7343f0-a748-4e33-be23-ab9c012dc6a5","Episódio com o tema 'Vou chorar. Desculpe, mas vou chorar' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Lamentações 1. Um verdadeiro poema sobre a confiança e misericórdia em um Deus que tem controle até nos momentos mais difíceis. O Valor da oração e a importância de esperar pela restauração divina. É o que você vai ouvir a partir de agora.", "24:45");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Ezequiel 1 - Feras sobre rodas", "c857466d-a05e-455a-855c-ab9c012dc6a9","Episódio com o tema 'Feras sobre rodas' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Ezequiel 1. Nossa expedição começa uma nova etapa na série Profetas do Antigo Testamento, agora explorando o livro de Ezequiel. Um homem que experimentou as mais estranhas visões num momento de caos. É o primeiro capítulo cheio de imagens e mistério. Quando tudo parecia confuso e sem esperança, brilha uma luz. Vamos conferir essa exposição?", "24:58");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Ezequiel 37 - Está só o osso", "6172764a-9940-4680-9e5b-aba30027e1f0","Episódio com o tema 'Está só o osso' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Ezequiel 37. Muitas vezes acontecem coisas que parecem não ter mais jeito, não é mesmo? Mas as vezes o milagre acontece.", "24:00");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Ezequiel 38 e 39 - Batalha fatal", "73bd88dc-6de2-418e-8b1c-aba30027e1f3","Episódio com o tema 'Batalha fatal' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Ezequiel 38 e 39. Será que a visão que o profeta tem diz respeito a terceira guerra mundial? Que caos seria esse? Onde varias nações entram em combate? Uma coisa é certa: os inimigos de Deus estão por todos os lados e você pode ser alvo desse conflito.", "23:45");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Ezequiel 33, 34, 35 e 36 - Recebendo o aviso prévio", "adf5702d-9a93-40d0-9b30-aba30027e1f0","Episódio com o tema 'Recebendo o aviso prévio' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Ezequiel 33, 34, 35 e 36. O tempo está acabando, resta muito pouco. O aviso está dado, o que fazer com a iminente destruição? E quanto a você, sabe quanto tempo ainda tem?", "24:47");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Ezequiel 4, 5, 6 e 7 - A divina tragédia", "cbf1e6f8-26c8-4e58-9638-ab9c012dc6ae","Episódio com o tema 'A divina tragédia' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Ezequiel 4, 5, 6 e 7. Parece mesmo que coisa ruim nunca vem sozinha, não é mesmo? A situação do povo que rejeitou a Deus é tão dramática que o profeta faz de tudo para chamar atenção. Qual é a melhor maneira de entender a mensagem de Deus?", "24:47");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Ezequiel 12, 13 e 14 - E vamos ao teatro", "94bb7cbd-681e-429e-b34c-aba30027e1f1","Episódio com o tema 'E vamos ao teatro' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Ezequiel 12, 13 e 14. Num mundo cheio de falsidades e artimanhas, como viver de maneira justa e honesta? Como saber se um profeta é verdadeiro e sua visão certa? Quer saber mais? Então acompanhe esta reflexão com o mestre Luiz Sayão.", "25:22");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Ezequiel 18 e 19 - Cada um paga a sua", "e9e2ef2b-026c-41f9-9eb0-aba30027e1eb","Episódio com o tema 'Cada um paga a sua' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Ezequiel 18 e 19. Será que uma maçã pobre pode estragar uma caixa toda? Será que esse ditado vale pra nossa realidade social? Você sabia que o nosso relacionamento com Deus é evidenciado pelo nosso relacionamento com o próximo? Como estamos vivendo diz muito de nossa fé. Confira neste estudo que já está começando.", "26:02");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Ezequiel 2 e 3 - Não dá pra sair fora", "047bdb28-a471-4a32-849e-ab9c012dc6af","Episódio com o tema 'Não dá pra sair fora'  Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Ezequiel 2 e 3. Por que será que o povo que conhece o criador é tão rebelde e teimoso? O grande desafio do profeta era denunciar a injustiça e a imoralidade do povo de Deus que agora estava vivendo em uma cidade pagã.", "26:42");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Ezequiel 25, 26, 27, 28, 29, 30, 31 e 32 - STJD - Superior Tribunal de Justiça Divina", "726c26e2-ad1c-4791-a9b1-aba30027e1ee","Episódio com o tema 'STJD - Superior Tribunal de Justiça Divina' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Ezequiel 25, 26, 27, 28, 29, 30, 31 e 32. Como é bom encontrar tudo no lugar e tranquilo, não é mesmo? Mas para isso muitas vezes precisamos trabalhar e exigir o que é de direito.  É o que vamos encontrar nos capítulos Vinte Cinco até Trinta e Dois do livro do profeta Ezequiel. O professor Luiz Sayão vai às barras do tribunal. 'STJD – Superior Tribunal de Justiça Divina'. Se você nunca teve que prestar contas à justiça, se prepare e arranje um bom advogado. Silêncio! A leitura dos autos vai começar.", "24:50");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Ezequiel 40, 41, 42, 43, 44, 45, 46, 47 e 48 - Templo maior", "c3ca5333-a48e-442a-b089-aba30027e1f2","Episódio com o tema 'Templo maior' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Ezequiel 40, 41, 42, 43, 44, 45, 46, 47 e 48. Depois de tudo o que aconteceu: erros, pecador, imoralidades, o povo quase se acabando, surge a esperança de um novo tempo. Que significado teria essa última visão do profeta?", "24:39");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Ezequiel 15, 16 e 17 - Ela não é mais minha pequena, que pena!", "3d15dbac-fd92-41c1-b807-aba30027e1f0","Episódio com o tema 'Ela não é mais minha pequena, que pena!' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Ezequiel 15, 16 e 17. Se você gosta de estudar a Bíblia é essa trilha que deve seguir, Rota 66. Muita aventura e criatividade para entender os mistérios dos livros sagrados. Em nossa série profetas do Antigo Testamento, chegamos aos capítulos 15, 16 e 17 de Ezequiel aonde o professor Luiz Sayão vai nos explicar porque Jerusalém é comparada a uma mulher. 'Ela não é mais minha pequena. Que pena!'. Este será o tema desta exposição tão importante. Cuidado com a ingratidão e orgulho, saiba compreender suas limitações. Não reconhecer a mão de Deus em tudo é colocar o pé na cova. Acompanhe.", "25:23");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Ezequiel 20, 21, 22, 23 e 24 - Será que pau que nasce torto morre torto?", "c1507aa5-33d6-482f-a658-aba30027e1ef","Episódio com o tema 'Será que pau que nasce torto morre torto?' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Ezequiel 20, 21, 22, 23 e 24. Por que será que muitas vezes insistimos no erro, no vício, no egoísmo e não admitimos que precisamos de ajuda? Uma reflexão muito importante no programa de hoje que você não pode perder. Peço a sua atenção por alguns minutos. Fique com a gente.", "25:29");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Ezequiel 8, 9, 10 e 11 - Não vejo a glória do Senhor hoje aqui", "1af843e0-cd46-4dd5-9a5d-ab9c012dc6b3","Episódio com o tema 'Não vejo a glória do Senhor hoje aqui' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Ezequiel 8, 9, 10 e 11. O que é mais importante pra você? O que tem valor na sua vida? Família? Carreira profissional? Seja lá o que for, é fundamental saber o que Deus pensa disso tudo. Acompanhe agora a meditação deste estudo.", "25:05");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Daniel 3 - Temperatura máxima", "6b250d98-b109-4f15-8eef-ab9c012dc609","Episódio com o tema 'Temperatura máxima' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Daniel 3. Até que ponto você sustenta a sua crença? Os amigos do profeta Daniel foram ao extremo por causa da fé. Como manter os valores morais e espirituais numa sociedade pagã cheia de crendices? É o que vamos acompanhar agora. Fique com a gente.", "23:40");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Daniel 10 - Batalha espiritual", "46c7354c-eef3-40c8-97e5-ab9c012dc6a9","Episódio com o tema 'Batalha espiritual' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Daniel 10. Já chegamos no penúltimo estudo no livro do profeta Daniel e hoje Luiz Sayão entra num tema muito atual: “Batalha espiritual”. É o capítulo 10 que traz uma experiência arrepiante vivida pelo profeta Daniel. Ouvimos muitas histórias de visões e revelações, mas como saber identificar a verdadeira? Será que existem espíritos dominando e influenciando uma região ou mesmo uma pessoa? Você não pode perder esse estudo! Acompanhe comigo.", "24:58");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Daniel 7 - Mundo animal", "faf831a3-c1cf-4edb-9d91-ab9c012dc6a6","Episódio com o tema 'Mundo animal' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Daniel 7. É com muita alegria que mais uma vez chegamos com o programa Rota 66 preparado especialmente pra você. Nossa expedição passa pelo livro do profeta Daniel que mostra como Deus tem um plano maravilhoso e nada escapa ao seu controle. O Luiz Sayão examina o capítulo 7 e explica o sonho do profeta. 'Mundo animal'. Tema de sua mensagem que descreve as figuras estranhas que representam as nações. Onde está a nossa esperança quando o futuro parece sombrio e assustador? Vivemos dias de contradições e incertezas. Em quem podemos confiar? Acorde para a realidade!", "24:14");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Daniel 4 - Uma história cabeluda", "eb0a35e6-8922-424d-9f31-ab9c012dc6a9","Episódio com o tema 'Uma história cabeluda' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Daniel 4. Nossa jornada segue pelo livro do profeta Daniel que está empolgante. Luiz Sayão preparou um comentário especial no capítulo 4 que mostra a prepotência que levou um rei à loucura. Você sabia que a razão está na fé? O que acontece com aqueles que se mantém arrogantes e se julgam mais entendidos que o Criador? Peço a sua atenção por alguns minutos. Acompanhe esta experiência horrível e tire suas conclusões.", "24:42");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Daniel 2 - Quando o sonho é real", "6f9e094d-cdc5-4621-96b3-ab9c012dc6a0","Episódio com o tema 'Quando o sonho é real' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Daniel 2. Cuidado! Não fique aí dormindo enquanto o mundo caminha a passos largos para o desconhecido. Se você acha que é um pesadelo viver neste mundo de intrigas e interesses, então fique de olhos e ouvidos bem atentos nesta reflexão. Será que há esperança quando o caos se estabelece? Acompanhe essa exposição.", "24:08");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Daniel 5 - A mão pesada no auge da balada", "3c619dc2-b146-4fdf-910a-ab9c012dc6a5","Episódio com o tema 'A mão pesada no auge da balada' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Daniel 5. Seguimos pela trilha do profeta Daniel, um livro que traz muitas revelações sobre o futuro. O  Luiz Sayão destaca o  capítulo Cinco com o tema: “A mão pesada no auge da balada”. O estudo deste episódio é uma festa, mas não está pra brincadeiras. Quantas coisas podemos aprender com o passado para evitar os mesmos erros? Num mundo onde o sagrado é desprezado e ridicularizado as consequências são inevitáveis. Quando você menos espera, a sentença do julgamento aparece. É o que acontece aqui. Veja como foi.", "25:19");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Daniel 11 e 12 - De volta para o futuro", "355ff7d7-bf39-4fa9-a4ce-ab9c012dc6a8","Episódio com o tema 'De volta para o futuro' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Daniel 11 e 12. Vamos para o último estudo no livro do profeta Daniel com o professor Luiz Sayão mostrando como entender uma profecia que fala do futuro de nossa existência. Tema desta meditação: 'De volta para o futuro'. É, como dizia George Orwell: Aquele que controla o presente, controla o passado. Aquele que controla o passado controla o futuro. Saber o que vamos enfrentar é se preparar com inteligência.", "23:39");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Daniel 1 - Firmeza não se põe na mesa", "bf31cc85-00b7-4eb7-93fc-ab9c012dc609","Episódio com o tema 'Firmeza não se põe na mesa' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Daniel 1. Pode aumentar o volume de seu rádio para se deliciar com mais um estudo do programa Rota 66. Em nossa série profetas do Antigo Testamento, o professor Luiz Sayão nos convida para uma emocionante aventura através do livro do profeta Daniel. Este é o Apocalipse do Antigo Testamento, uma mensagem cheia de mistérios e revelações do futuro. Tema desta aula inaugural: 'firmeza não se pões na mesa'. Um banquete preparado especialmente pra você no Capítulo Um de Daniel. O que podemos aprender com um grupo de jovens que são levados à força para um país estranho e distante, mas que mantém seus valores inegociáveis e suas convicções inabaláveis? Agora no rota 66.", "25:59");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Daniel 6 - Na hora da aflição, só um sossega leão", "cc40b075-7764-443b-8e85-ab9c012dc6a7","Episódio com o tema 'Na hora da aflição, só um sossega leão' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Daniel 6. Será que o bicho vai pegar neste episódio do Rota 66? Em nossa aventura pelo livro do profeta Daniel chegou a hora de mostra para o leão quem é o Rei. Luiz Sayão preparou uma reflexão no  capítulo Seis par quem está passando por lutas e tribulações: 'Na hora da aflição, só um sossega leão'. Este será o tema que tenho certeza vai ajudar muita gente que está num ‘mato sem cachorro’, ou pior; numa cova de leões! É, tem hora que a vida da gente parece um safári, temos que matar um leão por dia, não é mesmo? Deus sempre nos livrará dos ataques inimigos e outras injustiças?", "24:41");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Daniel 8 e 9 - É carneiro, é bode, que semana difícil!", "d911cf66-86b3-480f-a3c0-ab9c012dc6aa","Episódio com o tema 'É carneiro, é bode, que semana difícil!' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Daniel 8 e 9. Se você acha que as coisas estão difíceis, então se prepare! Deus é ordeiro e já tem tudo planejado, pois Ele pode. E você? Se tiver planejado sem Ele, vai dar bode o tempo inteiro. Entenda esse momento delicado da humanidade.", "25:05");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Oseias 1 - Um triângulo amoroso", "38576ce4-9c88-4ba4-b3cf-ab9c012dc673","Episódio com o tema 'Um triângulo amoroso' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Oseias 1. O casamento do profeta com uma mulher infiel é uma perfeita analogia do relacionamento de Israel com o seu Deus. Num mundo em crise e sem esperança, será que há razão para viver de modo coerente à fé? Vamos descobrir isso a partir de agora com Luiz Sayão.", "25:51");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Oseias 2 e 3 - Paixão incontrolável, amor imensurável", "e90f42af-ea48-474d-ac0b-ab9c012dc677","Episódio com o tema 'Paixão incontrolável, amor imensurável' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Oseias 2 e 3. Até onde vai o amor de um homem por sua mulher? O que será que podemos aprender com esse caso tão conturbado? Que história é essa de paixão e traição?", "24:11");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Oseias 4, 5, 6, 7, 8, 9 e 10 - Cidade alerta: O fim de Samaria", "Episódio com o tema 'Cidade alerta: O fim de Samaria' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Oseias 4, 5, 6, 7, 8, 9 e 10. A capital do reino do norte de Israel está vivendo de maneira irresponsável, seguindo a moda de seu tempo sem refletir suas consequências, apesar dos vários avisos de perigo. É, muitas vezes corremos o mesmo perigo quando não damos a devida atenção na Palavra de salvação do evangelho. Acompanhe agora essa reflexão.","small_description", "24:58");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Oseias 11, 12, 13 e 14 - Depois da dor, só o poder do amor", "deb63535-97f5-4dd5-9d5b-ab9c012dc66f","Episódio com o tema 'Depois da dor, só o poder do amor' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Oseias 11, 12, 13 e 14. São os capítulos finais que começa no Onze e vai até o Catorze. A advertência do profeta é bem prática pelo uso que faz de ilustração do cotidiano. As metáforas mais intensas derivam-se da experiência humana da intimidade. Relacionamento, é a palavra chave. Um bom assunto para refletirmos, não é mesmo?", "26:03");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Joel 1, 2 e 3 - O ataque dos insetos 4", "bbd6df3e-0b76-4bfb-90af-ab9c012dc66e","Episódio com o tema 'O ataque dos insetos 4' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Joel 1, 2 e 3. Até parece tema de filme de horror, não é mesmo? Você verá que é um momento que julgamento e advertência para o povo que deveria adorar e servir ao Criador. Conhecido como profeta do avivamento, Joel compreendeu que o arrependimento sincero é à base da fé e da restauração. Você é nosso convidado para essa reflexão com Luiz Sayão, acompanhe.", "26:14");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Amós 1 e 2 - Juízo geral, juízo local", "3ed81c7d-7876-4fbb-9160-ab9c012dc669","3ed81c7d-7876-4fbb-9160-ab9c012dc669", "27:09");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Amós 3, 4, 5 e 6 - O leão rugiu, a casa caiu", "719876d7-42b2-46a9-9b71-ab9c012dc669","Episódio com o tema 'O leão rugiu, a casa caiu' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Amós 3, 4, 5 e 6. Ah, você vai estremecer com o discurso do profeta que adverte o povo de Deus contra a arrogância e orgulho. É bom a gente fazer uma reflexão às vezes para não cairmos nos mesmos erros dos outros, não é mesmo? Quem está de pé, cuide-se para não cair! Se não o bicho vai pegar.", "25:23");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Amós 7, 8 e 9 - A hora do confronto", "f53ec840-45d2-4691-af94-ab9c012dc66f","Episódio com o tema 'A hora do confronto' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Amós 7, 8 e 9. Numa época de luxo e exploração aos mais pobres, Amós enfrentou com firmeza as críticas e manteve suas convicções. Sem muito mistério a mensagem do profeta é direta na consciência das pessoas. Cuidado! Querer ser o espertinho e levar vantagem em tudo já derrubou muita gente.", "25:43");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Obadias 1 - Irmão que ataca irmão terá maior condenação", "974c56e1-c984-49fc-bc5d-ab9c012dc66c","Episódio com o tema 'Irmão que ataca irmão terá maior condenação' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Obadias 1. Você já ouviu que da arrogância nasce o ódio e da insolência a arrogância, certo? É, a verdade bíblica é bem exata quando diz que a arrogância precede a ruína, e o espírito altivo, a queda. O que podemos aprender com um livro tão curto e breve? Acompanhe agora.", "24:25");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Jonas 1 e 2 - Este mar está para peixe", "32b10024-8c2d-4c96-b210-ab9c012dc66e","Episódio com o tema 'Este mar está para peixe' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Jonas 1 e 2. Se não houvesse esperança, não estaríamos lutando, não é mesmo? Um conhecido religioso disse certa vez que o caminho da verdade é único e simples; o da falsidade, são vários e infinitos. Este é o ponto: aonde você coloca a sua esperança? No poder, nos negócios, nas riquezas? Em quem confiar na hora de um conflito? Preste atenção nessa meditação.", "24:40");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Jonas 3 e 4 - Isso é que é avivamento!", "accbd777-5373-4112-8b89-ab9c012dc674","Episódio com o tema 'Isso é que é avivamento!' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Jonas 3 e 4. Há muita coisa para aprendermos com essa história se não ficarmos apenas olhando para o peixe e a teimosia do profeta. Há muito mais! Será que você não tem sido um Jonas fujão, querendo que as coisas sejam do seu modo?", "24:37");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Miqueias 1, 2, 3 e 4 - Já foi longe demais!", "9ace3029-192c-44d9-aa98-ab9c012dc678","Episódio com o tema 'Já foi longe demais!' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Miqueias 1, 2, 3 e 4. Vamos conferir que a corrupção e exploração não são novidade de nossos dias e que Deus está muito preocupado com a arrogância das pessoas que preferem obedecer e procurar seus interesses sem medir consequências. Tudo tem um tempo certo, agora é tempo de meditar e pensar.", "25:49");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Miqueias 5, 6 e 7 - Novos dias na era de Messias", "f1116912-bf32-4d70-a089-ab9c012dc671","Episódio com o tema 'Novos dias na era de Messias' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Miqueias 5, 6 e 7. Seria possível uma profecia falar de Cristo oito séculos antes do ocorrido? Numa sociedade arruinada com a corrupção em todos os níveis, haverá alguma esperança? Se você, assim como eu, gosto de descobrir mensagens misteriosas falando do futuro, então se liga nessa meditação.", "25:32");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Naum 1, 2 e 3 - A hora do pesadelo", "a636bf0b-c0c2-49e8-b5a9-ab9c012dc687","Episódio com o tema 'A hora do pesadelo' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Naum 1, 2 e 3. Qual o mistério que envolve esse livro de apenas três capítulos? Que lição podemos tirar de Naum para os tempos modernos? É o que vamos descobrir a partir de agora com mais uma aventura com o mestre Sayão. Acompanhe.", "24:39");


INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Sofonias 1, 2 e 3 - Desse dia não passa", "c6fd41dd-74fd-4cba-bded-ab9c012dc5f7","Episódio com o tema 'Desse dia não passa' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Sofonias 1, 2 e 3.Tudo o que a gente faz traz consequências, não é mesmo? Mas será que haverá mesmo um dia de juízo? Em meio a tantas tragédias, como ter esperança? Fique ligado nesta exposição do Sayão.", "23:35");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Ageu 1 - Quem vê casa não vê construção", "a9235c83-db50-458e-ae5c-aba300d18275","Episódio com o tema 'Quem vê casa não vê construção' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Ageu 1. A indiferença das pessoas com as coisas do Criador refletem uma preocupação mais profunda e preocupante: Qual o lugar de Deus em nossas vidas? Vamos juntos fazer uma reflexão sobre esse assunto? Acompanhe só.", "24:50");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Ageu 2 - Muitas felicidades, muitas bênçãos na vida", "eab81dff-41ec-4c95-ae78-aba300d18277","Episódio com o tema 'Muitas felicidades, muitas bênçãos na vida' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Ageu 2. Será que frequentar um lugar sagrado, fazer alguma oração e dar dinheiro para contribuir com a causa santa é o suficiente para se conseguir a felicidade? Onde está a verdadeira benção? Como ser feliz num mundo em conflito? Estes e outros assuntos você acompanha a partir de agora.", "25:41");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Zacarias 4, 5 e 6 - As visões de Zacarias - Parte 2", "c83212d3-5767-4260-9900-aba300d18278","Episódio com o tema 'As visões de Zacarias - parte 2' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Zacarias 4, 5 e 6. Nos próximos minutos vamos estudar a Bíblia e tenho certeza que seremos impactados! Rota 66 é a trilha que dá sentido a vida. Em série de estudos no livro do profeta Zacarias, o professor Luiz Sayão continua sua apresentação agora nos capítulos Quatro, Cinco e Seis: 'Sessão noturna: as visões de Zacarias – Parte 2'. Várias figuras surgem diante do profeta; o que significa cada símbolo? Problemas, dificuldades e lutas. E Deus? Onde está? Quando tudo parece confuso e sem solução, qual a razão de viver diante de tanto abuso? Fique com a gente.", "24:38");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Zacarias 1, 2 e 3 - Sessão noturna: as visões de Zacarias", "7378dade-2df8-4dcc-93de-aba300d18270","Episódio com o tema 'Sessão noturna: as visões de Zacarias' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Zacarias 1, 2 e 3. Não existe nada melhor do que ser surpreendido por uma notícia espetacular, não é mesmo? Ainda mais quando pensamos que não tem mais jeito. Esperança e vitória, é tudo o que precisamos. Confira nessa apresentação.", "24:20");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Zacarias 9, 10, 11, 12, 13 e 14 - A vinda do grande Rei", "ecdd8154-99ae-49e4-a6bf-aba300d18279","Episódio com o tema 'A vinda do grande Rei' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Zacarias 9, 10, 11, 12, 13 e 14. Você aí, pensando na vida! A viagem mais fascinante da vida continua aqui no Rota 66.  Em nossa série de estudos no livro do profeta Zacarias chegamos na parte final examinando os capítulos Nove até Catorze, onde o professor Luiz Sayão comenta o assunto: 'A vinda do grande Rei'. Se você anda como eu, preocupado com o destino do mundo e assustado com a onda de violência, então a conversa é com a gente mesmo. O que nos espera o futuro? Qual o motivo da nossa esperança? Embarque nessa emocionante aventura e descubra que a razão está na fé. Professor Sayão, explique isso.", "25:07");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Zacarias 7 e 8 - Jerusalém e Judá entre o jejum e a justiça", "189b5048-e139-4d73-9c15-aba300d18273","Episódio com o tema 'Jerusalém e Judá entre o jejum e a justiça' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Zacarias 7 e 8. Em nossa série de estudos no livro do profeta Zacarias convido você a acompanhar nossa reflexão nos capítulos Sete e Oito onde o professor Luiz Sayão apresenta o tema: 'Jerusalém e Judá entre o jejum e a justiça'.  Nesta jornada juntamos muitas justificativas jóias para o julgamento justo diante da jactância juvenil dos filhos de Jacó, um joio para os judeus já de joelho com o jugo a juízo de Jeová. Jamais fique jururu junto ao jazigo. Tire o pé da jaca. A fé é jubilosa. Junte-se a nós.", "25:14");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Malaquias 1 - Templo fechado", "4794af39-445b-4d49-b788-aba300d18275","Episódio com o tema 'Templo fechado' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Malaquias 1. É o primeiro capítulo de Malaquias. Se você acha que já sabe tudo e que a vida espiritual é uma rotina tediosa sem muitas emoções, então se prepare para conhecer um povo que tinha experimentado toda sorte de bênçãos e ainda assim questionava o poder do Criador. Vamos juntos em mais essa aventura.", "24:39");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Malaquias 2 - Trair e pecar é só começar", "1592ccd2-4ca8-4981-be2f-aba300d1827c","Episódio com o tema 'Trair e pecar é só começar' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Malaquias 2. É o capítulo Dois que apresenta um problema muito grave que hoje se tornou muito comum e aceitável pela nossa sociedade, divórcio. É, parece que já é normal ouvir que grandes homens estão envolvidos em escândalos e corrupções. O que será que Deus pensa sobre essas e outras mazelas produzidas por quem deveriam ser o exemplo?", "24:20");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Malaquias 3 e 4 - Abre agora a sua janela e vem ver o sol nascer", "d770e6b9-58a2-453e-9dd1-aba300d1827a","Episódio com o tema 'Abre agora a sua janela e vem ver o sol nascer' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Malaquias 3 e 4. Não existe nada mais maravilhoso que um dia de sol depois de uma noite tenebrosa, não é mesmo? Se você está andando pelo vale da sombra e amargando uma forte desilusão, temos uma boa notícia pra você: Há esperança! Quer saber mais? Acompanhe esta exposição com Luiz Sayão.", "25:09");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Mateus 26 - Traição e paixão", "f8f05a8e-5fad-4c08-96ff-aba300ee103f","Episódio com o tema 'Traição e paixão' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Mateus 26. Vamos para o capítulo Vinte e Seis de Mateus onde acontece o último encontro de Jesus com seus discípulos. A agonia dos momentos que antecedem sua paixão. Será que este era o único modo de Jesus salvar o seu povo? Como entender o comportamento de Judas e de Pedro? E o que dizer da atitude de Cristo? Ninguém consegue ficar indiferente diante deste fato histórico.", "24:59");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Mateus 13 - O reino Ilustrado", "58da7158-5c93-4a29-803f-aba300d1828a","Episódio com o tema 'O reino Ilustrado' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Mateus 13. Você sabe porque Jesus escolheu esta forma peculiar para falar de coisas eternas e espirituais? Você vai conhecer várias maneiras e figuras para retratar a vida espiritual, mas terá que fazer apenas uma escolha. Peço sua atenção pois o assunto é de extrema importância.", "25:08");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Mateus 5 - Uma espiritualidade surpreendente", "0d619b30-5991-4660-b3d8-aba300d18286","Episódio com o tema 'Uma espiritualidade surpreendente' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Mateus 5. Quem não ouviu falar do famoso sermão do monte? As bem-aventuranças são mais do que uma lição de moral ou um código de ética. Trata do perfil e caráter do cristão contrastando com os valores transitórios do mundo.", "25:09");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Mateus 21 - Aclamado, mas rejeitado", "f743b287-aa3e-4585-8459-aba300d1828d","Episódio com o tema 'Aclamado, mas rejeitado' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Mateus 21. Momentos decisivos na vida de Jesus que caminha a passos largos para cumprir tudo aquilo que estava escrito sobre ele. Ostentação, formalismo e religiosidade, são o que leva as pessoas à alienação. Como você recebe a Jesus? Na expectativa de um milagre ou na certeza de que ele é Senhor? Assunto delicado e muito importante para pensar. Acompanhe essa meditação com o mestre Luiz Sayão.", "26:28");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Mateus 10 - Missão quase impossível", "9459ee21-5966-4391-8c85-aba300d182a6","Episódio com o tema 'Missão quase impossível' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Mateus 10. Será que é fácil e simples seguir a Jesus? Será possível viver os princípios da fé e fazer a vontade de Deus em pleno século vinte um? Como enfrentar a intolerância e a oposição daqueles que ignoram os ensinamentos de Jesus? Vamos acompanhar mais essa meditação.", "25:04");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Mateus 6 - Uma espiritualidade diferente", "a92fb567-498d-4abe-a935-aba300d181e7","Episódio com o tema 'Uma espiritualidade diferente' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Mateus 6. Vivemos num tempo onde cada vez mais as pessoas buscam na religião uma forma para aliviar seus sofrimentos e resolver seus problemas, não é mesmo? Mas, qual a motivação certa para fazer essas coisas? O que está por trás da verdadeira religião? Comportamento religioso, o que isso pode nos ensinar? Esta é uma conversa de alta prioridade, acompanhe.", "25:15");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Mateus 2 - Nasce uma estrela", "9ab98f9d-3efc-43f5-a6d8-aba300d18281","Episódio com o tema 'Nasce uma estrela' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Mateus 2. Imagine como deve ter sido extraordinário aquela noite onde o brilho da estrela trouxe uma luz de esperança. Ah!.. Agindo Deus quem impedirá. Após várias profecias e muito tempo de espera, eis que o dia é chegado! Deus tem uma promessa e ela vai se realizar, não duvide.", "26:01");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Mateus 7 - Uma espiritualidade eficiente", "612f0f3e-02f6-4c48-a62c-aba300d18281","Episódio com o tema 'Uma espiritualidade eficiente' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Mateus 7. Este é um momento muito especial, Rota 66 é o programa de estudo Bíblico feito para quem gosta de aventura. A série Evangelho está apresentando o sermão do monte no livro de Mateus e hoje o professor Luiz Sayão termina sua meditação no capítulo Sete com o tema: “Uma espiritualidade eficiente”. Jesus está concluindo seu discurso com uma exortação à prática da fé. Atitude é tudo que se espera de um discípulo. Como anda sua vida de oração? Mero formalismo? E como reconhecer um falso e pretenso líder? É bom saber como se defender, então vamos a mais uma exposição do professor Sayão.", "25:00");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Mateus 22 - Perguntas capciosas, respostas maravilhosas", "5de83aaf-ab1a-4fd1-bce0-aba300ee0f9b","Episódio com o tema 'Perguntas capciosas, respostas maravilhosas' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Mateus 22. O programa Rota 66 existe para mostrar o único caminho que leva ao conhecimento da verdade! A série Evangelho está cada vez mais emocionante. Hoje o Luiz Sayão vai examinar o capítulo Vinte e Dois do livro de Mateus e provar que tem muita gente por aí que compreende, mas não entende nada de Bíblia. Tema deste estudo: 'Perguntas Capciosas, Respostas Maravilhosas'. Você está preparado para defender a sua fé? Será que sabemos exatamente o que é o Reino do Céus? Fique com a gente e descubra como a falta de conhecimento Bíblico pode nos prender à uma vida religiosa.", "24:18");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Mateus 1 - Um exame pré-natal", "69eb9f6a-4658-4aad-a168-aba300d1827e","Episódio com o tema 'Um exame pré-natal' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Mateus 1. Abrimos esta nova etapa do nosso desafio estudando o evangelho de Mateus capítulo Um com o tema: 'Um exame pré-natal'. Será uma viagem fantástica com muitos milagres, ensinos e mistérios. Você não pode ficar fora desta maravilhosa aventura, embarque agora com a gente e venha conhecer o maior acontecimento da história da humanidade. Como pode o Deus Todo-poderoso criador de todas as coisas se preocupar com pessoas tão fracas e simples? Acompanhe a meditação do professor Luiz Sayão.", "25:47");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Mateus 24 - Será o fim do mundo?", "1e0f93db-bd80-4af3-81c8-aba300ee0f9b","Episódio com o tema 'Será o fim do mundo?'  Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Mateus 24. Nossa expedição segue firme na série Evangelho, explorando o livro de Mateus que chega hoje no capítulo Vinte e Quatro que apresenta um sermão profético de Jesus. O professor Luiz Sayão comenta esta declaração enfática com o tema: 'Será o Fim do Mundo?'. Num mundo cheio de miséria, fome, guerras e terremotos, qual a explicação para tudo isso? É, do jeito que as coisas estão caminhando não restam dúvidas de que estamos nos aproximando da conclusão da história. Mas ainda dá tempo para se preparar melhor!", "24:34");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Mateus 27 - Nesta cruz lhe matarei", "d5406ae1-d9fc-4a24-b732-aba300ee103f","Episódio com o tema 'Nesta cruz lhe matarei' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Mateus 27. Quem é vivo sempre aparece! Não é mesmo? O programa Rota 66 entra na reta final do livro de Mateus na série Evangelho. Hoje o professor Luiz Sayão vai nos levar ao momento mais importante da história da humanidade, a crucificação do Filho de Deus. 'Nesta Cruz lhe Matarei' é o capítulo Vinte e Sete. Fortes emoções você vai experimentar com esta manifestação de profundo amor e devoção. Cristo foi um mártir da fé? Sua morte mostrou a frustração de um revolucionário? Quiseram matar um místico ou um profeta? Vamos subir no monte do Calvário e descobrir por que muitas vezes nos sentimos abandonado por todos e até por Deus?", "24:38");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Mateus 28 - Cristo já ressuscitou: Aleluia!", "3b5c0b61-bec1-4307-b254-aba300ee1041","Episódio com o tema 'Cristo já ressuscitou: Aleluia!' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Mateus 28. É com muita alegria que o programa Rota 66 completa mais uma etapa de sua jornada Bíblica! Encerramos hoje, na série Evangelho, nossa expedição no livro de Mateus capítulo Vinte e Oito. Tema escolhido para esta reflexão: 'Cristo já Ressuscitou, aleluia!' O professor Luiz Sayão fala de uma questão fundamental para a fé cristã e nossa esperança. O evento mais estupendo e portentoso do Universo. Declarou alguém com propriedade: 'Todo o drama lírico do Natal, toda a tragédia do Calvário, toda a epopéia das Missões seriam verdades escarnecedoras da alma humana, se não houvera Cristo ressuscitado.'  A vida não teria sentido algum se tudo terminasse na sepultura, não é mesmo?", "26:47");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Mateus 11 e 12 - Política da oposição", "a44f955c-9110-4ea1-8571-aba300d182a1","Episódio com o tema 'Política da oposição' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Mateus 11 e 12. Tem muita gente por aí prometendo uma vida mansa e muita mordomia para quem acreditar no evangelho, mas as coisas não são bem assim. Jesus mesmo disse que no mundo teríamos aflições e tribulações, não é mesmo? Quer ser um vencedor? Acompanhe como Jesus enfrentava seus adversários e vencia a oposição.", "24:02");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Mateus 4 - Uma tentação do diabo", "895ec074-f969-4da7-8bd4-aba300d18285","Episódio com o tema 'Uma tentação do diabo' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Mateus 4. Calma, não se assuste, este é um assunto que todos precisam entender para enfrentar as adversidades do dia-a-dia. Aceite as provações da vida com alegria, sabendo que elas farão de você uma pessoa melhor. É hora de assumir a atitude de vencedor para não cair no engano do tentador. Acompanhe essa reflexão do professor Sayão.", "24:03");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Mateus 17 - Uma missão do outro mundo", "9fc6bd87-6ad6-4599-b317-aba300d1828c","Episódio com o tema 'Uma missão do outro mundo' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Mateus 17. O professor Luiz Sayão nos convida a subir no monte para comentar essa maravilhosa revelação onde os discípulos são surpreendidos com um encontro sobrenatural! Uma coisa é certa, quem anda com Jesus sempre recebe uma luz para dissipar os medos e as dúvidas. Quer saber mais sobre o poder da fé? Então acompanhe essa exposição.", "26:07");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Mateus 23 - Quando a religião causa destruição", "dde7d173-bc66-48ff-b8a2-aba300ee0f9e","Episódio com o tema 'Quando a religião causa destruição' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Mateus 23. Você já percebeu que o programa Rota 66 está esquentando! É série Evangelho segue sua trilha explorando o livro de Mateus que chega ao capítulo Vinte e Três com um tema muito polemico: 'Quando a Religião Causa Destruição'. É sobre este assunto que o professor Luiz Sayão chama a nossa atenção. Será que existe algo tão danoso à fé dentro da religião? Por que Jesus teve vários conflitos com os religiosos de seu tempo? Acompanhe esta meditação para saber como evitar a tendência de se acomodar na vida espiritual.", "24:12");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Mateus 3 - Abram alas para o Rei", "34ebb410-69b1-48aa-8444-aba300d1827c","Episódio com o tema 'Abram alas para o Rei' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Mateus 3. É o início do ministério de Jesus que precisa passar pelo rio Jordão antes de oferecer perdão a aqueles que estão atolados no pecado e sem salvação. Qual a importância de Jesus em sua vida? A resposta a esta questão depende toda sua vida. Pare um pouco e pense na pessoa mais importante do mundo.", "25:28");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Mateus 18 - Irmão que perdoa irmão é humilde de coração", "d583bd21-c866-4ee7-a138-aba300d1828d","Episódio com o tema 'Irmão que perdoa irmão é humilde de coração' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Mateus 18. Chegando pra você na íntegra e sem nem corte, o programa Rota 66 uma aventura radical seguindo os passos do Mestre da Galiléia! A série Evangelho continua explorando o livro de Mateus um discípulo de Jesus que apresenta a vida de Cristo, o prometido de Israel, para o seu povo. O professor Luiz Sayão comenta hoje o capítulo Dezoito e traz o assunto: 'Irmão que perdoa irmão é humilde de coração'.  O líder indiano Mahatma Gandhi costumava dizer que o fraco jamais perdoa, e que o perdão é característica do forte. Esse é um dos mistério do cristianismo, vamos conhecer?", "24:46");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Mateus 19 e 20 - Perde tudo por dinheiro", "436c9184-d913-4547-bd21-aba300d1828b","Episódio com o tema 'Perde tudo por dinheiro' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Mateus 19 e 20. O romancista espanhol Miguel de Cervantes sentenciou: A riqueza, não se mede pelos bens que se possui, mas sim pelo bem que se faz. Investimento futuro, você precisa disso.", "25:02");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Mateus 14 - Quem vê cara não vê salvação", "e3612e6b-e7a9-4bf4-902b-aba300d18289","Episódio com o tema 'Quem vê cara não vê salvação' Apresentação: Luiz Sayão e Alberto  Veríssimo Com base em Mateus 14.Milagre mesmo é estar novamente em sua companhia trazendo mais um Rota 66 e a série Evangelho! Você que gosta de pensar e estudar então venha pela trilha do livro de Mateus hoje capítulo Catorze. O Mestre da Galiléia está fazendo muitos milagres e anunciando a chegada do Reino de Deus, mas muitas pessoas não percebem quem ele realmente é. O professor Luiz Sayão apresenta o estudo: 'Quem vê cara não vê salvação'. Será que esse Jesus é mais um milagreiro e oportunista ou estamos diante do único que tem autoridade e poder sobre a vida? Rejeita-lo ou segui-lo, você não tem outra opção. Confira nessa reflexão.", "25:17");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Mateus 15 e 16 - Da Galileia para o mundo", "83d55216-7872-448d-9c95-aba300d1828d","Episódio com o tema 'Da Galiléia para o mundo' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Mateus 15 e 16. Neste episódio, vamos atravessar a Palestina e encontrar Jesus de Nazaré fazendo maravilhas com um povo que não o esperava e nem desconfiava quem de fato era o Messias. O professor Luiz Sayão percorre um trecho difícil e traiçoeiro para explicar o que está acontecendo na vida de Jesus. 'Da Galiléia para o Mundo' este será o assunto. Reino do Céus, chaves do Reino, a vinda do Filho do Homem... O que significam estes nomes? Será que isso é tão importante para o meu futuro?", "25:51");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Mateus 25 - Extra! Extra! Chegou o dia J", "f9f54b58-59e1-42c2-ab6f-aba300ee103b","Episódio com o tema 'Extra! Extra! Chegou o dia J' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Mateus 25. Vivendo numa sociedade permissiva, nos acostumamos com a idéia que tudo é normal e aceitável, não é mesmo? Mas na vida nada ficará impune! O que se planta colhe! Juízo, Julgamento e Justiça, o seu dia vai chegar, se prepare. Saiba como, agora!", "25:47");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Mateus 19 - Entre marido e mulher, só Deus põe a colher", "411984ea-e01d-466a-8650-aba300d1828b","Episódio com o tema 'Entre marido e mulher, só Deus põe a colher' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Mateus 19. Alguém já disse que o casamento é como uma longa viagem em um pequeno barco a remo: se um passageiro começar a balançar o barco, o outro terá que estabilizá-lo; caso contrário, os dois afundarão juntos, certo? É, mas o melhor é quando Cristo está no barco. E o divórcio?... Essa é a questão.", "25:48");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Marcos 1 - O exorcista", "98ea7b17-7370-4b2a-87bf-aba300ee0fa6","Episódio com o tema 'O exorcista' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Marcos 1. Vamos iniciar uma nova etapa na Série Evangelho. Prepare-se para enfrentar uma das aventuras mais fascinantes do mundo! Abrimos nossa exposição no livro de Marcos, capítulo primeiro, com muita ação e determinação. 'O Exorcista': este será o tema do professor Luiz Sayão. Temos um inimigo que só quer matar, roubar e destruir. Mas só Jesus pode curar e renovar o desesperado. Estamos lidando com coisas do mundo espiritual, portanto muita atenção e cuidado.", "24:24");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Marcos 13 - Apocalipse já", "162b4bdb-2c63-40f6-85fe-aba300ee0fae","Episódio com o tema 'Apocalipse já' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Marcos 13. O final dos tempos, a vinda de Jesus Cristo, os terríveis acontecimentos que envolvem a volta do Senhor para resgatar a sua igreja de um mundo cada vez mais incrédulo, místico e materialista. O que você pensa do futuro? Quais são os seus planos? A maneira como conduz a sua vida determinará o seu destino. Os sinais estão cada vez mais evidentes! E você, onde estará?", "24:42");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Marcos 9 - Poder e Glória", "f40f89ff-e41f-4f16-953e-aba300ee1049","Episódio com o tema 'Poder e Glória' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Marcos 9. Todos gostaríamos de saber mais sobre detalhes da vida de Jesus aqui na terra, não é mesmo? Você já percebeu que a preocupação do evangelista é contar sobre a caminhada de Jesus até a cruz e a ressurreição? Esta é a chave de seu ministério, mas até os discípulos foram incapazes de entender seu plano de salvação.", "25:44");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Marcos 5 - Demônios, Doenças e Desespero", "1f3b5d44-3ca9-4e37-9de5-aba300ee1041","Episódio com o tema 'Demônios, Doenças e Desespero' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Marcos 5. Deprimido? Desiludido? Deixe isso com Deus! De agora em Diante o programa Rota 66 Desenvolve a Série Evangelho Deleitando-se no livro de Marcos, Destacamos o capítulo Cinco um Devocional Divinal. O Decano Luiz Sayão Descreverá com Destreza e Detalhadamente o Tema: 'Demônios, Doenças e Desespero'. Deparamos com um Deslumbrante Desafio Delicado e Doloroso. Vamos com Determinação e Disposição para Desbaratar todo Drama e Desassossego. Muita Diligência para Debelar Dúvidas, Devaneios e Desajustes. Sem Delongas para não Dormitar ou Distrair. Discorreremos o Discurso Dialético Diário rumo ao Desconhecido.", "25:13");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Marcos 6 - Desfazendo o mal-entendido", "d8af8eac-6105-4383-82e2-aba300ee1044","Episódio com o tema 'Desfazendo o mal-entendido' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Marcos 6. Você já parou para pensar por que Jesus não foi aceito em sua cidade e nem em sua família? A mensagem de Cristo ainda encontra muita resistência em nossa sociedade. Você acha que um milagre seria o suficiente para entender o que Deus está falando? Afinal, Quem é Jesus para você? Acompanhe esta exposição que fala da sua salvação.", "25:28");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Marcos 4 - Essa semente não mente", "2ce774fa-cfa4-4e39-a183-aba300ee0fa6","Episódio com o tema 'Essa semente não mente' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Marcos 4. É perturbador notar que o semeador plantou em cada tipo de solo, mas os resultados foram muito diferentes. Que semente era essa? Decida hoje se a sua vida será útil e frutífera começando a ouvir a mensagem do evangelho", "25:42");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Marcos 10 - Preparado para o pior prejuízo", "b94ca00f-f856-40f1-86ba-aba300ee1048","Episódio com o tema 'Preparado para o pior prejuízo' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Marcos 10. Um parágrafo particular provocando a privacidade pessoal. Pare! O patrimônio pode perecer. Pra que pisotear em picuinhas? Parodiar a patogenia? Pense e pratique a Palavra para permanecer de pé. Passemos para a proficiência profética producente. Preparado?", "26:44");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Marcos 14 - Afasta de mim este cálice", "274b12b5-93fc-4743-aed8-aba300ee104a","Episódio com o tema 'Afasta de mim este cálice' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Marcos 14. O que é suportar o desprezo e abandono de seus amigos? Às vezes precisamos passar por um vale escuro sem saber porque, não é mesmo? Jesus, porém, sabia o que precisava fazer para não nos deixar abandonados à própria sorte. Vamos entender um pouco mais sobre o sofrimento de Cristo.", "25:44");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Marcos 11 e 12 - Confronto direto", "71fc9507-c0f2-4825-978c-aba300ee104d","Episódio com o tema 'Confronto direto' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Marcos 11 e 12. A vida de Jesus chega no momento crucial! Ele é recebido como herói em Jerusalém, mas logo acontecem os primeiros tumultos. Como enfrentar oposição e administrar crises? Você sabe conduzir as coisas na sua vida? Como você lida com as críticas e até com as calúnias? Jesus resistiu e venceu seus adversários com sabedoria. Vamos aprender essa lição com quem soube viver.", "25:35");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Marcos 2 e 3 - Santa controvérsia", "4acd5431-1c3a-4b89-adfe-aba300ee103f","Episódio com o tema 'Santa controvérsia' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Marcos 2 e 3. Se você gosta de uma boa discussão e não deixa passar nada sem uma briguinha, então preste atenção nesta meditação. Por que é mais fácil dizer que todos os caminhos levam a Deus e que religião é coisa de alienado? Bom, como em casa onde não há pão, todos gritam e ninguém tem razão, é melhor conhecer a solução.", "25:23");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Marcos 7 e 8 - Entendendo o sinal da cruz", "28348e6c-35a1-4a6f-a8c2-aba300ee104d","Episódio com o tema 'Entendendo o sinal da cruz' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Marcos 7 e 8. As afirmações de Jesus se relacionam não somente a quem ele era, mas também àquilo que ele veio fazer no mundo; não somente às sua pessoa, mas também a sua missão; não somente a sua vida, mas também à sua morte. Você sabe o que significa tomar a cruz e seguir a Jesus? Seria um símbolo de proteção? Um amuleto? Mas afinal, que cruz é essa que todo cristão deve carregar?", "23:46");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Marcos 15 e 16 - A Paixão de Cristo", "e3eeab96-b310-46bf-be1b-aba300ee1055","Episódio com o tema 'A Paixão de Cristo' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Marcos 15 e 16. A morte de Jesus não foi o resultado de ações puramente humanas, pois fazia parte do Plano de Deus para a salvação da humanidade. Você sabia que ele realizou o desígnio de Deus para nossa salvação? E que aquela cruz era para você e para mim? A cruz ainda tem muito que dizer, você tem coragem de enfrenta-la?", "27:29");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Marcos 6 - Entre a fé viva e a religião morta", "99cc056b-d889-4c9b-bb27-aba300ee1045","Episódio com o tema 'Entre a fé viva e a religião morta' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Marcos 6. Para você o que significa Religião? Ir à igreja, desejar ir para o céu ou deixar para Deus resolver tudo? Existe algum valor em seguir uma religião? O que acontece com as pessoas mais simples que conseguem receber um milagre em suas vidas?", "25:47");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Lucas 2 - Menino Prodígio", "411c35cb-cec8-44be-8105-aba30117a3df","Episódio com o tema 'Menino Prodígio' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Lucas 2. Numa sociedade mergulhada em desespero e sofrimento, sem razão para viver de modo justo e feliz, surge a única esperança da humanidade; Jesus de Nazaré! Ele que mudou o mundo quer transformar sua vida também. Vamos aos fatos.", "25:45");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Lucas 17 - Enxergando o invisível", "6eaa51fa-01cd-49bd-ab76-aba30117a3ed","Episódio com o tema 'Enxergando o invisível' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Lucas 17. Você sabe o que é Reino de Deus? O que escândalo tem a ver com perdão? Vamos conferir juntos?", "24:41");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Lucas 9 - Quem é Jesus?", "acaa31e2-7d14-4d2c-9397-aba30117a3fd","Episódio com o tema 'Quem é Jesus?' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Lucas 9. Sim, já falamos muito sobre ele, todo mundo tem uma opinião clara a respeito do assunto, mas lendo as páginas sagradas descobrimos um Jesus maravilhoso e surpreendente! A partir de agora você vai saber um pouco mais sobre o prometido de Deus.", "25:21");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Lucas 18 - Tudo pelo Reino", "9797aa0e-ad20-45bb-926a-aba30117a418","Episódio com o tema 'Tudo pelo Reino' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Lucas 18. Você já pensou na importância deste acontecimento? Vamos ver que Jesus apresenta o reino de forma prática e concreta. Esta realidade começa, de fato, com um compromisso pessoal. Você está preparado para assumir este status?", "23:09");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Lucas 15 - Dois filhos correm risco", "6714c044-92b5-43e8-8017-aba30117a3e7","Episódio com o tema 'Dois filhos correm risco' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Lucas 15. Você vai se emocionar com essa demonstração de amor incondicional. As cenas a seguir caso tenha qualquer semelhança com a vida real, não é mera coincidência. Fique com a gente e descubra como superar uma crise familiar.", "22:18");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Lucas 24 - Vida que nasce na morte", "e5cf8af2-bd3e-4738-a0f1-aba30117a3fb","Episódio com o tema 'Vida que nasce na morte' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Lucas 24. Vai começar a maior aventura de sua vida! O programa Rota 66! Nossa jornada pelo Evangelho de Lucas chega na etapa final explorando o capítulo Vinte Quatro onde o professor Luiz Sayão preparou o tema: 'Vida que Nasce na Morte'. Você vai se emocionar com o maior acontecimento da história que abalou a humanidade e transformou o mundo. A ressurreição de Jesus, suas evidências e consequências. O desespero acabou, o medo passou, Ele venceu a morte! Essa é a nossa esperança, será a sua também?", "25:21");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Lucas 8 - Há poder em suas palavras", "03be01b9-9d96-46ae-aa3b-aba30117a3eb","Episódio com o tema 'Há poder em suas palavras' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Lucas 8. Não se pode entender a mensagem do evangelho sem antes compreender a parábola do semeador. Você já reparou como custa para uma semente germinar? Assim é a vida, às vezes parece que Deus demora em agir e responder uma oração, não é mesmo? Vamos conferir juntos mais essa aventura?", "25:15");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Lucas 6 - Na contra mão da religião", "c2be4078-97cc-4223-883b-aba30117a3e4","Episódio com o tema 'Na contra mão da religião' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Lucas 6. O homem pode ignorar que tem uma religião, como pode também ignorar que tem um coração; mas sem religião e sem coração, não pode viver; Dizia o pensador Russo Leon Tostoi. Mas o que é religião? Fanatismo, Fuga da realidade? É o que veremos.", "24:49");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Lucas 12 - Todo cuidado é pouco", "73bdefea-151e-4903-a41c-aba30117a3fb","Episódio com o tema 'Todo cuidado é pouco' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Lucas 12. Quantas vezes você já não disse que pensaria na igreja mais tarde, hein? Será que podemos levar a vida de qualquer jeito? Acredite amigo! O juízo de Deus existe e está bem perto, preste atenção.", "24:41");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Lucas 16 - Dinheiro, Sexo e Poder", "f250342a-e123-4963-8ada-aba30117a40e","Episódio com o tema 'Dinheiro, Sexo e Poder' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Lucas 16. Qual é a sua maior prioridade nesta vida, hein? O que tem valor de verdade pra você? O que faz com que se levante cedo, corra o dia todo, enfrenta transito, chega tarde em casa...Será que estamos construindo um futuro ou apenas correndo atrás do vento? Pense um pouco.", "24:20");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Lucas 21 e 22 - A hora final", "2c3f04bf-47b8-42aa-99b9-aba30117a3f0","Episódio com o tema 'A hora final' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Lucas 21 e 22. É bom começar a se preparar, os dias estão passando rápido demais e você não pode adiar mais! Você não vai querer ficar para trás quando o Senhor Jesus voltar, não é mesmo? Então fique atento! Os sinais da sua vinda mais  se mostram cada vez...", "25:23");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Lucas 13 e 14 - Decepcionado com Deus", "bee051a5-5d4e-40ca-88bf-aba30117a406","Episódio com o tema 'Decepcionado com Deus' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Lucas 13 e 14. Quem não ficou frustrado, desanimado e desiludido com os desencontros da vida? Quantos sonhos perdidos, projetos ruídos e planos perdidos, não é mesmo? É nestas horas que questionamos a ação de Deus. Por isso eu convido você a acompanhar esta reflexão com muita atenção.", "24:45");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Lucas 10 - Missão urgente, resultado surpreendente", "6c037bfa-8465-4bcc-baef-aba30117a3e8","Episódio com o tema 'Missão urgente, resultado surpreendente' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Lucas 10. O que acontece com quem ouve a mensagem do evangelho de Cristo e fica indiferente? Vamos analisar vários assuntos: o juízo de Deus; a queda de Satanás; o poder da fé para pisar serpentes; a autoridade para expulsar demônios. Fique com a gente, você vai descobrir coisas novas. Vamos lá?", "23:44");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Lucas 7 - A vez dos discriminados", "298a7471-de61-4f3d-b562-aba30117a347","Episódio com o tema 'A vez dos discriminados' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Lucas 7. Sociedade injusta e seletiva não é assunto moderno, já nos tempos de Jesus a situação era crítica. Triste época ! É mais fácil desintegrar um átomo que um preconceito; costumava dizer o físico Einstein. Você já pensou como resolver essa questão? Acompanhe esta explicação.", "25:42");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Lucas 19 e 20 - Investimento a longo prazo", "6db27a2f-6b43-4ef3-8b03-aba30117a410","Episódio com o tema 'Investimento a longo prazo' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Lucas 19 e 20. Quantos sacrifícios fazemos para conquistar aquele sonho que nos trará mais segurança e conforto, não é mesmo? Não importa quanto custa, empenhamos toda força para realiza-lo. Mas, e quando o assunto é vida eterna? Será que estamos investindo certo?", "24:44");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Lucas 1 - Bendito é o fruto do vosso ventre: Jesus", "463cd721-0996-4cb3-b387-aba30117a3df","Episódio com o tema 'Bendito é o fruto do vosso ventre: Jesus' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Lucas 1. Qual a importância da participação de Maria no nascimento do Salvador do mundo? Como Deus escolhe agir para fazer cumprir os seus propósitos? Estamos no ponto central da história humana, vamos entender este mistério? Fique com a gente.", "25:10");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Lucas 11 - Quando a religião tem pouca fé", "d3304181-da43-4adb-bdf7-aba30117a3e6","Episódio com o tema 'Quando a religião tem pouca fé' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Lucas 11. Mais uma vez encontramos o grande debate dos evangelhos; o ensino de Jesus contra as rígidas tradições religiosas do homem. Por que será que as pessoas preferem se submeter a regras a andar por fé? Existe esta possibilidade? Cuidado!", "24:26");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Lucas 3 e 4 - Quando o divino se Tornou humano", "f4f55a92-2f6b-40d1-9998-aba30117a3e2","Episódio com o tema 'Quando o divino se Tornou humano' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Lucas 3 e 4. Este é o maior mistério de todos, Deus vivendo como a gente. Mais uma razão para confiarmos no Criador; Ele conhece a fundo todas as nossas necessidades e dificuldades, pois já experimentou a miséria deste mundo. Acompanhe só.", "25:45");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Lucas 4 e 5 - O Jesus que eu nunca conheci", "1e100047-a916-4372-95bd-aba30117a3ed","Episódio com o tema 'O Jesus que eu nunca conheci' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Lucas 4 e 5. Parece inacreditável, mas tem muita gente hoje em dia que vive da mesma maneira que os conterrâneos de Jesus; ouvem, mas não escutam; olham, mas não enxergam. Tão perto, porém tão longe. Por que será que as pessoas custam a aceitar a mensagem do evangelho? Fique com a gente! Vamos conferir?", "24:28");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Lucas 22 e 23 - Pena de morte para o Senhor da vida", "0be886cc-e008-4fbb-a5d0-aba30117a3ee","Episódio com o tema 'Pena de morte para o Senhor da vida' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Lucas 22 e 23. Um caminho estreito, apertado e difícil, mas que leva ao destino da vida. A série Evangelho de Lucas examina os capítulos Vinte Dois e Vinte Três que narram os últimos momentos do ministério terreno de Jesus até sua morte de cruz. O professor Luiz Sayão fala sobre: “Pena de Morte para o Senhor da Vida”. Por que Deus permitiu tanto sofrimento e dor para o seu único Filho? Quantas vezes nos queixamos e murmuramos quando enfrentamos o sofrimento. Por que de tudo isso?", "24:44");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Lucas 19 e 20 - Nem tudo vai bem na viagem para Jerusalém", "f8aed1f3-a46a-46da-94d5-aba30117a3ec","Episódio com o tema 'Nem tudo vai bem na viagem para Jerusalém' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Lucas 19 e 20. Assunto que preocupa todo ser humano; Qual o significado da parábola contada por Jesus? O que acontece depois da morte? Por que as pessoas agem de modo absurdo e irracional diante da realidade? O que causa desespero e desgraça no coração das pessoas?", "24:24");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("João 10 - Segurança máxima", "27e50874-bf2a-4d3b-a9b1-aba300ee105c","Episódio com o tema 'Segurança máxima' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em João 10. Graças a Deus estamos aqui mais uma vez para percorrer a trilha do Rota 66 com a série Evangelho! Embarque agora com a gente para mais uma aventura no livro de João e venha viver fortes emoções com o capítulo Catorze.  O Luiz Sayão preparou uma reflexão na dose certa para hoje. “Tristeza por favor vá embora”, este é o tema do programa. Quantas decepções e desilusões não passamos na vida, não é mesmo? Como ser forte nos dias maus? Qual o segredo para vencer a apatia e o medo?", "26:44");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("João 12 - Quem é Jesus?", "82eab71c-2bb2-4513-a200-aba300ee105d","Episódio com o tema 'Quem é Jesus?' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em João 12. Aventura radical e muita emoção na série Evangelho! Analisando o livro de João, vamos observar o capítulo Doze  com o professor Luiz Sayão para entender um pouco mais sobre o filho de Deus. 'Quem é Jesus?'. Todos têm uma opinião a respeito de Cristo, mas numa época cheia de incredulidade, materialismo e ceticismo como reagir diante do fato de que ele é o que diz ser? Vamos juntos conhecer de perto aquele que é a razão da vida.", "26:25");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("João 21 - Celebrando a recuperação", "f489c038-6020-421f-bc6d-aba300ee1063","Episódio com o tema 'Celebrando a recuperação' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em João 21. Se você acha que sua vida caiu na rotina e está um tédio, é melhor prestar atenção porque é assim que Jesus costuma surpreender trazendo uma nova perspectiva de futuro. Só o amor de Jesus pode curar qualquer um de qualquer situação. Confira ouvindo mais essa meditação.", "22:41");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("João 15 - Uma safra diferenciada", "66189e42-5f19-43b2-8605-aba300ee1062","Episódio com o tema 'Uma safra diferenciada' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em João 15. Que alegria! Chegando mais um programa Rota 66 uma viagem ao verdadeiro sentido da vida. A série Evangelho continua sua jornada no livro de João e neste episódio você vai admirar a beleza do capítulo Quinze onde o professor Luiz Sayão comenta sobre o verdadeiro fruto cristão. 'Uma Safra diferenciada', é o tema de nosso estudo. Se você só tem ‘pepinos’ para resolver, ou se sua vida é um ‘abacaxi’, é melhor não falar ‘abobrinhas’ e procurar a melhor maneira de produzir boas coisas. Quer saber como?", "24:22");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("João 4 - Quebrando todo preconceito", "877e07b7-197b-49b3-818e-aba300ee1051","Episódio com o tema 'Quebrando todo preconceito' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em João 4. Se você tem dificuldades em entender quem, e como é Deus, esta é a oportunidade para conhece-lo. Chega de superstição e de ouvir palpites que dizem que todos os caminhos levam a Deus, chega de confusão! Jesus apresenta uma afirmação contundente que Ele é o único. Pra que complicar o que pode ser simples, a fé em Jesus é suficiente gente! Veja só.", "24:18");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("João 1 - Ele era Deus", "b475d7b1-7bda-4614-abff-aba300ee1052","Episódio com o tema 'Ele era Deus' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em João 1. Você acha impossível conhecer a Deus? Será que ele está muito distante? Ou seria um assunto abstrato para poucos? Fique com a gente para descobrir quem é esse Jesus.", "23:12");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("João 14 - Tristeza, por favor, vá embora", "7098da40-e7b5-488b-a111-aba300ee1074","Episódio com o tema 'Tristeza, por favor, vá embora' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em João 14. Graças a Deus estamos aqui mais uma vez para percorrer a trilha do Rota 66 com a série Evangelho! Embarque agora com a gente para mais uma aventura no livro de João e venha viver fortes emoções com o capítulo Catorze.  O professor Luiz Sayão preparou uma reflexão na dose certa para hoje. 'Tristeza por favor vá embora', este é o tema do programa. Quantas decepções e desilusões não passamos na vida, não é mesmo? Como ser forte nos dias maus? Qual o segredo para vencer a apatia e o medo?", "24:55");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("João 20 - A verdade da ressurreição", "9638fcf5-7857-42cd-b0af-aba300ee1061","Episódio com o tema 'A verdade da ressurreição' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em João 20. Quantas pessoas questionaram o fato de Jesus ressuscitar? Como entender e explicar que a morte não é o fim? Todos os grandes reis e heróis do passado tem um mausoléu ou uma tumba. Jesus é o único com uma sepultura vazia. Isso ninguém pode negar.", "25:31");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("João 11 - Morte e vida na Palestina", "68e56450-f4c7-4271-b7a4-aba300ee1058","Episódio com o tema 'Morte e vida na Palestina' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em João 11. Se a caminhada nesta vida está te matando aos poucos é porque você não está na trilha certa. Vivendo num mundo repleto de dramas e doenças, com certeza precisaremos aprender esta lição de Jesus.", "23:43");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("João 7 - Festa de vida ou morte", "0de08558-2b0e-4c2d-8c37-aba300ee1055","Episódio com o tema 'Festa de vida ou morte' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em João 7. Seguimos com a série Evangelho, e nossa expedição está examinando o livro de João, capítulo 7. O professor Luiz Sayão explica mais um evento da vida de Jesus com o tema: 'Festa de vida ou morte'. Você já reparou como Jesus gostava de participar de festas e reuniões? Cristo quer tirar a monotonia e trazer razão e alegria para sua rotina. Quem experimenta a água da vida enfrenta qualquer deserto.", "24:26");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("João 2 - Vinho, festa e dinheiro", "0b379b6f-e895-4535-9b58-aba300ee104c","Episódio com o tema 'Vinho, festa e dinheiro' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em João 2. O primeiro milagre registrado de Jesus foi num casamento, você sabia disto? Teria sido meramente mais um caso ou o seu significado tem implicações teológicas? Qual a relação de Jesus com Maria sua mãe? Se você busca a felicidade, é melhor ter certeza de que ela não vai acabar. Vamos conferir?", "24:28");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("João 17 - Está na hora de orar", "4726f2ee-734a-44d4-887f-aba300ee1063","Episódio com o tema 'Está na hora de orar' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em João 17. Bom, se Jesus tinha o hábito de orar constantemente, então deve ter um poder fantástico nesta prática. Você tem dificuldades para orar? Talvez não faça sentido pra você, então fique com a gente em mais um estudo.", "24:28");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("João 9 - Por que nasci assim?", "090bd9de-0683-46ed-a9ac-aba300ee105f","Episódio com o tema 'Por que nasci assim?' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em João 9. A trilha dos mistérios e do desconhecido para quem procura a vida! Nossa jornada segue pela série Evangelho, estamos na etapa do livro de João hoje capítulo 9. O professor Luiz Sayão chama a nossa atenção para um tema muito presente em nosso dia-a-dia: 'Por que Nasci Assim?'. Você já se fez esta pergunta? Quantas pessoas não se sentem culpadas por alguma coisa? Ou estão insatisfeitas e inconformadas com o inesperado? Vamos conferir agora que nada acontece por acidente, tudo tem um propósito.", "25:08");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("João 6 - Pão para quem tem fome", "82d8ca96-83ea-4021-8321-aba300ee1056","Episódio com o tema 'Pão para quem tem fome' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em João 6. A série Evangelho oferece o capítulo Seis que vai deixa-lo de água na boca! O professor Luiz Sayão preparou um tema apetitoso: 'Pão para quem tem fome'. Se você anda insatisfeito, com uma sensação de vazio, ciscando em todo lugar sem encontrar o que alimenta a sua alma, então chega de experimentar o gosto amargo da desilusão sem o pão da salvação. Vamos seguir a receita do mestre da Galileia para uma dieta perfeita de vida.", "23:42");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("João 16 - O Poder do Espírito", "fea518df-8ca4-4ad2-9252-aba300ee105e","Episódio com o tema 'O Poder do Espírito' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em João 16. Você sabia que sem a ação do Espírito Santo não existe vida cristã e a conversão seria algo impossível? É, mas tem muita gente sincera que pensa errado sobre esse tema. Está na hora de acabar com essa confusão, não é mesmo? Fique com ligado e confira mais essa.", "25:25");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("João 5 - Tal Pai, tal Filho", "146abdc1-601a-462c-a9b9-aba300ee1054","Episódio com o tema 'Tal Pai, tal Filho' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em João 5. Se você tem dificuldades em entender quem, e como é Deus, esta é a oportunidade para conhece-lo. Chega de superstição e de ouvir palpites que dizem que todos os caminhos levam a Deus, chega de confusão! Jesus apresenta uma afirmação contundente que Ele é o único. Pra que complicar o que pode ser simples, a fé em Jesus é suficiente gente!", "26:08");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("João 8 - Liberdade, liberdade, abre as asas sobre nós", "3d2dea13-72a6-4b77-991e-aba300ee1059","Episódio com o tema 'Liberdade, liberdade, abre as asas sobre nós' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em João 8. Nossa jornada segue pela série Evangelho. Estamos explorando o livro de João e vamos até o capítulo 8, onde o professor Luiz Sayão te apresentará uma história de perdão e amor. Nosso assunto será: 'Liberdade, liberdade, abre as asas sobre nós'. Muitas vezes vivemos debaixo de muita pressão, sem rumo, sem direção. Como encontrar a liberdade num mundo de falsidade? Acompanhe mais esta reflexão.", "26:22");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("João 13 - Uma história com pé e cabeça", "3aa48682-e0db-470d-a3d5-aba300ee1059","Episódio com o tema 'Uma história com pé e cabeça' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em João 13. É, tem gente que é, ou ruim da cabeça ou doente do pé. Saúde espiritual é o que interessa. Egoísmo, arrogância e orgulho são alguns dos obstáculos para a vida cristã, certo? O que será que nós não precisamos fazer para ser de Jesus? É o que vamos descobrir agora.", "26:00");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("João 3 - Reencarnar ou renascer: eis a questão", "968013f4-6f5b-4305-b874-aba300ee1056","Episódio com o tema 'Reencarnar ou renascer: eis a questão' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em João 3. A série Evangelho segue explorando o livro de João destacando o capítulo Três, onde o professor Luiz Sayão apresenta um assunto extremamente importante: 'Reencarnação ou Renascer, eis a questão'. Você já ouviu falar de vidas passadas? De onde surgiu essa idéia? Sedrá que só temos uma vida para ser vivida? E depois? Um Doutor em religião foi conversar com Jesus sobre o ‘sobrenatural’. Acompanhe esse diálogo e conheça mais sobre a importância da conversão.", "23:26");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("João 18 e 19 - Julgamento e morte do Rei", "8ba7ffec-9724-4ca5-97ac-aba300ee1060","Episódio com o tema 'Julgamento e morte do Rei' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em João 18 e 19. Você também anda revoltado com coisas injustas que acontecem em nossa sociedade? Por que será que o poder corrompe tanto? Será que não tem mais jeito? Acompanhe essa exposição e tire sua conclusão.", "25:06");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Atos 9 - Virada Radical", "be820669-1a62-4c30-a2ef-aba30117a402","Episódio com o tema 'Virada Radical' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Atos 9. A série Evangelho segue com o livro de João, estudando o capítulo Treze.  O professor Luiz Sayão apresenta, 'Uma História com Pé e Cabeça'. Este será o assunto desta reflexão. Egoísmo, arrogância e orgulho são alguns dos obstáculos para a vida cristã. O que será que nós não precisamos fazer para ser de Jesus?", "25:14");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Atos 23 - Marcado para morrer", "8dc6bd4b-1b33-42fd-bc3c-aba30117a409","Episódio com o tema 'Marcado para morrer' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Atos 23. Nossa aventura chega na reta final do livro de Atos já no capítulo vinte três. O professor Luiz Sayão preparou uma aula especial com o tema: 'Marcado para Morrer'. Este é o grande mistério da fé cristã, servir e cumprir a vontade de Deus e ter que passar por privações e sofrimentos. Você acha que a vida é sempre sombra e água fresca? Saiba que Deus tem o governo de todas as coisas e seus planos não falham.", "24:43");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Atos 13 - Atravessando as fronteiras", "b75c44a3-10d3-4636-8fc7-aba30117a403","Episódio com o tema 'Atravessando as fronteiras' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Atos 13. Hora de colocar em prática os ensinos de Jesus e de se mostrar ao mundo. Desafios externos que aparecem no caminho e dificuldades internas que surgem.", "24:14");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Atos 14 e 15 - Surpreso concílio", "ab3840db-dd70-40f2-a61b-aba30117a3fd","Episódio com o tema 'Surpreso concílio' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Atos 14 e 15. Nos capítulos catorze e quinze de Atos, descobrimos o que está acontecendo na Igreja de Jerusalém. O professor Luiz Sayão vai comentar esse episódio sob o tema: 'Surpreso Concílio'. Depois de percorrer as regiões mais inóspitas, nossos valentes desbravadores relatam tudo o que aconteceu para os líderes da Igreja. É, os grandes navegadores devem sua reputação aos temporais e tempestades, não é mesmo?", "23:59");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Atos 27 - Fizemos a última viagem", "8bc2a780-a8d0-4e20-aae1-aba30117a419","Episódio com o tema 'Fizemos a última viagem' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Atos 27. Chegamos ao penúltimo capítulo do livro de Atos, onde encontraremos a equipe missionária de Paulo no meio de uma tempestade fatal. Em sua aula, o professor Luiz Sayão comenta o perigo enfrentado por Paulo até chegar em Roma. 'Fizemos a Última Viagem' é o tema de nosso estudo.", "24:26");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Atos 2 - O Poder do Espírito Santo", "c4069daa-f3c6-4a7a-b693-aba30117a3f1","Episódio com o tema 'O Poder do Espírito Santo' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Atos 2. Neste estudo, vamos explorar o livro de João, capítulo Oito, onde o professor Luiz Sayão apresenta uma história de perdão e amor. Nosso assunto será: 'Liberdade, liberdade, abre as asas sobre nós'. Muitas vezes vivemos de baixo de muita pressão, sem rumo, sem direção.", "26:37");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Atos 17 e 18 - Presente pra grego", "f4029027-c320-47eb-99f5-aba30117a40c","Episódio com o tema 'Presente pra grego' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Atos 17 e 18. Qual o sentido da vida? De onde viemos e para onde vamos? Uma vida sem causa é uma vida sem efeito, não é mesmo? Fique com a gente e descubra os mistérios que envolvem a existência humana.", "26:00");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Atos 21 e 22 - O Procurado", "fde9f861-ee95-4bb3-aac0-aba30117a406","Episódio com o tema 'O Procurado' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Atos 21 e 22. Você acha que ser líder é coisa fácil? A vida dos apóstolos foi marcada por perseguição e incompreensão. Isso confirma a famosa frase de um ativista: A injustiça em qualquer lugar é uma ameaça à justiça em todo lugar. Fique conosco em mais essa emocionante aventura e conheça as lutas que um homem de Deus deve enfrentar. Vamos lá?", "26:08");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Atos 11 e 12 - Uma igreja universal", "65b72e9b-39bf-4880-971c-aba30117a3f5","Episódio com o tema 'Uma igreja universal' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Atos 11 e 12. A vida de um cristão é mesmo fascinante e cheia de surpresas, ele nunca está sozinho, mesmo quando se encontra na solidão de uma prisão. Neste fantástico relato da vida dos apóstolos de Jesus, podemos ver a atuação do Espírito Santo e a intervenção de anjos para socorrer os fiéis.", "25:43");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Atos 8 - Pregação pelo poder da perseguição", "bcc79470-246a-4acf-816f-aba30117a405","Episódio com o tema 'Pregação pelo poder da perseguição' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Atos 8. Analisando o livro de João, vamos observar o capítulo Doze para entender um pouco mais sobre o Filho de Deus. 'Quem é Jesus?'. Todos têm uma opinião a respeito de Cristo, mas numa época cheia de incredulidade, materialismo e ceticismo, como reagir diante do fato de que ele é o que diz ser?", "25:35");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Atos 4 e 5 - A Mentira tem vida curta", "95521294-6b6b-4b7b-a67a-aba30117a3fb","Episódio com o tema 'A Mentira tem vida curta' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Atos 4 e 5. Todos nós concordamos que falta mais segurança hoje em dia, não é mesmo? Vivemos no meio de ‘lobos’ sentindo que seremos devorados. Como consegui-la e quem poderá garanti-la? Acompanhe a resposta neste estudo.", "25:31");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Atos 28 - Quem tem boca vai a Roma", "f8052df6-cde1-4e99-ae4e-aba30117a418","Episódio com o tema 'Quem tem boca vai a Roma' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Atos 28. Último capítulo do livro de Atos, um registro emocionante e vibrante daqueles que depositaram sua fé e esperança no Deus vivo! O professor Luiz Sayão encerra sua exposição com o tema sugestivo: 'Quem tem Boca vai a Roma'. Aqui está a prova do que acontece quando o evangelho é anunciado para uma sociedade corrupta e arrogante; Paulo bem podia cantar: 'Pois não há barreiras para aquele revestido do poder, que vem de Deus, destruindo todo mal e dor... as mais altar barreiras tu irás transpor'.", "25:17");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Atos 9 e 10 - Um almoço difícil de engolir", "2eaafd6a-9e98-4a75-9767-aba30117a406","Episódio com o tema 'Um almoço difícil de engolir' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Atos 9 e 10. Neste estudo, convidamos você a entender conosco o capítulo 10 do livro de Atos, onde vamos encontrar pessoas sensíveis à atuação do Deus todo poderoso. O professor Luiz Sayão em sua aula fala sobre: 'Um Almoço difícil de engolir'. Muitas vezes Deus precisa mexer em nossas crenças para mostrar que a fé em Cristo vai além de meras convenções humanas.", "24:06");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Atos 20 e 21 - O ano que vem em Jerusalém", "6654f4ff-c636-4abd-8eaa-aba30117a409","Episódio com o tema 'O ano que vem em Jerusalém' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Atos 20 e 21. Se você encontrar um caminho sem obstáculos, ele provavelmente não leva a lugar nenhum. Então, vamos enfrente.", "25:56");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Atos 6 e 7 - Doze + Sete - Um = Infinito", "2c554e92-dd62-4229-9ea0-aba30117a401","Episódio com o tema 'Doze + Sete - Um = Infinito' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Atos 6 e 7. A série Evangelho continua estudando o livro de João e, desta vez, no capítulo Onze vamos acompanhar, com o professor Luiz Sayão, uma história de abalar até o mundo dos mortos. Nosso tema será: 'Vida e Morte na Palestina'. Vivendo num mundo repleto de dramas e doenças, com certeza precisaremos aprender esta lição de Jesus. Confira.", "25:37");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Atos 3 e 4 - A Empolgação que Virou Prisão", "cb43a528-6cd4-4adc-a870-aba30117a3fb","Episódio com o tema 'A Empolgação que Virou Prisão' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Atos 3 e 4. Livro de João, capítulo 9. O professor Luiz Sayão chama a nossa atenção para um tema muito presente em nosso dia-a-dia: 'Por que Nasci Assim?'. Você já se fez esta pergunta? Quantas pessoas não se sentem culpadas por alguma coisa?", "25:03");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Atos 15 e 16 - Plano humano, Deus soberano", "09095e18-033b-42bd-a814-aba30117a405","Episódio com o tema 'Plano humano, Deus soberano' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Atos 15 e 16. O evangelho cresce e se expande em direção à Grécia antiga aumentando o desafio da pregação diante da razão e da ciência. Você tem certeza que Deus cuida e dirige todos os detalhes da sua vida? Fique ligado e acompanhe essa história surpreendente.", "24:51");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Atos 24, 25 e 26 - Quando a justiça tarda e falha", "db72d8ce-7065-40a4-9caa-aba30117a403","Episódio com o tema 'Quando a justiça tarda e falha' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Atos 24, 25 e 26. O professor Luiz Sayão apresenta neste estudo as razões que levaram o apostolo Paulo à prisão. Nem tudo está perdido! Ainda há oportunidade de testemunhar do poder de Deus.  Se você anda frustrado e decepcionado com tanta injustiça na nossa sociedade, então veja como ainda é tempo de ter esperança.", "24:56");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Atos 1 - A ascensão que abalou o império e a nação", "95f6ee0b-af9a-4198-a450-aba30117a3fb","Episódio com o tema 'A ascensão que abalou o império e a nação' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Atos 1. Você que gosta de muita adrenalina, emoção e aventura!. No ar, programa Rota 66! A expedição que procura explicar os fatos Bíblicos para entender o mistério da vida. Nossa jornada agora entra no momento mais intrigante de toda história, o livro de Atos dos Apóstolos. O professor Luiz Sayão começa examinando o primeiro capítulo que é surpreendente. Tema de hoje: 'Ascensão que Abalou o Império e a Nação'. Vamos analisar provas infalíveis da ressurreição de Cristo. Se de fato ele está vivo, não há mais motivos para o desespero! Confira:", "25:00");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Atos 18 e 19 - Rota 66: na estrada pela terceira vez", "fe86c283-98cf-4925-a3c7-aba30117a406","Episódio com o tema 'Rota 66: na estrada pela terceira vez' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Atos 18 e 19. É a última viagem missionária da equipe do apóstolo Paulo, que colhe os frutos de seu trabalho que começa a dar muito trabalho. Vamos conhecer a estratégia de um método que deu certo e aprender qual o estilo de liderança que funciona.", "25:57");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Romanos 6 - Libertação da ditadura", "73bf9b40-c2f4-4a39-84f1-ab98012e6a7d","Episódio com o tema 'Libertação da ditadura'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Romanos 6. Talvez você viva preso a algum vício ou é dependente de alguma coisa que o incomada a ponto de atrapalhar sua carreira profissional e seu relacionamento familiar. Podemos ficar livre do pecado e não pecar mais?", "26:05");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Romanos 8 - Liberdade pelo Espírito", "de94d328-1254-4fb4-bca9-ab98012e6a79","Episódio com o tema 'Liberdade pelo Espírito'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Romanos 8. Você anda desanimado? Triste e angustiado? Ora, meu amigo, os seus problemas não são maiores que o nosso Deus. Saiba qual é o privilégio de ser filho de Deus.", "25:40");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Romanos 9 - Deus é soberano", "0526d1b0-9418-49f7-8387-ab98012e69dd","Episódio com o tema 'Deus é soberano'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Romanos 9. O assunto é pré-destinação, intervenção divina e coração obstinado. Portanto, abra o seu coração e acompanhe esse estudo.", "26:11");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Romanos 10 e 11 - O mistério de Israel", "9837f277-bba9-400e-8eea-ab98012e6a80","Episódio com o tema 'O mistério de Israel'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Romanos 10 e 11. Seguindo com o estudo da carta do apóstolo Paulo aos Romanos, vamos destacar os capítulos 10 e 11.", "25:52");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Romanos 14 - Pode ou não pode?", "ddcaeaa9-8eae-4574-867c-ab98012e6a80","Episódio com o tema 'Pode ou não pode?'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Romanos 14. Será que a vida cristã é cheia de proibições? Você concorda que a nossa liberdade acaba onde começa a dos outros? É, se todos se lembrassem deste princípio básico a nossa vida seria muito mais fácil e a justiça seria bem mais simples, concorda?", "25:29");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Romanos 1 - Descendo em queda livre", "e0d72436-62d8-4e7b-af6d-ab98012e6a74","Episódio com o tema 'Descendo em queda livre'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Romanos 1. Vamos começar nossa trilha através da carta de Paulo aos Romanos. É hora de corrigir o rumo da nossa vida e entender a direção que estamos seguindo. O que acontece com as pessoas que se afastam de Deus?", "25:35");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Romanos 15 e 16 - PT Saudações", "6ba72efe-adfc-49b1-80c0-ab98012e6a82","Episódio com o tema 'PT Saudações'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Romanos 15 e 16. Vamos concluir a carta aos Romanos. Como se dizia antigamente para colocar um ponto final na conversa 'PT Saudações' Esse é o nosso tema. Nesta sua exortação final, Paulo adverte a igreja contra as pessoas que provocam divisões e enganam os corações dos simples.", "25:24");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Romanos 13 - A justiça nas ruas", "fc2fc8da-c8e0-47b1-993e-ab98012e6a7c","Episódio com o tema 'A justiça nas ruas'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Romanos 13. Faz o que for justo e o resto virá por si só, disse o grande pensador alemão Goethe. 'A Justiça nas Ruas' é o assunto dessa lição.", "25:38");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Romanos 12 - A justiça na prática", "3ab38554-4326-415e-8882-ab98012e6a7e","Episódio com o tema 'A justiça na prática'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Romanos 12. Você sabia que toda doutrina tem seu lado prático? O filósofo já dizia: Ser bom é fácil. O difícil é ser justo. E o ditado popular diz: Quem não vive para servir, não serve para viver.", "26:17");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Romanos 7 - A luta dos fora da lei", "69e8ac12-c9f3-4d21-b45a-ab98012e6a7d","Episódio com o tema 'A luta dos fora da lei'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Romanos 7.Estamos seguindo a trilha deixada pelo apóstolo Paulo na carta aos Romanos – o sexto livro do Novo Testamento. O professor Luiz Sayão vai explicar e dizer porque o cristão vive em dois mundos ao mesmo tempo. Fique com a gente, não nos abandone.", "26:04");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Romanos 4 - Conselhos de fé do pai Abraão", "843fa7d2-186c-49be-bfd8-ab98012e6a77","Episódio com o tema 'Conselhos de fé do pai Abraão'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Romanos 4. A fé só tem importância quando focada na pessoa certa. Você quer saber quem é essa pessoa? Então preste atenção nessa exposição.", "25:36");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Romanos 5 - Viver é para Cristo e não para Adão!", "e9d26834-b271-4e40-9c86-ab98012e6a79","Episódio com o tema 'Viver é para Cristo e não para Adão!'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Romanos 5. Se houve alguém na história que tinha tudo e perdeu foi Adão. Ele perdeu a cabeça e desobedeceu a Deus. Não seja um cabeça dura, o que você vai ouvir agora não é brincadeira, não.", "25:27");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Romanos 3 - É tudo farinha do mesmo saco!", "6af67a47-d210-4341-a403-ab98012e6a70","Episódio com o tema 'É tudo farinha do mesmo saco!'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Romanos 3. Ninguém é melhor do que ninguém, e nem pior do que os outros! 'É tudo farinha do mesmo saco' esse é o tema da nossa aula. A nossa viagem agora vai explorar o interior do homem. Você sabia que o voo até a Lua não é tão longo, mas as maiores distâncias que devemos percorrer estão dentro de nós mesmos.", "25:31");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Romanos 2 - Faça o que eu digo, mas não faça o que faço", "0432c9dc-5507-4e51-b521-ab98012e6a73","Episódio com o tema 'Faça o que eu digo, mas não faça o que faço'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Romanos 2. É, falar é fácil, não é mesmo? Mas é preciso saber aceitar nossos limites para podermos ir longe. ", "25:12");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Coríntios 10 - O problema da idolatria de coríntios", "73e137eb-35eb-4862-ac07-aba300ee106c","Episódio com o tema 'O problema da idolatria de coríntios' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Coríntios 10. Você acredita em influência sobrenatural? Será que um ritual estranho pode prejudicar a vida de alguém? Nosso estudo vai mexer com tudo isso e muito mais.", "26:19");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Coríntios 13 - Supremacia absoluta", "d9f3b885-903c-4922-b2c4-aba300ee1078","Episódio com o tema 'Supremacia absoluta' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Coríntios 13.A série cartas entra na reta final em Primeira carta de Paulo aos Coríntios, capítulo treze, o professor Luiz Sayão convida você a conhecer um dos textos mais profundo da Palavra de Deus. Nosso assunto será: 'Supremacia Absoluta'. Amor, que dom é esse? Como podemos amar? Esta será a matéria em estudo.", "25:38");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Coríntios 2 e 3 - Infantilidade Fatal", "5841da7f-4fab-41d0-b660-aba300ee1066","Episódio com o tema 'Infantilidade Fatal' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Coríntios 2 e 3.Quantas briguinhas e teimosia temos feito por pura imaturidade, não é mesmo? Antes de resolver grandes problemas, precisamos crescer, certo? Vamos juntos aprender essa lição para não cair em contradição, nem viver em frustração.", "25:01");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Coríntios 11 - Comportando-se na igreja", "fa2b9682-4200-49bb-8d66-aba300ee1074","Episódio com o tema 'Comportando-se na igreja' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Coríntios 11. O assunto é mais sério do que você pensa. Não basta frequentar uma igreja, cantar hinos e ofertar, tem que participar com responsabilidade. Você que anda chateado com sua igreja ou está satisfeito com seu grupo, é bom entender melhor a igreja.", "27:20");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Coríntios 16 - Marcado para amar", "8b95405a-d958-4d4d-afbc-aba30117a3a0","Episódio com o tema 'Marcado para amar' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Coríntios 16. O que fazer com o ensino da verdade? Como colocar em prática o que foi corrigido? Depois de tantas broncas e exortações é hora de mostrar que aprendeu a lição. Você sabia que o nosso amor a Deus é evidenciado ao amarmos ao próximo? Esse é o último conselho da carta.", "23:57");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Coríntios 4 - Orgulhosamente apresenta-se a si mesma", "61d29e66-0af0-4f6c-95a1-aba300ee1063","Episódio com o tema 'Orgulhosamente apresenta-se a si mesma' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Coríntios 4. É, se tem um lugar onde a vaidade, arrogância e soberba não pode prevalecer é na comunidade da fé. É fácil dizer que a igreja tem problemas, o difícil é admitir que o problema está em nós.", "25:04");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Coríntios 14 - Soltando o verbo para refrear a língua", "03c78899-ca27-4915-9fe7-aba30117a39d","Episódio com o tema 'Soltando o verbo para refrear a língua' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Coríntios 14. Que história é essa de falar em línguas estranhas? Será que isso pode acontecer também hoje? Acompanhe este estudo.", "25:33");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Coríntios 8 e 9 - Abrindo mão dos direitos", "725539ca-ef09-447f-8e1c-aba300ee1079","Episódio com o tema 'Abrindo mão dos direitos' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Coríntios 8 e 9. Em nossa sociedade competitiva onde todo mundo pensa em levar vantagem em tudo, será que um comportamento solidário faz sentido? Como respeitar as pessoas sem ofende-las? Esta será a matéria em estudo.", "24:20");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Coríntios 15 - Quem disse que 'morreu, acabou'?", "d239853b-1eda-439a-9791-aba30117a3a8","Episódio com o tema 'Quem disse que 'morreu, acabou'?' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Coríntios 15. A série cartas chega na etapa final da Primeira carta de Paulo aos Coríntios, explorando o capítulo Quinze, que fala da base da nossa fé, a ressurreição de Cristo. Se você não se conforma com a morte ou acha esse mundo injusto, é porque não conhece a esperança prometida.", "26:07");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Coríntios 12 - Um por todos, e todos por um", "ee99f743-3f76-4794-8b05-aba300ee1068","Episódio com o tema 'Um por todos, e todos por um' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Coríntios 12. O que é para facilitar a vida da igreja e atender as necessidades da comunidade acaba sendo um ponto de conflito e exagero. Dons espirituais, você tem um, mas será que está dentro do padrão bíblico? É o que saberemos neste estudo.", "26:15");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Coríntios 7 - Será que antes só do que mal acompanhando?", "82b6a975-c42c-42c3-a714-aba300ee1066","Episódio com o tema 'Será que antes só do que mal acompanhando?' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Coríntios 7. O problema do casamento são as diferenças de expectativas: a mulher acha que o homem vai mudar após o casamento, enquanto que o homem acha que a mulher não vai mudar após o casamento. Será? O professor Luiz Sayão tem uma palavra especial pra você que é casado e um conselho para quem está preocupado em ficar solteiro. Confira!", "26:07");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Coríntios 5 e 6 - Uma devassa na vida da igreja", "6e1c26b6-f35e-4f74-9e3f-aba300ee1067","Episódio com o tema 'Uma devassa na vida da igreja' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Coríntios 5 e 6. Será que a palavra pecado está fora de moda? Por que toleramos tanto a imoralidade? Influenciar ou influenciado? Está é a questão para Luiz Sayão.", "25:46");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Coríntios 1 e 2 - Cristão que causa divisão certamente perdeu a visão", "b619415f-edba-436a-bb3f-aba300ee1079","Episódio com o tema 'Cristão que causa divisão certamente perdeu a visão' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Coríntios 1 e 2. Que maravilha é quando uma comunidade funciona bem, não é mesmo? Mas como dizia Martin Luther King: Devemos aprender a viver juntos como irmãos ou perecer juntos como tolos?", "25:40");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Coríntios 6 e 7 - No Limite", "ee62d7f0-d2c0-42e7-ad65-aba30117a3a5","Episódio com o tema 'No Limite' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 2 Coríntios 6 e 7. Se você pensa que a vida cristã é só prosperidade e benção é porque ainda não leu a biografia dos santos que andaram com Deus. É, cristianismo sem cruz não existe. Preparado para carregar a sua? Veja como é.", "26:40");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Coríntios 8 e 9 - A outra fase da moeda", "91cbe440-7082-4c85-a8ef-aba30117a3a7","Episódio com o tema 'A outra fase da moeda' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 2 Coríntios 8 e 9. Qual é a sua maior preocupação? Ganhar mais dinheiro? Arranjar um jeito de faturar alto? Será verdade que antes, bem-aventurado é dar do que receber? É o que veremos a seguir.", "26:14");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Coríntios 3 - Já refulge a Glória Eterna", "c4f42588-510b-4cf3-a17e-aba30117a304","Episódio com o tema 'Já refulge a Glória Eterna' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 2 Coríntios 3. Você está procurando o sentido da vida? Perdeu o ânimo e a vontade de viver? Então se prepare que essa meditação vai mexer com você. Fique com a gente e confira o que Jesus fez por nós.", "26:05");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Coríntios 1 e 2 - Preparado para o dia ‘V’", "95e90870-ac08-4fa3-b0d7-aba30117a3a6","Episódio com o tema 'Preparado para o dia ‘V' ' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 2 Coríntios 1 e 2. Vale valorizar a verdade vendo a virtude sem vaidade para vencer na vida. Venha viver vigorosamente e com vontade varonil vasculhando o vasto vernáculo da Bíblia. Veja esse vaticínio sem vacilar.", "26:06");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Coríntios 4 e 5 - Vá de Vagar que o Vaso é de Barro", "b7d52c94-b854-4f8f-bf91-aba30117a3a2","Episódio com o tema 'Vá de Vagar que o Vaso é de Barro' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 2 Coríntios 4 e 5. Uma coisa precisamos admitir, a nossa vida é breve e frágil, não é mesmo? Você já pensou que mesmo com tanta tecnologia e ciência o homem continua perdido em busca de uma solução? Confira nessa reflexão.", "25:23");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Coríntios 10 e 11 - Vale a pena comprar essa briga", "4f170c67-b8b7-4abd-bc48-aba30117a3ac","Episódio com o tema 'Vale a pena comprar essa briga' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 2 Coríntios 10 e 11. Num mundo em crise afundado em corrupção e escândalo, o cristão precisa ter convicção, determinação e coragem. É isso que você quer? Pense nisso.", "28:31");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Coríntios 12 e 13 - Ser apóstolo não é para qualquer um", "d7fe8550-e0d1-48a6-98de-aba30117a3a9","Episódio com o tema 'Ser apóstolo não é para qualquer um' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 2 Coríntios 12 e 13. Neste tema vamos descobrir que corremos perigo com falsos mestres e podemos ser iludidos com mentiras e outras heresias. Cuidado com as histórias de experiências ‘sobrenaturais’! Numa dessas você pode ser ‘arrebatado’ do caminho da fé. Confira.", "28:17");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Gálatas 5 - A guerra começou", "9db7c70f-ced8-42e3-ad2b-ab9801424868","Episódio com o tema 'A guerra começou'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Gálatas 5. O problema dos gálatas era a busca da certeza da salvação através de sacrifícios e da lei. O apóstolo afirma que a nossa garantia é o Espírito que nos apresenta perfeitos na justiça de Cristo.", "25:30");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Gálatas 2 - É preciso tomar posição", "13dd8a3e-a964-4fd8-835f-ab980142485d","Episódio com o tema 'É preciso tomar posição'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Gálatas 2. Você vai aprender que o caminho da liberdade é ser capacitado para fazer aquilo que deve ser feito, isto é, viver para Deus. Às vezes é complicado obedecer ao evangelho, não é mesmo?", "24:35");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Gálatas 6 - Orientações do Espírito: equilíbrio e bom senso", "f48c0520-c506-4cb8-be34-ab9801424878","Episódio com o tema 'Orientações do Espírito: equilíbrio e bom senso'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Gálatas 6. Quem é que ama a Deus? Todo mundo ama, é claro. Mas aquele que não ama a seu irmão a quem vê, não pode amar a Deus a quem não vê. A capacidade de amar nos é concedida através dos frutos do Espírito.", "26:34");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Gálatas 1 - Chame o detetive: É preciso verificar!", "0c75f5b8-fc02-4ff2-b866-ab980142485d","Episódio com o tema 'Chame o detetive: É preciso verificar!'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Gálatas 1.A carta aos Gálatas é um dos primeiros documentos do cristianismo. Vamos juntos conhecer melhor quem foi Paulo e o que faziam os crentes da Ásia Menor.", "25:05");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Gálatas 3 - De volta ao passado: entendendo a lei e promessa", "9bfc449f-8901-4d52-892c-ab980142487c","Episódio com o tema 'De volta ao passado: entendendo a lei e promessa'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Gálatas 3. Você sabia que o princípio da fé é anterior e mais fundamental do que a lei mosaica? É sobre isso que Luiz Sayão vai falar explicando o capítulo 3 de Gálatas.", "24:26");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Gálatas 3 e 4 - Quem é filho, quem é pai? Vamos ver o DNA", "1a367f20-a8cb-4979-999c-ab980142487e","Episódio com o tema 'Quem é filho, quem é pai? Vamos ver o DNA'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Gálatas 3 e 4. Não é uma aula de biologia e nem programa popular de televisão brincando com a desgraça dos outros. Você já ouviu sobre justificação, adoção e redenção? Então venha conosco nessa vibrante aventura em busca da verdadeira identidade.", "24:09");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Efésios 1 - Entendendo o que aconteceu", "5bd6bbf6-1e2e-4c9c-96c7-aba30117a3be","Episódio com o tema 'Entendendo o que aconteceu' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Efésios 1. Se você quer saber se existe pré-destinação, se tem gente que é selado com o Espírito Santo e como funciona a salvação, então aumente o volume do seu aparelho que essa mensagem é decisiva para o seu futuro.", "26:38");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Efésios 4 e 5 - Unidos venceremos", "4ddc7b6b-5b03-41b6-b57a-aba30117a3be","Episódio com o tema 'Unidos venceremos' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Efésios 4 e 5. Se Deus é um só e a Bíblia é única, por que temos tantas igrejas e grupos diferentes? Como acalcar a unidade em meio a tantas variedades? É, Deus precisa dar o dom pra gente saber viver, não é mesmo? Que tal aprender um pouco mais sobre isso, hein?", "25:57");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Efésios 3 - Agora é pra todo mundo", "f95bdd2a-1daa-44ec-83b9-aba30117a3c0","Episódio com o tema 'Agora é pra todo mundo' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Efésios 3. Se você pensa que Deus só trabalha com alguns selecionados ou ajuda quem é especial, esse é um engano fatal. Fique com a gente, vamos meditar um pouco sobre o grande amor de Deus.", "27:02");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Efésios 5 e 6 - Vitória pelo Espírito", "ab0bbc13-17a2-447a-be62-aba30117a3c4","Episódio com o tema 'Vitória pelo Espírito' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Efésios 5 e 6. O assunto de hoje interessa a todos que sabem que a vida é uma luta. Batalha espiritual; como é, quando acontece, como se preparar para não ser pego desprevenido. O segredo da vitória você vai descobrir a partir de agora.", "25:39");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Efésios 2 - Isso que é custo e benefício: tudo de graça", "7c4b9295-009d-4c96-ae3f-aba30117a3c0","Episódio com o tema 'Isso que é custo e benefício: tudo de graça' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Efésios 2. Para valorizar o que ganhamos precisamos entender que não merecíamos nada. Na verdade quem é amigo do mundo não pode ser amigo de Deus, não é mesmo? Fique com a gente e descubra o valor da fé e o sabor da graça.", "25:19");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Filipenses 1 - Quanto mais bate, melhor fica", "2163de35-a458-437c-a678-aba30117a3c9","Episódio com o tema 'Quanto mais bate, melhor fica' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Filipenses 1. O que podemos aprender com um homem que sofreu todo tipo de maldade fazendo o bem? Como ser feliz apesar da situação?", "26:04");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Filipenses 3 - Caminhando com direção sem distração", "afc40065-5f3f-4fb6-af28-aba30117a3ce","Episódio com o tema 'Caminhando com direção sem distração' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Filipenses 3. Será que a Religião pode atrapalhar a vida de alguém? O que é preciso fazer para conhecer a verdade? Convido você agora a investir alguns minutos para pensar nesta questão. Vamos lá?", "26:53");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Filipenses 2 - Para baixo sempre Deus ajuda", "33f3df79-af81-4ebf-82e4-aba30117a3d5","Episódio com o tema 'Para baixo sempre Deus ajuda' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Filipenses 2. Para nos salvar da morte eterna Deus se fez homem e veio nos resgatar de um mundo cheio de desejos e crueldades. Quem era esse Jesus? Era o que dizia ser? Vamos entender?", "25:39");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Filipenses 4 - Uma Despedida pra lá de Alegre", "6c78d918-3a6e-414a-b93f-aba30117a3d5","Episódio com o tema 'Uma Despedida pra lá de Alegre' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Filipenses 4. Diante das dificuldades e injustiças da vida, como desfrutar da felicidade e esperar pela vitória?", "26:09");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Colossenses 2 - Legalismo ou Esquisitismo?", "e3a34211-3915-4f28-b97d-aba30117a3c9","Episódio com o tema 'Legalismo ou Esquisitismo?' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Colossenses 2. Você tem percebido como tem aumentado o número de pessoas que fazem qualquer coisa para ganhar uma ajuda do além? É, o mundo é um lugar estranho, não é mesmo? Cuidado com o misticismo e a religiosidade de nossos dias! Quer saber como se previnir? Então acompanhe.", "23:48");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Colossenses 1 - A obra de Cristo", "94646e7d-7050-4995-89de-aba30117a3c9","Episódio com o tema 'A obra de Cristo' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Colossenses 1. O professor Luiz Sayão vai mostrar que O evangelho não é uma revelação da sabedoria humana, mas a revelação da mente espiritual de Deus. É, nossa oração não é para você ter um entendimento intelectual do evangelho, mas por um entendimento espiritual mais profundo. Confira.", "24:57");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Colossenses 3 - Adeus vida velha, feliz vida nova", "21e8bca2-ba02-4b22-b5e0-aba30117a3cc","Episódio com o tema 'Adeus vida velha, feliz vida nova' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Colossenses 3. Qual o segredo de uma vida vitoriosa? Será que bom comportamento e algumas penitencias é o suficiente? Fique com a gente e descubra como ser feliz de verdade com Jesus.", "25:58");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Colossenses 3 e 4 - Família, igreja e sociedade", "fb9d35c9-1205-41b5-8b35-aba30117a3cc","Episódio com o tema 'Família, igreja e sociedade' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Colossenses 3 e 4. O maior desafio para o homem moderno é viver de modo equilibrado num mundo onde os valores morais e espirituais estão sendo esquecidos. Você faz diferença no lugar em que está? Você cumpre a função de ser sal da terra e luz do mundo? Vamos juntos entender que ser cristão é ação.", "25:39");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Tessalonicenses 3 - Jesus Cristo, o retorno", "85df763f-0fba-49a9-b0c8-aba30117a3c9","Episódio com o tema 'Jesus Cristo, o retorno' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Tessalonicenses 3. Como dizia o velho hino: os sinais da sua vinda mais se mostram cada vez...vencendo vem Jesus! Ah! O inesperado vai acontecer! E você? Está preparado para aquele glorioso dia? Então é bom começar ouvindo esta explanação.", "25:14");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Tessalonicenses 1 e 2 - Uma vitória suada", "8b41f30a-c497-4cef-8556-aba30117a3b9","Episódio com o tema 'Uma vitória suada' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Tessalonicenses 1 e 2. Nada vem fácil, não é mesmo? Principalmente quando se trata da pregação da Palavra de Deus. Viver os princípios Bíblicos exige conhecimento e coragem para enfrentar a resistência da oposição. Venha conosco vivenciar os dias do Apóstolo.", "24:23");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Tessalonicenses 2 e 4 - Pensando em sexo seguro, pensando no futuro", "d717e894-8d3f-454d-970a-aba30117a3b7","Episódio com o tema 'Pensando em sexo seguro, pensando no futuro' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Tessalonicenses 2 e 4. A independência sexual dos anos 60 e 70 só complicaram a vida da sociedade. Chega de imoralidades e outras coisas contrárias à natureza humana; precisamos resgatar a pureza a santidade e a piedade. O que você acha?", "25:58");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Tessalonicenses 1 - Os perseguidos", "d790523e-b5ec-453c-aa13-aba30117a3ba","Episódio com o tema 'Os perseguidos' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 2 Tessalonicenses 1.Uma realidade difícil de admitir, a perseguição à igreja de Deus. Por que será que o homem de fé sofre discriminação e perseguição? Isso hoje em dia, acredite! Fique com a gente.", "25:37");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Tessalonicenses 2 - O anticristo", "8a7112b3-668c-49d3-8631-aba30117a3bb","Episódio com o tema 'O anticristo' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 2 Tessalonicenses 2. Você está seguro da sua salvação? Saiba que a Bíblia diz que o mundo vai piorar e que vai aparecer um grande líder que irá enganar a muitos! Se você quiser saber como identificar essa situação, fique conosco e confira essa reflexão.", "24:58");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Tessalonicenses 3 - Vá trabalhar, preguiçoso", "52dbda4c-b291-4256-848c-aba30117a3c3","Episódio com o tema 'Vá trabalhar, preguiçoso' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 2 Tessalonicenses 3.O pensador Voltaire costumava dizer que o trabalho afasta de nós três grandes males: o tédio, o vício e a necessidade. Nem o desemprego serve de desculpa para você ficar parado. Levante-se! Vamos em frente!", "24:40");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Timóteo 5 - Respeito, família, sobriedade", "ab24660e-2421-4067-91e8-aba30117a3ad","Episódio com o tema 'Respeito, família, sobriedade' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Timóteo 5. As Nações Unidas são brincadeira de criança se comparadas às lutas, malabarismos e necessidade de compreensão e perdão em qualquer família. Nenhum sucesso na vida compensa o fracasso no lar. Confira.", "25:56");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Timóteo 3 - Uma liderança que dá esperança", "dd993b44-d6ce-47bc-9afe-aba30117a3b0","Episódio com o tema 'Uma liderança que dá esperança' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Timóteo 3. Você vai descobrir que um dos testes de liderança é a habilidade de reconhecer um problema antes que ele se torne uma emergência. Vamos juntos?", "26:52");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Timóteo 4 - O terrível fascínio da mentira", "ec1b19fb-e857-4866-b02e-aba30117a3af","Episódio com o tema 'O terrível fascínio da mentira' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Timóteo 4. Como dizia o reformador Martinho Lutero: 'A mentira é como a bola de neve; quanto mais rola, tanto mais aumenta'. Cuidado para você não ser a próxima vítima! Para isso eu o convido para acompanhar essa reflexão.", "25:38");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Timóteo 6 - Dinheiro na mão só traz o mal?", "37b169b0-a70d-43c9-b4fc-aba30117a3b0","Episódio com o tema 'Dinheiro na mão só traz o mal?' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Timóteo 6. Se o dinheiro for a sua única esperança de independência, você jamais a terá. A segurança verdadeira consiste numa poupança de sabedoria, de investimento na competência. Vamos nessa!", "26:08");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Timóteo 1 - Controvérsia e discussão exigem correção", "ef9f1082-3fe5-4dc3-b25c-aba30117a3b4","Episódio com o tema 'Controvérsia e discussão exigem correção' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Timóteo 1. Vivemos dias complicados onde várias idéias e filosofias esquisitas e malucas influenciam o comportamento das pessoas. Saiba como evitar a superficialidade usando sua fidelidade.", "25:40");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Timóteo 2 - Adoração: só com bom senso e discrição", "93ced120-f79a-4ff1-bbc6-aba30117a3b0","Episódio com o tema 'Adoração: só com bom senso e discrição' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Timóteo 2. Será que devemos orar pelas autoridades, isso vai mudar alguma coisa? Como deve ser a participação das mulheres numa reunião de adoração? Um texto difícil que será examinado agora, acompanhe.", "25:45");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Timóteo 4 - E o tempo passa", "9583a965-e7ec-4c3b-98ea-aba30117a3bb","Episódio com o tema 'E o tempo passa' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 2 Timóteo 4. Tem gente que nem percebe que a vida é breve e passageira. Como você tem vivido? Já pensou como vai ser o seu futuro? Você está seguro quanto ao que deseja para a sua vida? Fique com a gente nesta jornada.", "24:55");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Timóteo 1 e 2 - Combate final", "a30d5d37-0e4b-49fa-ac6b-aba30117a3b0","Episódio com o tema 'Combate final' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 2 Timóteo 1 e 2. O professor Luiz Sayão fala sobre motivação para a vida cristã. ‘Enquanto suspiramos por uma vida sem dificuldades, devemos nos lembrar que o carvalho cresce forte através de ventos contrários e que os diamantes são formados sob pressão’. Como enfrentar o sofrimento? Vamos descobrir?", "25:50");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Timóteo 3 - Será o fim do mundo?", "997288f7-69c3-4c7c-bab7-aba30117a3b2","Episódio com o tema 'Será o fim do mundo?' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 2 Timóteo 3. Se tem alguma coisa que intriga a humanidade é o fato da Bíblia anunciar um fim para os nossos dias. O professor Luiz Sayão comenta essa verdade sem provocar medo nas pessoas.", "27:07");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Tito 1 - De olho na doutrina", "3bb0336b-2f6e-4d04-a110-aba30117a3b5","Episódio com o tema 'De olho na doutrina' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Tito 1. Cuidado com as imitações! Tem muita coisa por aí que parece mas não é. A maior preocupação do cristão deve ser o equilíbrio entre o discurso e a prática. O seu comportamento é compatível com aquilo que você crê? Convido você agora a viver essa aventura pelas páginas das Escrituras. Vamos lá?", "26:22");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Tito 2 e 3 - Acima de qualquer suspeita", "aa876b79-b53f-4c69-976d-aba30117a3b4","Episódio com o tema 'Acima de qualquer suspeita' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Tito 2 e 3. Você já se decepcionou com alguém? Então não é o único. Hoje vamos analisar os segredos para uma vida íntegra, o comportamento ético que se espera de uma pessoa convertida a Cristo. Acompanhe.", "26:07");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Filemom 1 - Amor subversivo", "7d6e218a-2730-4ac2-8a1f-aba30117a3cb","Episódio com o tema 'Amor subversivo' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Filemom 1.Vamos ver na prática que o evangelho produz mudanças significativas na vida de quem precisa de socorro. Cristianismo é atitude! É ser uma benção para o próximo. Você se preocupa com os outros? Acompanhe esta história e descubra como fazer diferença.", "25:00");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Hebreus 13 - Recomendações finais", "1e9049bc-5f9c-47c8-9298-ab98012e6aa3","Episódio com o tema 'Recomendações finais'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Hebreus 13. Chegamos ao capítulo 13 de Hebreus. Neste episódio, destacamos a importância da hospitalidade e da vida familiar. Num mundo onde a ‘auto-ajuda’ é valorizada, e conselhos são oferecidos sem restrições, como saber quem é o líder que deve ser seguido?", "26:25");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Hebreus 5 - Chegou o acesso direto!", "01192429-5e65-4415-8c4b-ab98012e6a9e","Episódio com o tema 'Chegou o acesso direto!'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Hebreus 5. Não precisamos de intermediários para chegar a Deus. Hebreus é um dos últimos livros do Novo Testamento e essa série foi preparada pra você.", "25:38");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Hebreus 7 - O sacerdote absoluto", "63d9b8e8-b43d-407d-9ccf-ab98012e6aa9","Episódio com o tema 'O sacerdote absoluto'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Hebreus 7. O autor de Hebreus tem interesse especial na finalidade dos planos de Deus para com os homens. A implicação de mudança do sacerdócio é que a lei que controlava as cerimônias judaicas forçosamente mudará também.", "25:08");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Hebreus 1 - Muito acima dos anjos", "93e87c74-7190-4b96-b8c3-ab98012e6a9a","Episódio com o tema 'Muito acima dos anjos'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Hebreus 1. Quem é Jesus? O que significa ser filho de Deus? Fique ligado que vamos responder essas e outras perguntas.", "25:06");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Hebreus 5 e 6 - Voltar atrás? Jamais!", "3acba8fa-1fcf-4f7d-8724-ab98012e6a9a","Episódio com o tema 'Voltar atrás? Jamais!'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Hebreus 5 e 6. Será que o crente pode perder a salvação? Em que circunstâncias isso poderia acontecer? Fique ligado que vamos responder essas e outras perguntas.", "24:36");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Hebreus 8 - Chegou o novo contrato", "fc166d7e-8f88-42af-8284-ab98012e6aa6","Episódio com o tema 'Chegou o novo contrato'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Hebreus 8. Neste estudo, vamos mostrar que a fé cristã é diferente do conceito supersticioso e religioso que as pessoas procuram. Nada de rituais, leis estranhas e mandamentos esquisitos. Examine a sua fé com a gente.", "24:48");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Hebreus 3 - Não duvide: Jesus é superior ao maior", "1bddd189-e1e6-48fd-ab92-ab98012e6a9f","Episódio com o tema 'Não duvide: Jesus é superior ao maior'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Hebreus 3. Será que existe alguém maior do que Jesus? No passado Moisés falou, mas... alguém escutou?", "26:26");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Hebreus 4 - Isso é que é descanso!", "555d75ad-1078-4b66-a317-ab98012e6a99","Episódio com o tema 'Isso é que é descanso!'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Hebreus 4. Se você quer saber se o pecado o tem enganado, faça um exame com a Palavra de Deus. Se você tentar entender a vida sem compreender a Deus, torna-se um caminho de muita canseira.", "26:26");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Hebreus 9 e 10 - O Sacrifício perfeito e absoluto", "918fa45f-87b1-47bf-9a9c-ab98012e6aa8","Episódio com o tema 'O Sacrifício perfeito e absoluto'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Hebreus 9 e 10. Em nossa aventura estamos percorrendo o terreno arenoso de Hebreus, a carta mais judaica do Novo Testamento. É, tem gente que se sacrifica pelos filhos, outros se acabam no trabalho para conseguir alguma coisa... Mas em tudo sempre enfrentamos problemas.", "25:13");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Hebreus 10 e 11 - Entre a desistência e a persistência", "39551e94-0045-4074-899c-ab98012e6aa7","Episódio com o tema 'Entre a desistência e a persistência'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Hebreus 10 e 11. O caminho para Deus não é por sacrifícios, penitências ou obras, mas pela vida do Cristo ressureto. Você quer saber qual é o privilégio e responsabilidade do cristão? Então acompanhe essa aula.", "25:12");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Hebreus 12 - O Deus que está por trás das provações", "d9693235-adaa-478f-b8b1-ab98012e6aae","Episódio com o tema 'O Deus que está por trás das provações'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Hebreus 12. Você acha que as coisas só acontecem com você? Não desanime! Mesmo assim Deus quer te abençoar. Quer saber como? Ouça, então, essa argumentação.", "25:45");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Hebreus 2 - Não volte atrás: Ele veio em busca de você", "eb7472d3-8a35-4190-883f-ab98012e6a9a","Episódio com o tema 'Não volte atrás: Ele veio em busca de você'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Hebreus 2. Parece que tudo está estacionado, parado no tempo? Vamos conhecer agora um grupo que estava na pior querendo desistir da fé.", "24:38");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Tiago 1 - Vencendo as provações", "297c7ab2-965f-42ab-9c5f-ab980142488c","Episódio com o tema 'Vencendo as provações'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Tiago 1. Vamos começar uma nova série com a carta de Tiago, uma das últimas do Novo Testamento. Você sabe qual a diferença entre a tentação e provação?", "25:19");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Tiago 4 e 5 - Fragilidade e dependência", "ef748293-cd89-4789-b5a1-ab9801424889","Episódio com o tema 'Fragilidade e dependência'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Tiago 4 e 5. É o capítulo 5 que fala das riquezas e da oração. Você já agradeceu a Deus pelo que tem? Ou continua insatisfeito?", "23:33");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Tiago 3 e 4 - Pequenos detalhes, grandes problemas", "5ede4aee-2647-4988-9d2c-ab9801424886","Episódio com o tema 'Pequenos detalhes, grandes problemas'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Tiago 3 e 4. A fofoca, a inveja... o que podemos aprender sobre esses males?", "25:17");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Tiago 2 - Protesto contra a discriminação e a falsa religião", "e4b0da4f-585d-4143-874e-ab9801424889","Episódio com o tema 'Protesto contra a discriminação e a falsa religião'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Tiago 2. Você sabia que a fé não é complacente? Fé é ação. Quando você tem fé, você se mexe, você participa e modifica o que está parado e morto. O que vale mais, ter obras ou ter fé?", "25:38");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Pedro 1 - Salvos, sempre Santos", "551bca9a-0529-439d-baee-aba30117a3ce","Episódio com o tema 'Salvos, sempre Santos' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Pedro 1. Hoje você vai saber o que aconteceu antes da fundação do mundo! E entender a importância da obra de salvação realizada por Cristo Jesus. Venha conosco viver mais esta emoção.", "24:46");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Pedro 4 e 5 - O Fim está próximo", "d2e55bd7-b266-4963-81ca-aba30117a3d5","Episódio com o tema 'O Fim está próximo' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Pedro 4 e 5. Rota 66 está chegando com mais uma aventura bíblica. Nossa trilha pela Primeira Carta de Pedro chega aos capítulos 4 e 5. Para encerrar esta importante carta, o professor Luiz Sayão apresenta o tema: 'O Fim está Próximo'. Diante de tantas injustiças e sofrimentos a expectativa do Cristão deve ser pela volta de Cristo. Mas como viver de modo equilibrado sem perder a esperança em dias melhores? Uma coisa é certa, nunca na história as circunstâncias foram tão favoráveis ao fim como agora. Confira esta reflexão.", "24:57");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Pedro 3 - A sabedoria do sofrimento e da submissão", "51ff3ce7-2c00-4d04-9e45-aba30117a3ce","Episódio com o tema 'A sabedoria do sofrimento e da submissão' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Pedro 3. É, Sabendo sofrer, sofre-se menos, diria o poeta. O professor Luiz Sayão terá o desafio de falar sobre casamento; dilúvio e de comentar o caso de Cristo pregar na prisão. Calma, não é isso que você está pensando. Para tudo precisamos de sabedoria. Fique com a gente e confira mais essa.", "25:20");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Pedro 2 - É Cristo, é pedra, é o povo eleito", "f50c9096-71fb-42e3-8042-aba30117a3d5","Episódio com o tema 'É Cristo, é pedra, é o povo eleito' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Pedro 2.É, a nossa trilha agora passa pelas pedras! O que fazer diante da injustiça e do sofrimento? Que exemplo Cristo deixou para imitá-lo? Qual o maior sentido da vida? Fique com a gente nos próximos minutos para descobrir o que de fato importa neste mundo.", "24:57");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Pedro 3 - Aquecimento global", "4e688216-cab3-471b-82ba-aba30117a3d6","Episódio com o tema 'Aquecimento global' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 2 Pedro 3.Chegamos ao fim da nossa série de meditações na Segunda Carta de Pedro focalizando o capítulo Três que traz um assunto que mexe com a nossa curiosidade e assusta até a nossa imaginação. Tema do professor Luiz Sayão: “Aquecimento Global”. É, a humanidade não percebe, mas estamos às portas do fim do mundo! Acompanhe essa exposição e compare com a realidade de nossos dias.", "24:28");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Pedro 2 - Despencando da rota", "2435b08b-b865-4cbb-81fa-aba30117a3dc","Episódio com o tema 'Despencando da rota' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 2 Pedro 2. Vamos firmes e seguros para a Segunda Carta de Pedro destacando o capítulo Dois com o tema: 'Despencando da Rota'. O professor Luiz Sayão vai comentar uma triste realidade; como surgem os falsos profetas e mestres? Você sabe identificar uma heresia? É, cada vez mais aparece uma novidade prometendo prosperidade e liberdade, cuidado! Todo caminho largo é perigoso e faz derrapar. Vamos juntos aprender a usar as ferramentas certas para não ficar parado.", "26:34");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 Pedro 1 - A fé não pode parar", "0b86d409-7691-40b5-a7ef-aba30117a3da","Episódio com o tema 'A fé não pode parar' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 2 Pedro 1. Você vai viajar com a gente, neste estudo, pelas páginas da Segunda Carta de Pedro. Em nossa aventura de hoje vamos explorar o primeiro capítulo desta pequena epístola que fica quase no fim do Novo Testamento. O professor Luiz Sayão abre esta série de meditações com o tema: 'A Fé não pode parar'. Vivemos num mundo onde de alguma forma as pessoas buscam o significado da vida, e o sentido de tudo. O que é fé? É o que veremos a seguir.", "25:53");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 João 1 - A raiz do conflito", "f53e80b4-8022-4522-bb36-aba30117a3d7","Episódio com o tema 'A raiz do conflito' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 João 1.Você é o nosso convidado nesta aventura, a trilhar pela Primeira Carta do Apóstolo João capítulo Um. O professor Luiz Sayão inicia essa série com o tema: 'Raiz do Conflito'. Vamos pensar um pouco sobre as dificuldades da vida. De onde vêm os problemas? O que acontece quando tudo parece tranquilo e normal e de repente precisamos enfrentar uma adversidade? Como superar isso?", "24:57");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 João 2 e 3 - Pecado capital", "f00929ea-ce7a-4705-8778-aba30117a402","Episódio com o tema 'Pecado capital' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 João 2 e 3. Embarque em mais uma aventura, explorando a Primeira Carta do Apóstolo João, capítulo Três. O professor Luiz Sayão vai tratar de um assunto muito sério: 'Pecado Capital'. Sabemos que a carne é fraca e muitas vezes o vício nos domina e nos faz cair. Quem é que nos faz pecar? Será que é porque não ouvimos a consciência? Ou é o diabo que usa de suas artimanhas? Descubra o que nos afasta de Deus.", "25:09");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 João 4 e 5 - Testado e aprovado", "7dab91ec-a13f-43cb-a945-aba30117a3de","Episódio com o tema 'Testado e aprovado' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 João 4 e 5. Concluímos nosso estudo na Primeira Carta do Apóstolo João, passando pelos capítulos Quatro e Cinco. Nosso assunto será: 'Testado e Aprovado'. O professor Luiz Sayão vai comentar sobre a influência e estrago que uma heresia pode provocar na vida das pessoas. Vamos entender o que significa: ‘pecado para a morte’. Será que corremos esse risco? O verdadeiro cristão está livre do diabo?", "25:13");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 João 2 - Uns são, outros não são", "6f471da8-b3a3-48b3-9785-aba30117a3da","Episódio com o tema 'Uns são, outros não são' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 João 2. Nossa trilha segue explorando a Primeira Carta do Apóstolo João, capítulo dois, com o professor Luiz Sayão falando sobre: 'Unção, outros não são'. Num mundo cada vez mais egoísta e orgulhoso onde cada um busca seu próprio interesse, como obter conhecimento da verdade para não ser iludido e enganado pelo anti-cristo? Descubra agora neste estudo.", "24:17");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("2 João 1 - A hora de dizer não", "d3087fff-0b12-4bf0-b485-aba30117a3df","Episódio com o tema 'A hora de dizer não' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 2 João 1.Vamos em frente com nossa expedição agora analisando a Segunda Carta do Apóstolo João que fica quase no fim do Novo Testamento. O professor Luiz Sayão chama a nossa atenção para os perigos dos falsos mestres, principalmente daqueles que atuam dentro da comunidade da fé. Tema do estudo de hoje: 'A Hora de Dizer Não'. Precisamos ficar espertos com os ataques do inimigo! Quando ele não consegue tirar alguém do caminho da verdade, ele empurra para além da revelação Bíblica.", "24:36");


INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Judas 1 - Convocados para a batalha", "a2cf8108-3562-443a-a253-aba30117a3dc","Episódio com o tema 'Convocados para a batalha' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Judas 1.Conheceremos neste estudo uma pequena carta do Novo Testamento que tem um nome marcado pela história, Judas. Você vai saber quem é este líder da Igreja e conhecer o drama de quem viveu numa época de libertinagem e ataques à fé cristã. O professor Luiz Sayão comenta este assunto falando sobre: 'Convocado para a Batalha'. Será que estamos preparados para defender a verdade bíblica, custe o que custar? Qualquer semelhança não é mera coincidência.", "24:57");

INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Apocalipse 7 - Os 144.000", "1148d006-4925-48b7-a406-aba30117a40f","Episódio com o tema 'Os 144.000' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Apocalipse 7. Nossa jornada pelo livro do Apocalipse chega ao capítulo 7 para conhecer um pouco mais sobre como será os últimos dias. O professor Luiz Sayão comenta esta passagem com o tema: 'Os 144 mil'. Quem são estes que aparecem na grande tribulação? De onde vieram? Por que recebem atenção especial de Deus? Seriam estes o número dos salvos?", "24:47");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Apocalipse 13 - 666", "0adbd7b6-bfb9-4206-984c-aba30117a409","Episódio com o tema '666' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Apocalipse 13. O professor Luiz Sayão fala sobre esse obscuro número e seu significado. Vivendo num mundo que ignora o poder de Deus, as pessoas são manipuladas como animais que não pensam e vivem como bestas. É assim que o Anticristo entra em cena. Cuidado! Pequenos descuidos podem produzir grandes males.", "24:37");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Apocalipse 22 - Vencendo vem Jesus", "66628168-a62d-43fa-aba7-aba30117a418","Episódio com o tema 'Vencendo vem Jesus' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Apocalipse 22. A trilha que traz a razão pra viver e o sentido da vida. Com a graça de Deus chegamos ao final de nossa emocionante aventura. Último capítulo do livro do Apocalipse terá o tema: 'Vencendo vem Jesus'. O professor Luiz Sayão comenta a vitória espetacular e arrasadora de Cristo contra um sistema mundial que ignora a ação de Deus. Se muitas coisas neste livro de enigmas e mistérios são de difícil entendimento, uma certeza podemos ter, a volta de Jesus é inevitável. Maranata!", "22:34");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Apocalipse 6 - A Era do Selo", "8b355f99-dc1f-4757-aaf4-aba30117a40a","Episódio com o tema 'A Era do Selo' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Apocalipse 6. Apocalipse 6! O professor Luiz Sayão tem o desafio de explicar a seqüência de tragédias que virá ao mundo quando a mão de Deus pesar. O tema desta reflexão será: 'A Era do Selo'. Os cavaleiros do apocalipse estão chegando e com eles as calamidades.", "26:06");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Apocalipse 2 - CPI na igreja", "1bb2355d-f702-480b-9c04-aba30117a41","Episódio com o tema 'CPI na igreja' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Apocalipse 2. Você pensa que igreja não é importante? Acha que é algo antigo e que não tem mais sentido fazer parte de uma ou que todas tem problemas? Pois então vamos ver como Deus trata cada uma delas e valoriza sua posição e obra.", "23:22");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Apocalipse 4 e 5 - Diante do Trono", "e2c81a6b-ab4f-4834-a175-aba30117a40b","Episódio com o tema 'Diante do Trono' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Apocalipse 4 e 5. Exploraremos, neste estudo, Apocalipse 4 e 5, onde o professor Luiz Sayão comenta a experiência do Apóstolo João com o tema: 'Diante do Trono'. Enxergando além dos limites do homem comum para ver a glória eterna.", "24:59");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Apocalipse 21 - A cidade luz", "4ad67623-dce2-4113-82e5-aba30117a413","Episódio com o tema 'A cidade luz' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Apocalipse 21. Nossa jornada pelo livro do Apocalipse vai terminando, entramos no penúltimo capítulo, 21. Você já ouviu falar que um novo céu e uma nova terra vão surgir? Coisas fantásticas irão acontecer que a mente humana não pode imaginar. Depois da catástrofe mundial provocada pelo pecado, a restauração do Criador. Não haverá mais morte, sofrimento ou mal. A esperança não morre nunca. Confira nos próximos minutos.", "24:59");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Apocalipse 12 - A Bela e a Fera", "78031741-460b-420d-a49a-aba30117a40e","Episódio com o tema 'A Bela e a Fera' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Apocalipse 12. Nossa expedição agora para no capítulo 12 de Apocalipse, onde o professor Luiz Sayão comenta este assustador acontecimento com o tema: 'A Bela e a Fera'. Que acontecimentos dramáticos seriam esses revelados aqui? Teria acontecido num passado distante ou está prestes a surpreender nosso mundo? Desastres e colapsos hão de aparecer para arrasar toda pretensão humana? Vamos estudar de perto estes fenômenos.", "24:43");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Apocalipse 3 - CPI na Igreja – parte 2", "fa237f4b-b978-4cab-8af9-aba30117a401","Episódio com o tema 'CPI na Igreja – parte 2' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Apocalipse 3. Nossa jornada pelo último livro da Bíblia, Apocalipse, continua. O professor Luiz Sayão segue falando sobre a exortação às igrejas, agora no capítulo 3: 'C.P.I na Igreja – Parte 2'. Será que esta advertência às igrejas do Apocalipse tem alguma implicação para a igreja de nossos dias? Como devemos interpretar estas cartas? Qual o significado de tantos símbolos e expressões enigmáticas?", "26:12");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Apocalipse 18 e 19 - Colapso do mercado", "6de19455-7b45-494e-94eb-aba30117a415","Episódio com o tema 'Colapso do mercado' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Apocalipse 18 e 19. Quem acredita que o dinheiro faz tudo, costuma fazer coisa inacreditável por dinheiro, não é mesmo? É, qualquer semelhança não é mera coincidência. Reflita nisso antes que você pague caro por isso.", "25:39");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Apocalipse 1 - O início do fim", "fe9315e4-684c-4e8a-8b57-aba30117a422","Episódio com o tema 'O início do fim' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Apocalipse 1. Nossa expedição chega na sua última etapa para explorar e estudar o mistério do fim do mundo! Começamos num lindo Jardim e caminhamos por desertos, passamos por civilizações históricas e conhecemos povos guerreiros e bárbaros; vimos à formação de reinos a e ruína de impérios.", "25:33");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Apocalipse 8 e 9 - Duro de matar", "87b6a009-c9fe-4ca3-848f-aba30117a403","Episódio com o tema 'Duro de matar' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Apocalipse 8 e 9. Livro de Apocalipse, capítulos 8 e 9. O professor Luiz Sayão comenta esta passagem com o tema: 'Duro de Matar'. Juízo e julgamento para quem é obstinado e tem coração de pedra. Todo aquele que não tem conhecimento da verdade, ouve a voz de Deus e faz de conta que nada aconteceu ou que não é com ele. Até parece que tem coração de galinha; Pequeno e duro; ferve, cozinha, assa e não há meios dele amolecer.", "24:20");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Apocalipse 17 - A dama de vermelho", "c231aa84-6c7e-4edf-9247-aba30117a40e","Episódio com o tema 'A dama de vermelho' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Apocalipse 17. Vamos aprender a distinguir o que está por trás de tudo que apela para a fama, fortuna e força, e que corrompe os valores cristãos. Será que a visão de desespero e caos já aconteceu? Ou ainda coisas piores virão? Vamos conferir?", "26:22");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Apocalipse 20 - A volta dos mortos vivos", "20c0300b-e8bd-40f1-a8c9-aba30117a412","Episódio com o tema 'A volta dos mortos vivos' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Apocalipse 20. Reta final de nossa aventura pelo Rota 66! Vamos entender o que é a batalha do Armagedon, o que significa milênio e como acontecerá a ressurreição dos mortos. Bom, se você vive preocupado com a morte ou morre de medo de falar no assunto, então fique com a gente e acompanhe essa exposição.", "25:48");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Apocalipse 10 e 11 - Não haverá mais demora", "b64dfd9b-f40a-4c88-a01a-aba30117a410","Episódio com o tema 'Não haverá mais demora' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Apocalipse 10 e 11. O professor Luiz Sayão vai explicar os capítulos 10 e 11 de Apocalipse, com o tema: 'Não Haverá mais Demora'. As profecias estão se cumprindo. Qual o significado dos 1.260 dias que fala a passagem? E quem seriam as duas testemunhas que são mortas e depois ressuscitam na praça central?", "25:07");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Apocalipse 14 - Foi-se a oportunidade: a hora da foice", "7d34ed6d-ec3e-44d8-a1c6-aba30117a40e","Episódio com o tema 'Foi-se a oportunidade: a hora da foice' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Apocalipse 14. Não é brincadeira, as oportunidades são como o nascer do sol. Se você esperar demais, vai perde-las. Na vida temos várias chances de reconhecer a Deus em tudo e viver segundo a sua vontade, mas sempre deixamos pra depois, não é mesmo? A hora é agora!", "25:17");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Apocalipse 15 e 16 - A Taça do mundo em jogo", "b2bb6c05-a7e7-4631-9228-aba30117a40a","Episódio com o tema 'A Taça do mundo em jogo' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Apocalipse 15 e 16. Todos preparados para embarcar em mais uma aventura do programa Rota 66? Já passamos da metade do livro do Apocalipse. Hoje o professor Luiz Sayão comenta os capítulos Quinze e Dezesseis e mostra que Deus joga duro contra toda perversidade e maldade. 'A Taça do Mundo em Jogo'. Este será o tema do nosso estudo. É, o tempo vai esquentar, fechar, terminar... Quando o assunto é pecado, o juízo chega junto! Você é o nosso convidado para analisar os fatos que irão acontecer e abalar o mundo. Veja agora o que os jornais vão publicar muito depois.", "25:48");


INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Deuteronômio 26 - Adoração verdadeira", "4f8959b9-c8e9-4135-ad7d-ab9801424878","Episódio com o tema 'Adoração verdadeira'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Deuteronômio 26. Qual deve ser o comportamento das pessoas para agradar a Deus? Será que indo à igreja uma vez por semana? Será que dando uma oferta de caridade é o suficiente? Em que consiste a verdadeira adoração?", "25:25");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("1 Samuel 23 e 24 - Aprendendo a depender de Deus", "62336433-d8fd-40ab-ae32-ab9a00e7d369","Episódio com o tema 'Aprendendo a depender de Deus'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 1 Samuel 23 e 24. Você acha que pode dar um jeitinho em todas as coisas? Pensa que é ‘esperto’? Você nuca saberá que Deus é tudo o que você precisa, até que Ele seja tudo o que você tiver.", "25:58");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("3 João 1 - Quem quer primazia, entrará numa fria", "800965f5-fa65-4d09-ae00-aba30117a3df","Episódio com o tema 'Quem quer primazia, entrará numa fria' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em 3 João 1. Nosso estudo chega hoje à Terceira Carta do Apóstolo João. O professor Luiz Sayão comenta essa pequena epístola, pouco conhecida, para apresentar um problema muito conhecido por todos nós: 'Quem quer Primazia Entrará Numa Fria'. Você já reparou quanta confusão surge porque sempre tem alguém querendo dominar e mandar em tudo? Autoritarismo destrói. Autoridade constrói.", "25:14");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Mateus 8 e 9 - Perante o poder sobrenatural, a escolha é radical", "6487a9fb-be02-4609-b87e-aba300d18284","Episódio com o tema 'Perante o poder sobrenatural, a escolha é radical' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Mateus 8 e 9. Ninguém pode ficar insensível diante de Jesus. Com tantas evidências do poder do evangelho, qual será a sua decisão? Agindo Deus, quem impedirá? Ele é o mesmo, ontem como hoje. Que tal você fazer parte desta história? Veja só.", "24:04");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Isaías 13, 14, 15, 16, 17, 18, 19, 20, 21, 22 e 23 - De nação em nação, só há desclassificação", "f20f99e0-f965-4f4f-9f08-ab9c012dc67c","Episódio com o tema 'De nação em nação, só há desclassificação' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Isaías 13, 14, 15, 16, 17, 18, 19, 20, 21, 22 e 23. Você vai descobrir neste estudo que o Deus Criador é Senhor absoluto de todas as coisas e nada e nem ninguém passa desapercebido por Ele. Se o juízo chegou para as poderosas nações do passado, com certeza chegará a nós também. É hora de levar a vida a sério! Vamos acompanhar essa explicação.", "24:36");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Isaías 48, 49, 50, 51, 52 e 53 - Você sabia que o servo sofredor é o soberano do Senhor?", "99a75b69-7892-4323-af64-ab9c012dc5f1","Episódio com o tema 'Você sabia que o servo sofredor é o soberano do Senhor?' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Isaías 48, 49, 50, 51, 52 e 53. A maior esperança da humanidade surpreende e supera toda sabedoria. Vamos descobrir que existe um Deus que faz muito mais do que pensamos ou imaginamos.", "24:40");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Isaías 2, 3 e 4 - Purificação e restauração", "b7a6b1de-21c9-454e-8a76-ab9c012dc679","Episódio com o tema 'Purificação e restauração' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Isaías 2, 3 e 4. O programa rota 66 de hoje está sensacional! É muita adrenalina de estudo bíblico da série profetas do Antigo Testamento. O Luiz Sayão está no começo do livro do profeta Isaías. Os capítulos Dois até Quatro serão explicados com o tema: 'Purificação e restauração'. Se você acha difícil entender uma profecia, imagine então entender um profeta complicado! Como é possível uma sociedade com tanto conforto e luxo menosprezar os valores essenciais da vida? Há sempre aquele momento de prestar contas. É o que vamos ouvir a partir de agora com Luiz Sayão.", "26:07");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Jeremias 30, 31, 32 e 33 - A hora da restauração, contrato novo na mão", "be431df0-b8ee-4bd4-9a5c-ab9c012dc603","Episódio com o tema 'A hora da restauração, contrato novo na mão' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Jeremias 30, 31, 32 e 33. Todos nós queremos sempre uma nova oportunidade para recomeçar. Se não houvesse esperança, não estaríamos lutando, não é mesmo? Chegamos num momento decisivo. Acompanhe essa meditação com muita atenção.", "24:37");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 101 e 102 - Deus do esplendor, Deus da dor", "9b841e5a-6f36-4e01-900a-ab9a00e7d3c1","Episódio com o tema 'Deus do esplendor, Deus da dor' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Salmos 101 e 102. Chegando ao Salmo de numero 60 nós vamos encontrar um lamento do povo de Israel que é uma oração pedindo vitória numa batalha, aqui é uma espécie de lamento em virtude de um aparente abondo da parte Deus.", "25:59");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 49 - Será que a vida tem sentido?", "8ff0b314-7ec9-410a-828f-ab9a00e7d30e","Episódio com o tema 'Será que a vida tem sentido?' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Salmo 49. O que vale não é o quanto se vive; mas como se vive. Muitas pessoas já tentaram entender o sentido da vida. Indira Gandhi foi mais criativa quando disse que, a arte da vida consiste em fazer da vida uma obra de arte!", "25:07");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 139 - Não adianta se esconder pois Deus sabe de tudo", "1818ee3a-c3a6-48e3-bf7f-ab9a00e7d32f","Episódio com o tema 'Não adianta se esconder pois Deus sabe de tudo' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Salmo 139. A série Salmos em seus momentos finais traz o tema: 'Não adianta se esconder, Deus sabe de tudo'. Esse será o assunto de Luiz Sayão em seu comentário no Salmo 139. Segredos, quem é que não guarda um segredo? Pois é, saiba que Deus conhece nosso coração e está presente em cada lugar, e tem nosso destino nas suas mãos. Deus está seguindo, examinando e desejando guiar as mais simples atividades da vida. Ele até conhece nossos pensamentos antes de nós!", "25:59");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 23 - Por que louvou? Louvou por quê?", "632d4794-37ea-4a4c-90fe-ab9a00e7d306","Episódio com o tema 'Por que louvou? Louvou por quê?'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Salmo 23. Tem muita gente que conhece o salmo do pastor, mas não sabe quem é o Pastor do Salmo. É, enquanto suspiramos por uma vida sem dificuldades, devemos nos lembrar que o carvalho cresce forte através de ventos contrários e que os diamantes são formados sob pressão.", "26:31");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 19 - O Deus que se revela", "40cf556d-b309-4766-9c8c-ab9a00e7d2f6","Episódio com o tema 'O Deus que se revela'. Apresentação: Luiz Sayão e Alberto  Veríssimo Com base em Salmo 19. Luiz Sayão nos convida para olhar os céus e contemplar o universo, uma prova visível da sabedoria, do poder, da glória e das leis de Deus. De acordo com o pensador cristão C.S.Lewis, esse é o maior poema dos Salmos e uma das maiores poesias do mundo.", "24:59");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 15 e 53 - O candidato honesto", "c8959387-fc07-46f9-9bac-ab9a00e7d2f6","Episódio com o tema 'O candidato honesto'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Salmo 15 e 53. Caminhamos agora por um terreno cheia de preciosidades divinas, Salmos. Numa época onde tantos cristãos estão com dificuldades, econômicas, familiares e emocionais, o TER acaba sendo mais importante que o SER. O equilíbrio está na busca do relacionamento com o Criador.", "25:31");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 11, 12 e 13 - Corrupção e oração, qual a sua opção?", "81819318-c7c5-4f75-b628-ab9a00e7d2f5","Episódio com o tema 'Corrupção e oração, qual a sua opção?'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Salmo 11, 12 e 13. Quem é que nunca leu um salmo quando estava angustiado ou mesmo feliz? É o livro mais querido da Bíblia, não é mesmo? Se a maldade está tomando conta de tudo, matando e enganando, o remédio é a oração. O filósofo Kierkegaard descobriu isso quando disse: A função da oração não é influenciar Deus, mas especialmente mudar a natureza daquele que ora.", "26:53");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 8 - Deus majestoso, Deus amoroso", "c681a211-709b-4cef-8030-ab9a00e7d2f2","Episódio com o tema 'Deus majestoso, Deus amoroso'. Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Salmo 8. Como entender o mundo? Santo Agostinho definiu bem a situação do homem quando disse que o reconhecimento da própria ignorância é a primeira prova de inteligência. Basta contemplar a criação no universo para reconhecer que somos pó. Sem dó descobrimos que existe um Deus que nos ama, e isso é tudo.", "24:45");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 55 - Traição: decepção e frustração", "e9d6abda-4c77-4801-8464-ab9a00e7d3a7","Episódio com o tema 'Traição: decepção e frustração' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Salmo 55. Luiz Sayão apresenta o Salmo 55. Até parece novela das oito, não é mesmo? No meio das dificuldades e das profundas tristezas, é sempre a Deus que o salmista procura.", "27:16");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 60, 61 e 62 - O poder pertence a Deus", "c854152c-f00d-4a39-9fa3-ab9a00e7d3a7","Episódio com o tema 'O poder pertence a Deus' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Salmo 60, 61 e 62. Você tem interesse em descobrir qual é o segredo da vida? Então venha com a gente explorar essas páginas sagradas para compreender que nenhuma grande vitória é possível sem que tenha sido precedida de pequenas vitórias sobre nós mesmos.", "26:48");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 37 - Quem tomará posse da terra?", "b22fe1e8-5fd3-4361-839a-ab9a00e7d39e","Episódio com o tema 'Quem tomará posse da terra?' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Salmo 37. Quem nunca ficou indignado em ver as vantagens que um desonesto consegue em seu benefício? Ora meu amigo, não desanime. O tempo investido em melhorar a nós mesmos reduz o tempo desperdiçado em desaprovar os outros.", "26:25");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 29 - Mais poderoso que um tsunami", "a6774449-2450-4d05-b4e8-ab9a00e7d395","Episódio com o tema 'Mais poderoso que um tsunami' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Salmo 29. Se você abrir a sua Bíblia bem no meio, encontrará o livro de Salmos a matéria de nosso estudo. Luiz Sayão vai examinar o Salmo 29 onde o salmista parece que vai confrontar a crendice popular. Você sabia que o orgulho é a preocupação exagerada do 'eu', que gera muitos defeitos de caráter?", "25:55");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 2 - O Rei dos reis", "c61eba69-43c8-4ff6-bece-ab9a00e7d37f","Episódio com o tema 'O Rei dos reis'. Apresentação: Luiz Sayão e Alberto Veríssimo. Com base em Salmo 2. Quem é esse grande Rei e como podemos identificá-lo nas Escrituras? Enquanto as nações tentam se organizar elegendo seus líderes, Deus, que é ignorado pelos políticos, já estabeleceu sua ordem apresentando um Rei. A decisão é sua: obedecer ao Rei ou se iludir com os reis.", "25:47");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Salmos 73 - Ser um bom rapaz foi o meu mal", "f8c5a78d-1cbf-4ebc-b042-ab9a00e7d3b1","Episódio com o tema 'Ser um bom rapaz foi o meu mal' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Salmo 73. Você sabia que a amargura estraga a nossa capacidade de pensar e agir? Por isso, o Luiz Sayão destaca o Salmo 73 para falar sobre o assunto. Será que vale a pena viver honestamente num mundo cheio de ódio e malandragem?", "25:04");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Habacuque 1 - Na hora do 'vamos ver', Deus resolve se esconder", "892f2e51-0d95-4397-a35d-ab9c012dc687","Episódio com o tema 'Na hora do 'vamos ver', Deus resolve se esconder' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Habacuque 1. Não importa as condições do tempo nossa aventura segue rumo firme! Estamos na série profetas do Antigo Testamento e hoje você vai conhecer um profeta diferente e muito parecido com a gente, Habacuque. Quantas vezes na hora da crise e do desespero, clamamos a Deus e nada parece acontecer? Se isso já aconteceu com você então se liga nesse estudo que é muito importante.", "23:32");
INSERT INTO Midia (nome, id_Streaming, small_description, time_duration)
VALUES ("Habacuque 2 e 3 - Os caminhos misteriosos de Deus", "c36eeebe-3e2f-4767-b700-ab9c012dc68b","Episódio com o tema 'Os caminhos misteriosos de Deus' Apresentação: Luiz Sayão e Alberto Veríssimo Com base em Habacuque 2 e 3. Por que acontecem coisas ruins? Se Deus é tão bom, por que ele não evita o sofrimento? Como devemos reagir quando acontecem inexplicáveis? Estes tópicos, que têm incomodado os homens durante séculos, não devem abalar nossa fé. A palavra de Deus fornece algumas respostas, mas  como ter fé quando algumas perguntas permanecem sem reposta? É o que vamos conferir a seguir.", "23:40");

/*Inserts da Tabela Midia_Capitulos*/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1, 12);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1, 18);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 2, 9);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 3, 17);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 3, 20);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 4, 6);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 4, 7);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 5, 11);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 6, 1);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 7, 33);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 8, 33);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 9, 34);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 10, 34);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 11, 21);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 12, 14);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 13, 30);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 14, 5);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 15, 31);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 16, 35);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 17, 29);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 18, 29);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 19, 41);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 20, 37);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 21, 37);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 22, 13);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 23, 39);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 24, 39);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 25, 26);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 26, 24);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 27, 25);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 28, 10);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 29, 23);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 30, 15);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 31, 16);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 32, 38);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 33, 38);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 34, 2);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 35, 42);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 36, 42);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 37, 19);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 38, 3);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 39, 27);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 40, 36);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 41, 36);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 42, 8);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 43, 22);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 44, 22);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 45, 22);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 46, 32);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 47, 32);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 48, 40);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 49, 40);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 50, 28);

/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 51, 43);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 52, 44);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 53, 45);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 54, 52);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 55, 59);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 56, 59);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 57, 49);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 58, 49);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 59, 47);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 60, 47);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 61, 50);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 62, 50);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 63, 54);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 64, 54);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 65, 56);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 66, 56);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 67, 57);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 68, 57);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 69, 53);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 70, 53);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 71, 48);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 72, 48);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 73, 48);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 74, 46);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 75, 46);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 76, 51);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 77, 51);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 78, 51);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 79, 51);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 80, 51);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 81, 51);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 82, 60);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 83, 58);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 84, 58);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 85, 55);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 86, 55);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 87, 55);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 88, 55);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 89, 55);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 90, 55);


/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 91, 69);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 92, 69);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 93, 66);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 94, 66);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 95, 66);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 96, 70);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 97, 70);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 98, 70);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 99, 70);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 100, 70);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 101, 67);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 102, 71);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 103, 71);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 104, 71);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 105, 71);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 106, 63);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 107, 72);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 108, 68);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 109, 72);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 109, 68);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 110, 68);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 111, 62);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 112, 62);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 113, 64);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 114, 64);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 115, 64);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 116, 61);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 117, 61);

/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 118, 88);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 119, 88);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 120, 88);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 121, 88);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 122, 79);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 123, 79);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 124, 84);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 125, 84);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 126, 84);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 127, 82);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 128, 82);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 129, 80);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 130, 80);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 131, 77);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 132, 78);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 133, 78);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 134, 78);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 135, 81);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 136, 81);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 137, 81);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 138, 75);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 139, 87);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 140, 87);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 141, 87);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 142, 74);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 143, 73);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 144, 76);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 145, 85);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 146, 85);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 147, 85);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 148, 83);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 149, 83);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 150, 86);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 151, 86);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 152, 86);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 153, 86);


/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 154, 97);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 155, 100);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 156, 100);
 INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 157, 101);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 158, 93);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 159, 90);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 160, 89);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 161, 99);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 162, 99);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 163, 98);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 164, 98);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 165, 105);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 166, 105);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 167, 92);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 168, 92);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 169, 106);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 170, 106);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 171, 106);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 172, 104);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 173, 104);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 174, 104);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 175, 94);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 176, 94);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 177, 91);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 178, 91);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 180, 103);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 181, 103);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 182, 96);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 183, 96);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 184, 102);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 185, 102);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 186, 95);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 187, 95);


/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 188, 107);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 189, 116);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 190, 117);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 191, 117);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 192, 114);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 193, 114);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 194, 112);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 195, 109);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 196, 109);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 197, 108);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 198, 111);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 199, 111);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 200, 118);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 201, 118);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 202, 118);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 203, 118);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 204, 118);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 205, 118);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 206, 118);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 207, 113);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 208, 113);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 209, 110);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 210, 115);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 211, 115);

/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 212, 119);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 213, 119);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 214, 123);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 215, 120);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 216, 120);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 217, 128);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 218, 122);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 219, 122);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 220, 126);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 221, 124);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 222, 124);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 223, 130);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 224, 130);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 225, 125);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 226, 125);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 227, 129);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 228, 121);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 229, 121);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 230, 127);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 231, 127);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 232, 127);

/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 233, 132);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 234, 133);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 235, 131);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 236, 134);

/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 237, 136);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 238, 143);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 239, 143);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 240, 146);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 241, 146);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 242, 148);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 243, 148);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 244, 149);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 245, 149);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 246, 152);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 247, 152);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 248, 147);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 249, 147);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 250, 151);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 251, 141);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 252, 135);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 253, 137);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 254, 138);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 255, 142);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 256, 142);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 257, 139);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 258, 139);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 261, 150);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 262, 144);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 263, 144);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 264, 140);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 265, 153);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 266, 153);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 267, 145);

/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 268, 154);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 269, 155);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 270, 155);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 271, 155);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 272, 156);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 273, 157);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 274, 158);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 275, 159);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 276, 159);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 277, 159);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 278, 160);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 279, 161);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 280, 162);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 281, 163);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 282, 163);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 282, 164);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 283, 164);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 284, 165);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 285, 165);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 285, 166);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 286, 166);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 287, 167);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 288, 167);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 289, 168);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 290, 168);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 291, 169);

/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 292, 170);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 293, 170);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 294, 176);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 295, 176);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 296, 179);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 297, 179);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 298, 173);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 299, 173);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 300, 174);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 301, 174);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 302, 175);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 303, 175);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 304, 180);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 305, 180);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 306, 178);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 307, 178);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 308, 177);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 309, 177);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 310, 171);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 311, 181);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 312, 172);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 313, 181);

/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 314, 185);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 315, 185);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 316, 183);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 317, 183);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 318, 188);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 319, 188);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 320, 184);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 321, 184);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 322, 190);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 323, 190);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 324, 190);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 325, 182);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 326, 182);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 327, 182);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 328, 182);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 329, 189);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 330, 189);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 331, 186);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 332, 186);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 333, 186);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 334, 187);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 335, 187);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 336, 187);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 337, 191);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 338, 191);

/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 339, 197);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 340, 197);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 341, 197);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 342, 197);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 343, 197);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 344, 197);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 345, 197);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 346, 197);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 347, 197);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 348, 192);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 349, 192);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 350, 192);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 351, 194);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 352, 194);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 353, 194);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 354, 194);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 355, 195);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 356, 195);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 357, 195);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 358, 195);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 359, 196);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 360, 196);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 361, 193);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 362, 193);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 363, 193);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 364, 193);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 365, 193);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 366, 193);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 367, 193);


/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 368, 198);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 369, 198);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 370, 198);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 371, 198);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 372, 200);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 373, 200);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 374, 200);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 375, 205);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 376, 205);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 377, 205);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 378, 205);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 379, 205);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 380, 199);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 381, 199);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 382, 199);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 383, 199);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 384, 202);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 385, 202);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 386, 202);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 387, 202);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 388, 203);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 389, 203);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 390, 203);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 391, 203);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 392, 203);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 393, 204);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 394, 204);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 395, 204);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 396, 204);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 397, 204);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 398, 201);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 399, 201);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 400, 201);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 401, 201);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 402, 201);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 403, 201);


/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 404, 208);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 405, 208);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 406, 208);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 407, 206);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 408, 206);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 409, 206);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 410, 207);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 411, 207);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 412, 209);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 413, 209);

/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 414, 212);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 415, 212);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 416, 211);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 417, 211);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 418, 210);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 419, 214);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 420, 214);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 421, 213);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 422, 213);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 423, 213);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 424, 215);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 425, 215);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 426, 215);


/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 427, 216);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 428, 217);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 429, 218);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 430, 218);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 431, 219);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 432, 219);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 433, 219);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 434, 220);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 435, 220);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 436, 220);


/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 437, 221);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 438, 224);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 439, 225);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 440, 225);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 441, 225);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 442, 225);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 443, 225);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 444, 226);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 445, 226);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 446, 226);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 447, 227);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 448, 227);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 449, 227);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 450, 227);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 451, 228);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 452, 228);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 453, 228);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 454, 228);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 455, 228);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 456, 228);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 457, 228);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 458, 231);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 459, 231);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 460, 231);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 461, 231);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 462, 231);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 463, 229);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 464, 229);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 465, 229);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 466, 229);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 467, 229);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 468, 230);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 469, 230);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 470, 230);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 471, 230);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 472, 230);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 473, 230);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 474, 222);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 475, 222);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 476, 222);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 477, 222);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 478, 223);


/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 479, 274);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 481, 266);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 482, 266);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 483, 266);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 484, 244);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 485, 244);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 487, 243);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 488, 243);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 492, 269);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 494, 240);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 495, 240);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 496, 240);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 498, 254);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 498, 247);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 499, 247);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 503, 259);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 504, 259);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 505, 237);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 506, 237);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 508, 233);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 509, 233);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 510, 241);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 511, 255);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 512, 255);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 513, 249);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 514, 249);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 516, 236);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 517, 236);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 518, 232);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 519, 232);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 520, 268);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 521, 268);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 522, 268);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 523, 257);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 524, 257);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 525, 257);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 524, 238);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 525, 238);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 526, 238);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 527, 238);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 528, 272);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 529, 241);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 530, 272);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 531, 269);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 532, 272);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 534, 250);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 535, 250);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 536, 250);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 537, 250);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 541, 251);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 542, 251);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 543, 251);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 544, 239);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 545, 239);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 546, 239);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 547, 254);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 548, 256);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 549, 256);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 550, 267);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 551, 267);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 552, 267);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 553, 267);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 552, 263);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 553, 263);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 554, 263);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 555, 263);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 556, 263);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 557, 263);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 554, 271);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 555, 271);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 556, 271);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 558, 262);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 559, 262);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 560, 262);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 561, 262);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 559, 245);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 560, 245);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 561, 245);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 562, 245);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 560, 275);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 563, 275);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 564, 275);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 565, 260);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 566, 260);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 567, 260);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 568, 235);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 569, 235);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 570, 235);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 571, 235);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 569, 242);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 570, 242);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 572, 252);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 573, 252);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 574, 252);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 575, 252);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 576, 252);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 577, 252);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 578, 252);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 581, 253);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 585, 270);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 586, 270);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 587, 270);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 588, 258);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 589, 258);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 590, 258);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 591, 273);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 592, 273);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 593, 273);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 594, 273);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 595, 273);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 596, 273);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 597, 276);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 598, 265);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 599, 265);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 600, 265);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 601, 265);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 602, 265);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 603, 265);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 604, 265);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 605, 261);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 606, 261);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 607, 261);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 608, 261);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 609, 261);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 610, 261);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 611, 261);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 612, 261);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 613, 246);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 614, 246);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 615, 246);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 616, 264);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 617, 264);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 618, 264);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 619, 264);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 620, 264);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 621, 264);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 622, 234);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 623, 234);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 624, 248);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 625, 248);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 626, 248);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 627, 248);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 628, 248);

/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 629, 283);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 630, 283);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 631, 282);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 632, 282);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 633, 288);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 634, 288);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 635, 288);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 636, 277);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 637, 277);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 638, 289);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 639, 289);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 640, 289);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 641, 285);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 642, 285);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 643, 285);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 644, 279);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 645, 279);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 646, 279);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 647, 287);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 648, 287);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 649, 278);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 650, 278);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 651, 284);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 652, 284);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 653, 281);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 654, 281);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 655, 281);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 656, 280);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 657, 280);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 658, 286);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 659, 286);

/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 660, 290);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 661, 290);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 662, 292);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 663, 292);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 664, 291);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 665, 292);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 666, 293);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 667, 293);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 668, 295);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 669, 295);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 670, 294);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 671, 294);

/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 672, 296);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 673, 296);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 674, 296);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 675, 296);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 675, 297);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 676, 297);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 677, 297);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 678, 297);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 679, 297);



/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 680, 298);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 684, 300);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 685, 300);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 686, 304);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 687, 304);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 688, 301);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 689, 301);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 690, 302);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 691, 302);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 703, 303);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 704, 303);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 705, 303);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 706, 303);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 707, 312);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 708, 312);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 709, 312);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 710, 312);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 711, 312);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 712, 312);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 713, 309);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 714, 309);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 715, 308);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 716, 308);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 717, 299);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 718, 299);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 719, 307);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 720, 307);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 721, 307);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 722, 311);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 723, 311);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 724, 311);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 725, 311);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 726, 311);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 733, 310);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 734, 310);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 735, 310);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 736, 310);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 737, 305);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 738, 305);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 739, 305);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 740, 305);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 741, 306);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 742, 306);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 743, 306);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 744, 306);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 745, 306);

/**/

INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 746, 313);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 747, 321);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 748, 321);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 749, 321);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 750, 321);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 751, 321);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 752, 317);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 753, 317);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 754, 317);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 755, 317);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 756, 324);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 757, 324);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 758, 324);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 759, 324);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 760, 324);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 761, 314);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 762, 314);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 763, 326);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 764, 326);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 765, 326);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 766, 315);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 767, 315);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 768, 315);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 769, 316);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 770, 316);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 771, 319);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 772, 319);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 773, 319);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 774, 319);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 779, 318);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 780, 318);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 781, 323);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 782, 323);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 783, 323);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 784, 320);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 785, 322);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 786, 322);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 787, 322);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 788, 322);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 789, 322);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 790, 322);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 791, 325);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 792, 325);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 793, 325);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 794, 325);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 795, 325);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 796, 325);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 797, 320);


/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 798, 327);

/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 803, 328);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 804, 335);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 805, 335);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 806, 332);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 807, 332);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 808, 332);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 809, 332);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 810, 340);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 811, 340);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 812, 340);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 813, 340);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 814, 333);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 815, 333);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 816, 333);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 817, 338);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 818, 338);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 819, 338);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 820, 334);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 821, 334);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 822, 339);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 823, 339);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 824, 339);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 825, 339);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 826, 339);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 827, 336);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 828, 336);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 829, 336);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 830, 336);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 831, 336);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 832, 336);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 833, 336);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 834, 336);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 835, 331);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 836, 331);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 837, 331);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 838, 331);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 839, 329);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 840, 330);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 841, 330);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 842, 337);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 843, 337);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 844, 337);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 845, 337);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 846, 337);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 847, 337);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 848, 337);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 849, 337);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 850, 337);

/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 851, 348);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 852, 345);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 853, 341);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 854, 344);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 855, 346);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 856, 349);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 857, 343);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 858, 350);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 859, 350);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 860, 342);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 861, 347);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 862, 347);

/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 863, 351);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 864, 352);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 865, 352);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 866, 353);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 867, 353);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 868, 353);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 869, 353);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 870, 353);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 871, 353);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 872, 353);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 873, 354);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 874, 354);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 875, 354);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 876, 354);


/**/

INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 877, 355);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 878, 355);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 879, 355);

/**/

INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 880, 356);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 881, 356);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 882, 357);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 883, 357);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 884, 357);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 885, 357);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 886, 358);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 887, 358);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 888, 358);

/**/

INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 889, 359);

/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 890, 360);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 891, 360);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 892, 361);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 893, 361);

/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 894, 362);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 895, 362);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 896, 362);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 897, 362);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 898, 363);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 899, 363);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 900, 363);

/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 901, 364);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 902, 364);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 903, 364);


/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 907, 365);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 908, 365);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 909, 365);

/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 910, 366);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 911, 367);

/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 912, 369);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 913, 369);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 914, 369);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 915, 368);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 916, 368);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 917, 368);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 918, 371);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 919, 371);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 920, 370);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 921, 370);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 922, 370);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 923, 370);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 924, 370);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 925, 370);

/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 926, 372);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 927, 373);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 928, 374);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 929, 374);

/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 930, 384);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 931, 381);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 932, 392);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 933, 389);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 934, 377);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 935, 380);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 936, 382);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 939, 379);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 940, 388);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 941, 388);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 942, 376);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 943, 395);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 944, 396);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 945, 396);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 946, 390);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 947, 393);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 948, 394);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 948, 398);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 949, 394);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 950, 378);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 951, 383);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 952, 391);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 953, 385);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 954, 397);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 955, 375);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 956, 386);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 957, 387);


/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 958, 399);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 959, 408);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 960, 408);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 961, 404);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 962, 402);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 963, 403);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 963, 411);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 964, 409);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 965, 409);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 966, 401);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 967, 405);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 968, 407);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 969, 407);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 970, 400);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 971, 406);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 972, 410);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 973, 410);


/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 974, 427);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 975, 412);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 976, 429);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 977, 429);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 977, 430);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 978, 430);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 979, 419);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 980, 425);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 981, 418);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 982, 414);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 983, 424);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 984, 428);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 985, 420);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 986, 423);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 987, 423);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 988, 416);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 989, 421);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 990, 413);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 991, 415);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 992, 426);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 993, 426);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 994, 422);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 995, 422);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 995, 431);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 996, 431);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 997, 417);


/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 998, 438);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 999, 443);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1000, 451);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1001, 437);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1002, 448);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1003, 446);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1004, 442);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1005, 449);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1006, 445);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1007, 433);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1008, 441);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1009, 434);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1010, 450);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1011, 439);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1012, 436);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1013, 447);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1014, 444);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1015, 452);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1016, 452);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1017, 440);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1018, 435);


/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1019, 471);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1020, 458);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1021, 468);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1022, 468);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1022, 463);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1023, 463);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1024, 467);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1025, 467);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1026, 462);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1027, 465);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1028, 465);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1029, 461);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1030, 461);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1031, 455);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1032, 456);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1033, 456);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1033, 469);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1034, 469);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1035, 459);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1036, 459);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1036, 472);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1037, 472);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1038, 466);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1039, 466);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1039, 460);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1040, 460);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1041, 454);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1042, 470);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1043, 470);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1044, 470);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1045, 457);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1046, 464);

/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1047, 478);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1048, 486);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1049, 485);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1050, 483);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1051, 484);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1052, 473);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1053, 482);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1054, 474);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1055, 475);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1056, 476);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1057, 476);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1058, 481);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1059, 480);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1060, 477);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1061, 479);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1062, 479);

/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1063, 499);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1064, 499);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1064, 489);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1065, 489);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1066, 492);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1067, 498);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1068, 498);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1069, 497);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1070, 494);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1071, 494);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1072, 487);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1073, 490);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1074, 496);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1075, 488);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1076, 493);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1077, 495);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1078, 491);


/**/

INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1079, 503);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1080, 503);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1081, 502);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1082, 504);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1083, 504);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1084, 500);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1085, 500);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1086, 501);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1087, 501);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1088, 505);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1089, 505);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1090, 506);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1091, 506);


/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1092, 510);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1093, 508);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1094, 511);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1094, 512);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1095, 512);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1096, 507);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1097, 509);

/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1098, 513);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1099, 517);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1100, 515);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1101, 514);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1102, 514);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1102, 516);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1103, 516);


/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1104, 518);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1105, 520);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1106, 519);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1107, 521);

/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1108, 523);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1109, 522);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1110, 524);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1110, 525);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1111, 525);

/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1112, 527);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1113, 527);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1113, 528);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1114, 526);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1115, 528);

/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1117, 529);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1118, 530);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1119, 531);

/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1120, 536);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1121, 537);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1122, 533);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1123, 534);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1124, 532);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1125, 535);

/**/

INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1126, 539);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1127, 539);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1128, 540);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1129, 538);

/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1130, 541);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1131, 542);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1132, 542);

/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1133, 543);

/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1134, 547);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1135, 555);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1136, 550);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1137, 551);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1138, 548);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1139, 548);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1140, 546);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1141, 549);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1142, 552);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1143, 552);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1143, 553);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1144, 553);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1145, 554);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1146, 544);

/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1147, 556);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1148, 559);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1149, 558);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1150, 558);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1150, 557);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1151, 557);

/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1152, 560);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1153, 563);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1154, 562);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1155, 561);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1156, 561);


/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1157, 566);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1158, 565);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1159, 564);

/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1160, 567);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1161, 568);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1161, 570);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1162, 568);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1163, 569);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1164, 569);

/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1165, 571);

/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1167, 572);

/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1168, 583);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1169, 577);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1170, 581);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1171, 578);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1172, 578);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1173, 576);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1174, 573);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1175, 584);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1176, 584);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1177, 587);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1178, 587);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1179, 580);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1180, 574);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1181, 588);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1182, 589);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1183, 589);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1184, 585);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1185, 582);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1186, 582);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1187, 586);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1188, 579);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1189, 575);

/**/
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 179, 590);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 259, 591);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 260, 591);

INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 1166, 592);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 937, 593);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 938, 593);

INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 692, 594);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 693, 594);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 694, 594);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 695, 594);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 696, 594);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 697, 594);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 698, 594);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 699, 594);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 700, 594);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 701, 594);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 702, 594);


INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 727, 595);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 728, 595);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 729, 595);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 730, 595);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 731, 595);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 732, 595);


INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 681, 596);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 682, 596);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 683, 596);

INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 775, 597);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 776, 597);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 777, 597);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 778, 597);

INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 579, 598);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 580, 598);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 527, 599);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 617, 600);

INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 501, 601);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 497, 602);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 493, 603);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 531, 603);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 489, 604);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 490, 604);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 491, 604);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 486, 605);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 533, 606);

INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 538, 607);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 539, 607);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 540, 607);

INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 515, 608);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 507, 609);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 480, 610);

INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 551, 611);

INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 904, 612);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 905, 613);
INSERT INTO midia_capitulos (id_cap, id_midia )
VALUES ( 906, 613);












/*Inserts Livros Antigo Testamento*/

INSERT INTO Livros (nome_livro, testamento)
VALUES ("Gênesis", "Antigo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("Êxodo", "Antigo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("Levítico", "Antigo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("Números", "Antigo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("Deuteronômio", "Antigo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("Josué", "Antigo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("Juízes", "Antigo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("Rute", "Antigo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("1 Samuel", "Antigo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("2 Samuel", "Antigo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("1 Reis", "Antigo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("2 Reis", "Antigo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("1 Crônicas", "Antigo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("2 Crônicas", "Antigo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("Esdras", "Antigo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("Neemias", "Antigo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("Ester", "Antigo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("Jó", "Antigo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("Salmos", "Antigo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("Provérbios", "Antigo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("Eclesiastes", "Antigo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("Cantares", "Antigo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("Isaías", "Antigo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("Jeremias", "Antigo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("Lamentações", "Antigo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("Ezequiel", "Antigo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("Daniel", "Antigo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("Oseias", "Antigo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("Joel", "Antigo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("Amós", "Antigo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("Obadias", "Antigo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("Jonas", "Antigo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("Miqueias", "Antigo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("Naum", "Antigo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("Habacuque", "Antigo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("Sofonias", "Antigo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("Ageu", "Antigo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("Zacarias", "Antigo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("Malaquias", "Antigo Testamento");
/* Fim dos Inserts de Livros Antigo Testamento*/


/*Inserts Livros Novo Testamento*/
INSERT INTO Livros (nome_livro, testamento)
VALUES ("Mateus", "Novo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("Marcos", "Novo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("Lucas", "Novo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("João", "Novo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("Atos", "Novo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("Romanos", "Novo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("1 Coríntios", "Novo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("2 Coríntios", "Novo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("Gálatas", "Novo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("Efésios", "Novo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("Filipenses", "Novo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("Colossenses", "Novo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("1 Tessalonicenses", "Novo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("2 Tessalonicenses", "Novo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("1 Timóteo", "Novo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("2 Timóteo", "Novo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("Tito", "Novo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("Filemon", "Novo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("Hebreus", "Novo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("Tiago", "Novo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("1 Pedro", "Novo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("2 Pedro", "Novo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("1 João", "Novo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("2 João", "Novo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("3 João", "Novo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("Judas", "Novo Testamento");
INSERT INTO Livros (nome_livro, testamento)
VALUES ("Apocalipse", "Novo Testamento");
/* Fim dos Inserts de Livros Novo Testamento*/



/*Gênesis*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Gn. 1", 1 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Gn. 2", 1 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Gn. 3", 1 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Gn. 4", 1 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Gn. 5", 1 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Gn. 6", 1 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Gn. 7", 1 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Gn. 8", 1 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Gn. 9", 1 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Gn. 10", 1 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Gn. 11", 1 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Gn. 12", 1 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "Gn. 13", 1 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "Gn. 14", 1 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "Gn. 15", 1 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "Gn. 16", 1 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (17, "Gn. 17", 1 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (18, "Gn. 18", 1 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (19, "Gn. 19", 1 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (20, "Gn. 20", 1 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (21, "Gn. 21", 1 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (22, "Gn. 22", 1 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (23, "Gn. 23", 1 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (24, "Gn. 24", 1 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (25, "Gn. 25", 1 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (26, "Gn. 26", 1 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (27, "Gn. 27", 1 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (28, "Gn. 28", 1 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (29, "Gn. 29", 1 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (30, "Gn. 30", 1 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (31, "Gn. 31", 1 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (32, "Gn. 32", 1 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (33, "Gn. 33", 1 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (34, "Gn. 34", 1 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (35, "Gn. 35", 1 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (36, "Gn. 36", 1 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (37, "Gn. 37", 1 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (38, "Gn. 38", 1 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (39, "Gn. 39", 1 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (40, "Gn. 40", 1 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (41, "Gn. 41", 1 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (42, "Gn. 42", 1 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (43, "Gn. 43", 1 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (44, "Gn. 44", 1 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (45, "Gn. 45", 1 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (46, "Gn. 46", 1 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (47, "Gn. 47", 1 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (48, "Gn. 48", 1 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (49, "Gn. 49", 1 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (50, "Gn. 50", 1 );


/*Êxodos*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Êx. 1", 2 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Êx. 2", 2 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Êx. 3", 2 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Êx. 4", 2 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Êx. 5", 2 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Êx. 6", 2 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Êx. 7", 2 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Êx. 8", 2 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Êx. 9", 2 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Êx. 10", 2 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Êx. 11", 2 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Êx. 12", 2 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "Êx. 13", 2 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "Êx. 14", 2 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "Êx. 15", 2 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "Êx. 16", 2 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (17, "Êx. 17", 2 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (18, "Êx. 18", 2 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (19, "Êx. 19", 2 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (20, "Êx. 20", 2 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (21, "Êx. 21", 2 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (22, "Êx. 22", 2 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (23, "Êx. 23", 2 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (24, "Êx. 24", 2 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (25, "Êx. 25", 2 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (26, "Êx. 26", 2 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (27, "Êx. 27", 2 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (28, "Êx. 28", 2 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (29, "Êx. 29", 2 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (30, "Êx. 30", 2 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (31, "Êx. 31", 2 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (32, "Êx. 32", 2 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (33, "Êx. 33", 2 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (34, "Êx. 34", 2 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (35, "Êx. 35", 2 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (36, "Êx. 36", 2);
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (37, "Êx. 37", 2 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (38, "Êx. 38", 2 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (39, "Êx. 39", 2 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (40, "Êx. 40", 2 );

/*Levítico*/

INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Lv. 1", 3 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Lv. 2", 3 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Lv. 3", 3 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Lv. 4", 3 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Lv. 5", 3 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Lv. 6", 3 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Lv. 7", 3 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Lv. 8", 3 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Lv. 9", 3 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Lv. 10", 3 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Lv. 11", 3 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Lv. 12", 3 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "Lv. 13", 3 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "Lv. 14", 3 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "Lv. 15", 3 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "Lv. 16", 3 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (17, "Lv. 17", 3 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (18, "Lv. 18", 3 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (19, "Lv. 19", 3 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (20, "Lv. 20", 3 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (21, "Lv. 21", 3 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (22, "Lv. 22", 3 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (23, "Lv. 23", 3 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (24, "Lv. 24", 3 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (25, "Lv. 25", 3 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (26, "Lv. 26", 3 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (27, "Lv. 27", 3 );

/*Números*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Nm. 1", 4 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Nm. 2", 4 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Nm. 3", 4 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Nm. 4", 4 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Nm. 5", 4 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Nm. 6", 4 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Nm. 7", 4 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Nm. 8", 4 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Nm. 9", 4 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Nm. 10", 4 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Nm. 11", 4 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Nm. 12", 4 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "Nm. 13", 4 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "Nm. 14", 4 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "Nm. 15", 4 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "Nm. 16", 4 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (17, "Nm. 17", 4 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (18, "Nm. 18", 4 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (19, "Nm. 19", 4 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (20, "Nm. 20", 4 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (21, "Nm. 21", 4 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (22, "Nm. 22", 4 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (23, "Nm. 23", 4 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (24, "Nm. 24", 4 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (25, "Nm. 25", 4 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (26, "Nm. 26", 4 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (27, "Nm. 27", 4 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (28, "Nm. 28", 4 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (29, "Nm. 29", 4 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (30, "Nm. 30", 4 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (31, "Nm. 31", 4 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (32, "Nm. 32", 4 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (33, "Nm. 33", 4 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (34, "Nm. 34", 4 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (35, "Nm. 35", 4 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (36, "Nm. 36", 4);

/*Deuteronômio*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Dt. 1", 5 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Dt. 2", 5 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Dt. 3", 5 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Dt. 4", 5 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Dt. 5", 5 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Dt. 6", 5 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Dt. 7", 5 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Dt. 8", 5 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Dt. 9", 5 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Dt. 10", 5 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Dt. 11", 5 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Dt. 12", 5 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "Dt. 13", 5 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "Dt. 14", 5 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "Dt. 15", 5 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "Dt. 16", 5 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (17, "Dt. 17", 5 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (18, "Dt. 18", 5 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (19, "Dt. 19", 5 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (20, "Dt. 20", 5 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (21, "Dt. 21", 5 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (22, "Dt. 22", 5 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (23, "Dt. 23", 5 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (24, "Dt. 24", 5 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (25, "Dt. 25", 5 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (26, "Dt. 26", 5 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (27, "Dt. 27", 5 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (28, "Dt. 28", 5 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (29, "Dt. 29", 5 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (30, "Dt. 30", 5 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (31, "Dt. 31", 5 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (32, "Dt. 32", 5 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (33, "Dt. 33", 5 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (34, "Dt. 34", 5 );


/*Josué*/

INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Js. 1", 6 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Js. 2", 6 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Js. 3", 6 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Js. 4", 6 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Js. 5", 6 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Js. 6", 6 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Js. 7", 6 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Js. 8", 6 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Js. 9", 6 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Js. 10", 6 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Js. 11", 6 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Js. 12", 6 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "Js. 13", 6 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "Js. 14", 6 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "Js. 15", 6 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "Js. 16", 6 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (17, "Js. 17", 6 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (18, "Js. 18", 6 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (19, "Js. 19", 6 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (20, "Js. 20", 6 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (21, "Js. 21", 6 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (22, "Js. 22", 6 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (23, "Js. 23", 6 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (24, "Js. 24", 6 );

/*Juízes*/

INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Jz. 1", 7 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Jz. 2", 7 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Jz. 3", 7 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Jz. 4", 7 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Jz. 5", 7 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Jz. 6", 7 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Jz. 7", 7 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Jz. 8", 7 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Jz. 9", 7 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Jz. 10", 7 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Jz. 11", 7 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Jz. 12", 7 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "Jz. 13", 7 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "Jz. 14", 7 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "Jz. 15", 7 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "Jz. 16", 7 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (17, "Jz. 17", 7 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (18, "Jz. 18", 7 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (19, "Jz. 19", 7 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (20, "Jz. 20", 7 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (21, "Jz. 21", 7 );

/*Rute*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Rt. 1", 8 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Rt. 2", 8 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Rt. 3", 8 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Rt. 4", 8 );

/*1 Samuel*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "1º Sm. 1", 9 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "1º Sm. 2", 9 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "1º Sm. 3", 9 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "1º Sm. 4", 9 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "1º Sm. 5", 9 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "1º Sm. 6", 9 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "1º Sm. 7", 9 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "1º Sm. 8", 9 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "1º Sm. 9", 9 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "1º Sm. 10", 9 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "1º Sm. 11", 9 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "1º Sm. 12", 9 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "1º Sm. 13", 9 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "1º Sm. 14", 9 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "1º Sm. 15", 9 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "1º Sm. 16", 9 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (17, "1º Sm. 17", 9 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (18, "1º Sm. 18", 9 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (19, "1º Sm. 19", 9 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (20, "1º Sm. 20", 9 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (21, "1º Sm. 21", 9 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (22, "1º Sm. 22", 9 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (23, "1º Sm. 23", 9 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (24, "1º Sm. 24", 9 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (25, "1º Sm. 25", 9 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (26, "1º Sm. 26", 9 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (27, "1º Sm. 27", 9 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (28, "1º Sm. 28", 9 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (29, "1º Sm. 29", 9 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (30, "1º Sm. 30", 9 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (31, "1º Sm. 31", 9 );

/*2 Samuel*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "2º Sm. 1", 10 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "2º Sm. 2", 10 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "2º Sm. 3", 10 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "2º Sm. 4", 10 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "2º Sm. 5", 10 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "2º Sm. 6", 10 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "2º Sm. 7", 10 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "2º Sm. 8", 10 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "2º Sm. 9", 10 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "2º Sm. 10", 10 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "2º Sm. 11", 10 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "2º Sm. 12", 10 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "2º Sm. 13", 10 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "2º Sm. 14", 10 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "2º Sm. 15", 10 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "2º Sm. 16", 10 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (17, "2º Sm. 17", 10 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (18, "2º Sm. 18", 10 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (19, "2º Sm. 19", 10 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (20, "2º Sm. 20", 10 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (21, "2º Sm. 21", 10 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (22, "2º Sm. 22", 10 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (23, "2º Sm. 23", 10 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (24, "2º Sm. 24", 10 );


/*1 Reis*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "1º Rs. 1", 11 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "1º Rs. 2", 11 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "1º Rs. 3", 11 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "1º Rs. 4", 11 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "1º Rs. 5", 11 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "1º Rs. 6", 11 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "1º Rs. 7", 11 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "1º Rs. 8", 11 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "1º Rs. 9", 11 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "1º Rs. 10", 11 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "1º Rs. 11", 11 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "1º Rs 12", 11 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "1º Rs. 13", 11 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "1º Rs. 14", 11 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "1º Rs. 15", 11 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "1º Rs. 16", 11 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (17, "1º Rs. 17", 11 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (18, "1º Rs. 18", 11 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (19, "1º Rs. 19", 11 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (20, "1º Rs. 20", 11 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (21, "1º Rs. 21", 11 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (22, "1º Rs. 22", 11 );


/*2 Reis*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "2º Rs. 1", 12 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "2º Rs. 2", 12 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "2º Rs. 3", 12 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "2º Rs. 4", 12 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "2º Rs. 5", 12 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "2º Rs. 6", 12 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "2º Rs. 7", 12 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "2º Rs. 8", 12 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "2º Rs. 9", 12 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "2º Rs. 10", 12 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "2º Rs. 11", 12 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "2º Rs 12", 12 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "2º Rs. 13", 12 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "2º Rs. 14", 12 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "2º Rs. 15", 12 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "2º Rs. 16", 12 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (17, "2º Rs. 17", 12 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (18, "2º Rs. 18", 12 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (19, "2º Rs. 19", 12 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (20, "2º Rs. 20", 12 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (21, "2º Rs. 21", 12 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (22, "2º Rs. 22", 12 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (23, "2º Rs. 23", 12 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (24, "2º Rs. 24", 12 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (25, "2º Rs. 25", 12 );



/*1 Crônicas*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "1º Cr. 1", 13 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "1º Cr. 2", 13 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "1º Cr. 3", 13 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "1º Cr. 4", 13 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "1º Cr. 5", 13 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "1º Cr. 6", 13 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "1º Cr. 7", 13 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "1º Cr. 8", 13 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "1º Cr. 9", 13 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "1º Cr. 10", 13 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "1º Cr. 11", 13 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "1º Cr. 12", 13 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "1º Cr. 13", 13 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "1º Cr. 14", 13 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "1º Cr. 15", 13 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "1º Cr. 16", 13 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (17, "1º Cr. 17", 13 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (18, "1º Cr. 18", 13 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (19, "1º Cr. 19", 13 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (20, "1º Cr. 20", 13 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (21, "1º Cr. 21", 13 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (22, "1º Cr. 22", 13 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (23, "1º Cr. 23", 13 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (24, "1º Cr. 24", 13 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (25, "1º Cr. 25", 13 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (26, "1º Cr. 26", 13 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (27, "1º Cr. 27", 13 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (28, "1º Cr. 28", 13 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (29, "1º Cr. 29", 13 );


/*2 Crônicas*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "2º Cr. 1", 14 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "2º Cr. 2", 14 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "2º Cr. 3", 14 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "2º Cr. 4", 14 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "2º Cr. 5", 14 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "2º Cr. 6", 14 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "2º Cr. 7", 14 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "2º Cr. 8", 14 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "2º Cr. 9", 14 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "2º Cr. 10", 14 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "2º Cr. 11", 14 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "2º Cr. 12", 14 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "2º Cr. 13", 14 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "2º Cr. 14", 14 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "2º Cr. 15", 14 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "2º Cr. 16", 14 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (17, "2º Cr. 17", 14 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (18, "2º Cr. 18", 14 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (19, "2º Cr. 19", 14 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (20, "2º Cr. 20", 14 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (21, "2º Cr. 21", 14 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (22, "2º Cr. 22", 14 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (23, "2º Cr. 23", 14 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (24, "2º Cr. 24", 14 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (25, "2º Cr. 25", 14 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (26, "2º Cr. 26", 14 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (27, "2º Cr. 27", 14 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (28, "2º Cr. 28", 14 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (29, "2º Cr. 29", 14 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (30, "2º Cr. 30", 14 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (31, "2º Cr. 31", 14 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (32, "2º Cr. 32", 14 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (33, "2º Cr. 33", 14 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (34, "2º Cr. 34", 14 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (35, "2º Cr. 35", 14 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (36, "2º Cr. 36", 14 );


/*Esdras*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Ed. 1", 15 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Ed. 2", 15 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Ed. 3", 15 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Ed. 4", 15 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Ed. 5", 15 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Ed. 6", 15 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Ed. 7", 15 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Ed. 8", 15 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Ed. 9", 15 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Ed. 10", 15 );


/*Neemias*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Ne. 1", 16 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Ne. 2", 16 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Ne. 3", 16 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Ne. 4", 16 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Ne. 5", 16 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Ne. 6", 16 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Ne. 7", 16 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Ne. 8", 16 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Ne. 9", 16 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Ne. 10", 16 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Ne. 11", 16 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Ne. 12", 16 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "Ne. 13", 16 );


/*Ester*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Et. 1", 17 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Et. 2", 17 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Et. 3", 17 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Et. 4", 17 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Et. 5", 17 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Et. 6", 17 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Et. 7", 17 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Et. 8", 17 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Et. 9", 17 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Et. 10", 17 );


/*Jó*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Jó. 1", 18 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Jó. 2", 18 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Jó. 3", 18 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Jó. 4", 18 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Jó. 5", 18 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Jó. 6", 18 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Jó. 7", 18 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Jó. 8", 18 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Jó. 9", 18 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Jó. 10", 18 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Jó. 11", 18 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Jó. 12", 18 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "Jó. 13", 18 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "Jó. 14", 18 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "Jó. 15", 18 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "Jó. 16", 18 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (17, "Jó. 17", 18 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (18, "Jó. 18", 18 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (19, "Jó. 19", 18 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (20, "Jó. 20", 18 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (21, "Jó. 21", 18 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (22, "Jó. 22", 18 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (23, "Jó. 23", 18 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (24, "Jó. 24", 18 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (25, "Jó. 25", 18 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (26, "Jó. 26", 18 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (27, "Jó. 27", 18 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (28, "Jó. 28", 18 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (29, "Jó. 29", 18 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (30, "Jó. 30", 18 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (31, "Jó. 31", 18 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (32, "Jó. 32", 18 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (33, "Jó. 33", 18 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (34, "Jó. 34", 18 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (35, "Jó. 35", 18 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (36, "Jó. 36", 18);
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (37, "Jó. 37", 18 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (38, "Jó. 38", 18 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (39, "Jó. 39", 18 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (40, "Jó. 40", 18 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (41, "Jó. 41", 18 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (42, "Jó. 42", 18 );


/*Salmos*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Sl. 1", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Sl. 2", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Sl. 3", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Sl. 4", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Sl. 5", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Sl. 6", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Sl. 7", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Sl. 8", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Sl. 9", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Sl. 10", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Sl. 11", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Sl. 12", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "Sl. 13", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "Sl. 14", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "Sl. 15", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "Sl. 16", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (17, "Sl. 17", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (18, "Sl. 18", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (19, "Sl. 19", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (20, "Sl. 20", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (21, "Sl. 21", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (22, "Sl. 22", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (23, "Sl. 23", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (24, "Sl. 24", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (25, "Sl. 25", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (26, "Sl. 26", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (27, "Sl. 27", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (28, "Sl. 28", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (29, "Sl. 29", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (30, "Sl. 30", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (31, "Sl. 31", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (32, "Sl. 32", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (33, "Sl. 33", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (34, "Sl. 34", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (35, "Sl. 35", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (36, "Sl. 36", 19);
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (37, "Sl. 37", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (38, "Sl. 38", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (39, "Sl. 39", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (40, "Sl. 40", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (41, "Sl. 41", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (42, "Sl. 42", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (43, "Sl. 43", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (44, "Sl. 44", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (45, "Sl. 45", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (46, "Sl. 46", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (47, "Sl. 47", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (48, "Sl. 48", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (49, "Sl. 49", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (50, "Sl. 50", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (51, "Sl. 51", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (52, "Sl. 52", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (53, "Sl. 53", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (54, "Sl. 54", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (55, "Sl. 55", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (56, "Sl. 56", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (57, "Sl. 57", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (58, "Sl. 58", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (59, "Sl. 59", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (60, "Sl. 60", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (61, "Sl. 61", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (62, "Sl. 62", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (63, "Sl. 63", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (64, "Sl. 64", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (65, "Sl. 65", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (66, "Sl. 66", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (67, "Sl. 67", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (68, "Sl. 68", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (69, "Sl. 69", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (70, "Sl. 70", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (71, "Sl. 71", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (72, "Sl. 72", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (73, "Sl. 73", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (74, "Sl. 74", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (75, "Sl. 75", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (76, "Sl. 76", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (77, "Sl. 77", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (78, "Sl. 78", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (79, "Sl. 79", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (80, "Sl. 80", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (81, "Sl. 81", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (82, "Sl. 82", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (83, "Sl. 83", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (84, "Sl. 84", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (85, "Sl. 85", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (86, "Sl. 86", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (87, "Sl. 87", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (88, "Sl. 88", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (89, "Sl. 89", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (90, "Sl. 90", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (91, "Sl. 91", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (92, "Sl. 92", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (93, "Sl. 93", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (94, "Sl. 94", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (95, "Sl. 95", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (96, "Sl. 96", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (97, "Sl. 97", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (98, "Sl. 98", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (99, "Sl. 99", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (100, "Sl. 100", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (101, "Sl. 101", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (102, "Sl. 102", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (103, "Sl. 103", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (104, "Sl. 104", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (105, "Sl. 105", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (106, "Sl. 106", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (107, "Sl. 107", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (108, "Sl. 108", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (109, "Sl. 109", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (110, "Sl. 110", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (111, "Sl. 111", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (112, "Sl. 112", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (113, "Sl. 113", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (114, "Sl. 114", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (115, "Sl. 115", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (116, "Sl. 116", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (117, "Sl. 117", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (118, "Sl. 118", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (119, "Sl. 119", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (120, "Sl. 120", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (121, "Sl. 121", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (122, "Sl. 122", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (123, "Sl. 123", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (124, "Sl. 124", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (125, "Sl. 125", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (126, "Sl. 126", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (127, "Sl. 127", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (128, "Sl. 128", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (129, "Sl. 129", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (130, "Sl. 130", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (131, "Sl. 131", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (132, "Sl. 132", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (133, "Sl. 133", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (134, "Sl. 134", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (135, "Sl. 135", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (136, "Sl. 136", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (137, "Sl. 137", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (138, "Sl. 138", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (139, "Sl. 139", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (140, "Sl. 140", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (141, "Sl. 141", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (142, "Sl. 142", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (143, "Sl. 143", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (144, "Sl. 144", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (145, "Sl. 145", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (146, "Sl. 146", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (147, "Sl. 147", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (148, "Sl. 148", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (149, "Sl. 149", 19 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (150, "Sl. 150", 19 );


/*Provérbios*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Pv. 1", 20 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Pv. 2", 20 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Pv. 3", 20 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Pv. 4", 20 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Pv. 5", 20 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Pv. 6", 20 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Pv. 7", 20 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Pv. 8", 20 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Pv. 9", 20 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Pv. 10", 20 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Pv. 11", 20 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Pv. 12", 20 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "Pv. 13", 20 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "Pv. 14", 20 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "Pv. 15", 20 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "Pv. 16", 20 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (17, "Pv. 17", 20 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (18, "Pv. 18", 20 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (19, "Pv. 19", 20 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (20, "Pv. 20", 20 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (21, "Pv. 21", 20 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (22, "Pv. 22", 20 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (23, "Pv. 23", 20 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (24, "Pv. 24", 20 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (25, "Pv. 25", 20 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (26, "Pv. 26", 20 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (27, "Pv. 27", 20 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (28, "Pv. 28", 20 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (29, "Pv. 29", 20 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (30, "Pv. 30", 20 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (31, "Pv. 31", 20 );



/*Eclesiastes*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Ec. 1", 21 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Ec. 2", 21 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Ec. 3", 21 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Ec. 4", 21 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Ec. 5", 21 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Ec. 6", 21 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Ec. 7", 21 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Ec. 8", 21 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Ec. 9", 21 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Ec. 10", 21 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Ec. 11", 21 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Ec. 12", 21 );




/*Cânticos*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Ct. 1", 22 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Ct. 2", 22 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Ct. 3", 22 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Ct. 4", 22 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Ct. 5", 22 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Ct. 6", 22 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Ct. 7", 22 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Ct. 8", 22 );



/*Isaías*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Is. 1", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Is. 2", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Is. 3", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Is. 4", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Is. 5", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Is. 6", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Is. 7", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Is. 8", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Is. 9", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Is. 10", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Is. 11", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Is. 12", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "Is. 13", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "Is. 14", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "Is. 15", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "Is. 16", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (17, "Is. 17", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (18, "Is. 18", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (19, "Is. 19", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (20, "Is. 20", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (21, "Is. 21", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (22, "Is. 22", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (23, "Is. 23", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (24, "Is. 24", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (25, "Is. 25", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (26, "Is. 26", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (27, "Is. 27", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (28, "Is. 28", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (29, "Is. 29", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (30, "Is. 30", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (31, "Is. 31", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (32, "Is. 32", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (33, "Is. 33", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (34, "Is. 34", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (35, "Is. 35", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (36, "Is. 36", 23);
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (37, "Is. 37", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (38, "Is. 38", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (39, "Is. 39", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (40, "Is. 40", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (41, "Is. 41", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (42, "Is. 42", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (43, "Is. 43", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (44, "Is. 44", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (45, "Is. 45", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (46, "Is. 46", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (47, "Is. 47", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (48, "Is. 48", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (49, "Is. 49", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (50, "Is. 50", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (51, "Is. 51", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (52, "Is. 52", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (53, "Is. 53", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (54, "Is. 54", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (55, "Is. 55", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (56, "Is. 56", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (57, "Is. 57", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (58, "Is. 58", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (59, "Is. 59", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (60, "Is. 60", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (61, "Is. 61", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (62, "Is. 62", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (63, "Is. 63", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (64, "Is. 64", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (65, "Is. 65", 23 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (66, "Is. 66", 23 );


/*Jeremias*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Jr. 1", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Jr. 2", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Jr. 3", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Jr. 4", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Jr. 5", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Jr. 6", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Jr. 7", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Jr. 8", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Jr. 9", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Jr. 10", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Jr. 11", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Jr. 12", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "Jr. 13", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "Jr. 14", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "Jr. 15", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "Jr. 16", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (17, "Jr. 17", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (18, "Jr. 18", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (19, "Jr. 19", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (20, "Jr. 20", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (21, "Jr. 21", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (22, "Jr. 22", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (23, "Jr. 23", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (24, "Jr. 24", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (25, "Jr. 25", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (26, "Jr. 26", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (27, "Jr. 27", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (28, "Jr. 28", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (29, "Jr. 29", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (30, "Jr. 30", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (31, "Jr. 31", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (32, "Jr. 32", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (33, "Jr. 33", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (34, "Jr. 34", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (35, "Jr. 35", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (36, "Jr. 36", 24);
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (37, "Jr. 37", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (38, "Jr. 38", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (39, "Jr. 39", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (40, "Jr. 40", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (41, "Jr. 41", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (42, "Jr. 42", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (43, "Jr. 43", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (44, "Jr. 44", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (45, "Jr. 45", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (46, "Jr. 46", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (47, "Jr. 47", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (48, "Jr. 48", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (49, "Jr. 49", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (50, "Jr. 50", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (51, "Jr. 51", 24 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (52, "Jr. 52", 24 );


/*Lamentações*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Lm. 1", 25 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Lm. 2", 25 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Lm. 3", 25 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Lm. 4", 25 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Lm. 5", 25 );



/*Ezequiel*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Ez. 1", 26 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Ez. 2", 26 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Ez. 3", 26 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Ez. 4", 26 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Ez. 5", 26 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Ez. 6", 26 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Ez. 7", 26 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Ez. 8", 26 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Ez. 9", 26 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Ez. 10", 26 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Ez. 11", 26 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Ez. 12", 26 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "Ez. 13", 26 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "Ez. 14", 26 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "Ez. 15", 26 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "Ez. 16", 26 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (17, "Ez. 17", 26 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (18, "Ez. 18", 26 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (19, "Ez. 19", 26 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (20, "Ez. 20", 26 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (21, "Ez. 21", 26 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (22, "Ez. 22", 26 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (23, "Ez. 23", 26 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (24, "Ez. 24", 26 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (25, "Ez. 25", 26 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (26, "Ez. 26", 26 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (27, "Ez. 27", 26 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (28, "Ez. 28", 26 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (29, "Ez. 29", 26 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (30, "Ez. 30", 26 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (31, "Ez. 31", 26 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (32, "Ez. 32", 26 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (33, "Ez. 33", 26 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (34, "Ez. 34", 26 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (35, "Ez. 35", 26 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (36, "Ez. 36", 26);
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (37, "Ez. 37", 26 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (38, "Ez. 38", 26 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (39, "Ez. 39", 26 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (40, "Ez. 40", 26 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (41, "Ez. 41", 26 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (42, "Ez. 42", 26 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (43, "Ez. 43", 26 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (44, "Ez. 44", 26 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (45, "Ez. 45", 26 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (46, "Ez. 46", 26 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (47, "Ez. 47", 26 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (48, "Ez. 48", 26 );






/*Daniel*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Dn. 1", 27 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Dn. 2", 27 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Dn. 3", 27 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Dn. 4", 27 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Dn. 5", 27 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Dn. 6", 27 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Dn. 7", 27 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Dn. 8", 27 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Dn. 9", 27 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Dn. 10", 27 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Dn. 11", 27 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Dn. 12", 27 );




/*Oséias*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Os. 1", 28 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Os. 2", 28 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Os. 3", 28 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Os. 4", 28 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Os. 5", 28 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Os. 6", 28 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Os. 7", 28 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Os. 8", 28 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Os. 9", 28 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Os. 10", 28 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Os. 11", 28 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Os. 12", 28 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "Os. 13", 28 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "Os. 14", 28 );


/*Joel*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Jl. 1", 29 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Jl. 2", 29 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Jl. 3", 29 );





/*Amós*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Am. 1", 30 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Am. 2", 30 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Am. 3", 30 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Am. 4", 30 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Am. 5", 30 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Am. 6", 30 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Am. 7", 30 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Am. 8", 30 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Am. 9", 30 );


/*Obadias*/

INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Ob. 1", 31 );



/*Jonas*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Jn. 1", 32 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Jn. 2", 32 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Jn. 3", 32 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Jn. 4", 32 );

/*Miquéias*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Mq. 1", 33 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Mq. 2", 33 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Mq. 3", 33 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Mq. 4", 33 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Mq. 5", 33 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Mq. 6", 33 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Mq. 7", 33 );


/*Naum*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Na. 1", 34 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Na. 2", 34 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Na. 3", 34 );


/*Habacuque*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Hc. 1", 35 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Hc. 2", 35 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Hc. 3", 35 );



/*Sofonias*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Sf. 1", 36 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Sf. 2", 36 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Sf. 3", 36 );

/*Ageu*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Ag. 1", 37 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Ag. 2", 37 );



/*Zacarias*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Zc. 1", 38 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Zc. 2", 38 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Zc. 3", 38 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Zc. 4", 38 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Zc. 5", 38 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Zc. 6", 38 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Zc. 7", 38 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Zc. 8", 38 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Zc. 9", 38 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Zc. 10", 38 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Zc. 11", 38 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Zc. 12", 38 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "Zc. 13", 38 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "Zc. 14", 38 );



/*Malaquias*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Ml. 1", 39 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Ml. 2", 39 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Ml. 3", 39 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Ml. 4", 39 );

/*******************NOVO TESTAMENTO*********************/

/*Mateus*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Mt. 1", 40 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Mt. 2", 40 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Mt. 3", 40 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Mt. 4", 40 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Mt. 5", 40 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Mt. 6", 40 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Mt. 7", 40 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Mt. 8", 40 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Mt. 9", 40 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Mt. 10", 40 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Mt. 11", 40 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Mt. 12", 40 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "Mt. 13", 40 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "Mt. 14", 40 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "Mt. 15", 40 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "Mt. 16", 40 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (17, "Mt. 17", 40 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (18, "Mt. 18", 40 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (19, "Mt. 19", 40 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (20, "Mt. 20", 40 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (21, "Mt. 21", 40 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (22, "Mt. 22", 40 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (23, "Mt. 23", 40 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (24, "Mt. 24", 40 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (25, "Mt. 25", 40 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (26, "Mt. 26", 40 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (27, "Mt. 27", 40 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (28, "Mt. 28", 40 );

/*Marcos*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Mc. 1", 41 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Mc. 2", 41 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Mc. 3", 41 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Mc. 4", 41 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Mc. 5", 41 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Mc. 6", 41 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Mc. 7", 41 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Mc. 8", 41 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Mc. 9", 41 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Mc. 10", 41 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Mc. 11", 41 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Mc. 12", 41 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "Mc. 13", 41 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "Mc. 14", 41 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "Mc. 15", 41 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "Mc. 16", 41 );


/*Lucas*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Lc. 1", 42 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Lc. 2", 42 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Lc. 3", 42 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Lc. 4", 42 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Lc. 5", 42 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Lc. 6", 42 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Lc. 7", 42 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Lc. 8", 42 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Lc. 9", 42 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Lc. 10", 42 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Lc. 11", 42 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Lc. 12", 42 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "Lc. 13", 42 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "Lc. 14", 42 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "Lc. 15", 42 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "Lc. 16", 42 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (17, "Lc. 17", 42 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (18, "Lc. 18", 42 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (19, "Lc. 19", 42 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (20, "Lc. 20", 42 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (21, "Lc. 21", 42 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (22, "Lc. 22", 42 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (23, "Lc. 23", 42 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (24, "Lc. 24", 42 );


/*João*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Jo. 1", 43 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Jo. 2", 43 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Jo. 3", 43 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Jo. 4", 43 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Jo. 5", 43 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Jo. 6", 43 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Jo. 7", 43 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Jo. 8", 43 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Jo. 9", 43 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Jo. 10", 43 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Jo. 11", 43 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Jo. 12", 43 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "Jo. 13", 43 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "Jo. 14", 43 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "Jo. 15", 43 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "Jo. 16", 43 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (17, "Jo. 17", 43 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (18, "Jo. 18", 43 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (19, "Jo. 19", 43 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (20, "Jo. 20", 43 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (21, "Jo. 21", 43 );

/*Atos*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "At. 1", 44 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "At. 2", 44 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "At. 3", 44 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "At. 4", 44 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "At. 5", 44 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "At. 6", 44 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "At. 7", 44 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "At. 8", 44 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "At. 9", 44 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "At. 10", 44 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "At. 11", 44 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "At. 12", 44 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "At. 13", 44 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "At. 14", 44 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "At. 15", 44 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "At. 16", 44 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (17, "At. 17", 44 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (18, "At. 18", 44 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (19, "At. 19", 44 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (20, "At. 20", 44 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (21, "At. 21", 44 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (22, "At. 22", 44 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (23, "At. 23", 44 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (24, "At. 24", 44 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (25, "At. 25", 44 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (26, "At. 26", 44 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (27, "At. 27", 44 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (28, "At. 28", 44 );


/*Romanos*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Rm. 1", 45 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Rm. 2", 45 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Rm. 3", 45 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Rm. 4", 45 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Rm. 5", 45 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Rm. 6", 45 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Rm. 7", 45 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Rm. 8", 45 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Rm. 9", 45 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Rm. 10", 45 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Rm. 11", 45 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Rm. 12", 45 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "Rm. 13", 45 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "Rm. 14", 45 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "Rm. 15", 45 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "Rm. 16", 45 );



/*1 Coríntios*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "1º Co. 1", 46 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "1º Co. 2", 46 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "1º Co. 3", 46 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "1º Co. 4", 46 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "1º Co. 5", 46 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "1º Co. 6", 46 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "1º Co. 7", 46 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "1º Co. 8", 46 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "1º Co. 9", 46 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "1º Co. 10", 46 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "1º Co. 11", 46 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "1º Co. 12", 46 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "1º Co. 13", 46 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "1º Co. 14", 46 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "1º Co. 15", 46 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "1º Co. 16", 46 );

/*2 Coríntios*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "2º Co. 1", 47 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "2º Co. 2", 47 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "2º Co. 3", 47 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "2º Co. 4", 47 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "2º Co. 5", 47 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "2º Co. 6", 47 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "2º Co. 7", 47 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "2º Co. 8", 47 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "2º Co. 9", 47 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "2º Co. 10", 47 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "2º Co. 11", 47 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "2º Co. 12", 47 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "2º Co. 13", 47 );




/*Gálatas*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Gl. 1", 48 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Gl. 2", 48 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Gl. 3", 48 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Gl. 4", 48 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Gl. 5", 48 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Gl. 6", 48 );

/*Efésios*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Ef. 1", 49 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Ef. 2", 49 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Ef. 3", 49 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Ef. 4", 49 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Ef. 5", 49 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Ef. 6", 49 );


/*Filipenses*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Fp. 1", 50 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Fp. 2", 50 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Fp. 3", 50 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Fp. 4", 50 );



/*Colossenses*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Cl. 1", 51 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Cl. 2", 51 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Cl. 3", 51 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Cl. 4", 51 );


/*1 Tessalonicenses*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "1º Ts. 1", 52 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "1º Ts. 2", 52 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "1º Ts. 3", 52 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "1º Ts. 4", 52 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "1º Ts. 5", 52 );

/*2 Tessalonicenses*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "2º Ts. 1", 53 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "2º Ts. 2", 53 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "2º Ts. 3", 53 );



/*1 Timóteo*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "1º Tm. 1", 54 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "1º Tm. 2", 54 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "1º Tm. 3", 54 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "1º Tm. 4", 54 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "1º Tm. 5", 54 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "1º Tm. 6", 54 );


/*1 Timóteo*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "2º Tm. 1", 55 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "2º Tm. 2", 55 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "2º Tm. 3", 55 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "2º Tm. 4", 55 );

/*Tito*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Tt. 1", 56 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Tt. 2", 56 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Tt. 3", 56 );

/*Filemom*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Fm. 1", 57 );




/*Hebreus*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Hb. 1", 58 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Hb. 2", 58 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Hb. 3", 58 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Hb. 4", 58 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Hb. 5", 58 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Hb. 6", 58 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Hb. 7", 58 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Hb. 8", 58 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Hb. 9", 58 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Hb. 10", 58 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Hb. 11", 58 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Hb. 12", 58 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "Hb. 13", 58 );




/*Tiago*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Tg. 1", 59 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Tg. 2", 59 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Tg. 3", 59 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Tg. 4", 59 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Tg. 5", 59 );




/*1 Pedro*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "1º Pe. 1", 60 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "1º Pe. 2", 60 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "1º Pe. 3", 60 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "1º Pe. 4", 60 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "1º Pe. 5", 60 );


/*2 Pedro*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "2º Pe. 1", 61 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "2º Pe. 2", 61 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "2º Pe. 3", 61 );

/*1 João*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "1º Jo. 1", 62 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "1º Jo. 2", 62 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "1º Jo. 3", 62 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "1º Jo. 4", 62 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "1º Jo. 5", 62 );

/*2 João*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "2º Jo. 1", 63 );

/*3 João*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "3º Jo. 1", 64 );


/*Judas*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Jd. 1", 65 );


/*Apocalipse*/
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (1, "Ap. 1", 66 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (2, "Ap. 2", 66 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (3, "Ap. 3", 66 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (4, "Ap. 4", 66 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (5, "Ap. 5", 66 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (6, "Ap. 6", 66 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (7, "Ap. 7", 66 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (8, "Ap. 8", 66 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (9, "Ap. 9", 66 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (10, "Ap. 10", 66 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (11, "Ap. 11", 66 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (12, "Ap. 12", 66 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (13, "Ap. 13", 66 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (14, "Ap. 14", 66 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (15, "Ap. 15", 66 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (16, "Ap. 16", 66 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (17, "Ap. 17", 66 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (18, "Ap. 18", 66 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (19, "Ap. 19", 66 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (20, "Ap. 20", 66 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (21, "Ap. 21", 66 );
INSERT INTO Capitulos (num_cap, titulo_cap, id_livro)
VALUES (22, "Ap. 22", 66 );

