const router = express.Router();

/**
 * @swagger
 * /usuario/cadastro:
 *   post:
 *     summary: Cadastro de novo usuário
 *     tags:
 *       - Cadastro e Autenticação
 *     description: Cadastro + Autenticação (Novo usuário)
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               email:
 *                 type: string
 *                 description: E-mail do usuário
 *                 example: rota66@app.com.br
 *               nome:
 *                 type: string
 *                 description: Nome do usuário
 *                 example: Frederico José
 *               senha:
 *                 type: string
 *                 description: Senha do usuário
 *                 example: Abcd@123
 *               nascimento:
 *                 type: string
 *                 description: Data de nascimento do usuário
 *                 example: 12/12/2012
 *               sexo:
 *                 type: integer
 *                 description: Gênero do usuário - Masculino>1 Feminino>2
 *                 example: 1
 *               idioma:
 *                 type: integer
 *                 description: Idioma do usuáío
 *                 example: Português
*/
router.post('/cadastro',userController.cadastro);


/**
 * @swagger
 * /usuario/login:
 *   post:
 *     summary: Autenticação de Usuário
 *     tags:
 *       - Cadastro e Autenticação
 *     description: Autenticação de usuário cadastrado
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               email:
 *                 type: string
 *                 description: E-mail do usuário
 *                 example: rota66@app.com.br
 *               senha:
 *                 type: string
 *                 description: Senha do usuário
 *                 example: Abcd@123
*/
router.post('/login', userController.login)


/**
 * @swagger
 * /administrador/cadastro:
 *   post:
 *     summary: Cadastro de Usuário Administrador
 *     tags:
 *       - Cadastro e Autenticação
 *     description: Cadastro + Autenticação (Usuário Administrador)
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               email:
 *                 type: string
 *                 description: E-mail do usuário
 *                 example: rota66@app.com.br
 *               nome:
 *                 type: string
 *                 description: Nome do usuário
 *                 example: Frederico José
 *               senha:
 *                 type: string
 *                 description: Senha do usuário
 *                 example: Abcd@123
 *               nascimento:
 *                 type: string
 *                 description: Data de nascimento do usuário
 *                 example: 12/12/2012
 *               sexo:
 *                 type: integer
 *                 description: Gênero do usuário - Masculino>1 Feminino>2
 *                 example: 1
 *               idioma:
 *                 type: integer
 *                 description: Idioma do usuáío
 *                 example: Português
*/
router.post('/cadastro',adminController.cadastroAdm)


/**
 * @swagger
 * /administrador/login:
 *   post:
 *     summary: Autenticação de Usuário Administador
 *     tags:
 *       - Cadastro e Autenticação
 *     description: Autenticação de Usuário Administrador
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               email:
 *                 type: string
 *                 description: E-mail do usuário
 *                 example: rota66@app.com.br
 *               senha:
 *                 type: string
 *                 description: Senha do usuário
 *                 example: Abcd@123
*/
router.post('/login', adminController.loginAdm)


/**
 * @swagger
 * /playlist/:
 *   post:
 *     summary: Criação de Nova Playlist
 *     tags:
 *       - Playlists
 *     description: Criação de Nova Playlist
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               id_usuario:
 *                 type: string
 *                 description: ID do usuário Logado
 *                 example: 2
 *               nome:
 *                 type: string
 *                 description: Nome da Playlist
 *                 example: Nome da Playlist
 *               descricao:
 *                 type: string
 *                 description: Descrição da Playlist
 *                 example: Descrição da Playlist
*/
router.post('/', playlistController.createPlaylist)


/**
 * @swagger
 * /playlistitens/:
 *   post:
 *     summary: Adicionar Mídias em uma Playlist
 *     tags:
 *       - Playlists
 *     description: Adiciona Mídias a uma Playlist de um Usuário
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               id_playlist:
 *                 type: integer
 *                 description: ID da Playlist Escolhida
 *                 example: 2
 *               id_midia:
 *                 type: integer
 *                 description: ID da Mídia que será Adicionada a Playlist
 *                 example: 1
*/
router.post('/', playlistItemController.addMidiaPlaylist); 


/**
 * @swagger
 * /playlist/{id_usuario}:
 *   get:
 *     summary: Listagem de Playlists de um Usuário
 *     tags:
 *       - Playlists
 *     description: Listagem de Todas as Playlists de um Usuário
 *     parameters:
 *       - in: path
 *         name: id_usuario
 *         required: true
 *         description: ID do Usuário Logado
*/
router.get('/:id', playlistController.userPlaylist)


/**
 * @swagger
 * /playlistitens/{id_playlist}:
 *   get:
 *     summary: Listagem de Mídias de uma Playlist
 *     tags:
 *       - Playlists
 *     description: Listagem de Todas as Mídias de uma Playlist
 *     parameters:
 *       - in: path
 *         name: id_playlist
 *         required: true
 *         description: ID da Playlist selecionada
*/
router.get('/:id', playlistItemController.getById);


/**
 * @swagger
 * /playlistitens/:
 *   delete:
 *     summary: Deleta Mídias de uma Playlist
 *     tags:
 *       - Playlists
 *     description: Remover Mídias de uma Playlist
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               id_playlist:
 *                 type: integer
 *                 description: ID da Playlist
 *                 example: 3
 *               id_midia:
 *                 type: integer
 *                 description: ID da Mídia que será Deletada da Playlist
 *                 example: 5
*/
router.delete('/', playlistItemController.deletePlaylistItem);


/**
 * @swagger
 * /playlist/{id_playlist}:
 *   delete:
 *     summary: Deleta Playlist do Usuário
 *     tags:
 *       - Playlists
 *     description: Deleta uma Playlist do Usuário
 *     parameters:
 *       - in: path
 *         name: id_playlist
 *         required: true
 *         description: ID da Playlist que será Excluída
*/
router.delete('/:id', playlistController.deletePlaylist)


/**
 * @swagger
 * /favorito/:
 *   post:
 *     summary: Adiciona uma mídia aos favoritos
 *     tags:
 *       - Favoritos
 *     description: Adiciona uma Mídia aos Favoritos
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               id_usuario:
 *                 type: integer
 *                 description: ID do Usuário Logado
 *                 example: 5
 *               id_midia:
 *                 type: integer
 *                 description: ID da Mídia que será Adicionada aos Favoritos
 *                 example: 8
*/
router.post('/',favoritoController.addFavorito);


/**
 * @swagger
 * /favorito/{id_usuario}:
 *   get:
 *     summary: Listagem de Mídias Favoritas de um Usuário
 *     tags:
 *       - Favoritos
 *     description: Listagem de Midias Favoritas de um Usuário
 *     parameters:
 *       - in: path
 *         name: id_usuario
 *         required: true
 *         description: ID do Usuário Logado
*/
router.get('/:id',favoritoController.getByUserId);


/**
 * @swagger
 * /favorito/:
 *   delete:
 *     summary: Remove Mídia dos Favoritos
 *     tags:
 *       - Favoritos
 *     description: Remove Mídia dos Favoritos
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               id_usuario:
 *                 type: integer
 *                 description: ID do Usuário Logado
 *                 example: 15
 *               id_midia:
 *                 type: integer
 *                 description: ID da Mídia que será Removida dos Favoritos
 *                 example: 7
*/
router.delete('/', favoritoController.deleteFavorito);


/**
 * @swagger
 * /midia-temas/:
 *   post:
 *     summary: Cria Novo Tema com Mídias
 *     tags:
 *       - Temas
 *     description: Cria um Novo Tema com uma ou várias Mídias
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               nome:
 *                 type: string
 *                 description: Nome do Tema
 *                 example: Religião
 *               descricao:
 *                 type: string
 *                 description: Descrição do Tema
 *                 example: Mídias sobre Religião
 *               id_midia:
 *                 type: integer
 *                 description: ID da(s) Mídia(s) que serão adicionadas ao Tema
 *                 example: [7,11,14]
*/
router.post('/',midiaTemaController.createTemaMidia);


/**
 * @swagger
 * /temas/:
 *   get:
 *     summary: Listagem de Todos os Temas
 *     tags:
 *       - Temas
 *     description: Listagem de Todos os Temas
*/
router.get('/', temaController.listagemTemas)


/**
 * @swagger
 * /temas/ativos:
 *   get:
 *     summary: Listagem de Temas Ativos
 *     tags:
 *       - Temas
 *     description: Listagem de Todos os Temas Ativos
*/
router.get('/ativos', temaController.listagemTemasAtivos)


/**
 * @swagger
 * /midia-temas:
 *   get:
 *     summary: Listagem de Todos os Temas e suas Mídias
 *     tags:
 *       - Temas
 *     description: Listagem de Todos os Temas e suas Mídias
*/
router.get('/',midiaTemaController.getAll);


/**
 * @swagger
 * /midia-temas/{id_tema}:
 *   get:
 *     summary: Listagem de Mídias por Temas
 *     tags:
 *       - Temas
 *     description: Listagem de Mídias por Temas
 *     parameters:
 *       - in: path
 *         name: id_tema
 *         required: true
 *         description: ID do Tema que deseja listar as Mídias
*/
router.get('/:id',midiaTemaController.getById);           


/**
 * @swagger
 * /temas/status:
 *   put:
 *     summary: Atualiza o Status de um Tema
 *     tags:
 *       - Temas
 *     description: Atualiza o Status de um Tema (Ativo/Inativo)
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               id_tema:
 *                 type: string
 *                 description: ID do Tema que terá o Status Atualizado
 *                 example: 7
*/
router.put('/status', temaController.atualizaStatusTema)


/**
 * @swagger
 * /midia-temas/:
 *   delete:
 *     summary: Remove Mídia de um Tema
 *     tags:
 *       - Temas
 *     description: Remove Mídia de um Tema
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               id_tema:
 *                 type: string
 *                 description: ID do Tema que será Atualizado
 *                 example: 7
 *               id_midia:
 *                 type: string
 *                 description: ID da mídia que será excluída do Tema
 *                 example: 7
*/
router.delete('/', midiaTemaController.deleteTemaMidia);


/**
 * @swagger
 * /temas/{id_tema}:
 *   delete:
 *     summary: Deleta Tema
 *     tags:
 *       - Temas
 *     description: Deleta Tema
 *     parameters:
 *       - in: path
 *         name: id_tema
 *         required: true
 *         description: ID do Tema que deseja apagar
*/
router.delete('/:id', temaController.apagaTema)


/**
 * @swagger
 * /midia/:
 *   post:
 *     summary: Cadastrar nova Midia (Será atualizado?/ (atualizar novos campos) / Upload será Manual?)
 *     tags:
 *       - Livros, Capítulos e Mídias
 *     description: Cadastrar nova Midia (Será atualizado? Upload Manual?)
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               nome:
 *                 type: string
 *                 description: Nome da Mídia
 *                 example: Adão e Eva
 *               id_cap:
 *                 type: string
 *                 description: ID do capítulo ao qual a mídia será relacionada
 *                 example: 2
*/
router.post('/', midiaController.uploadMidia)


/**
 * @swagger
 * /livros/capitulos:
 *   post:
 *     summary: Listagem de Capítulos de um Livro
 *     tags:
 *       - Livros, Capítulos e Mídias
 *     description: Listagem de Capítulos de um Livro
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               id_livro:
 *                 type: integer
 *                 description: ID do Livro que deseja listar os Capítulos
 *                 example: 2
*/
router.post('/capitulos', livroCapituloController.capsLivro)


/**
 * @swagger
 * /midia/:
 *   get:
 *     summary: Listagem de Todas as Mídias
 *     tags:
 *       - Livros, Capítulos e Mídias
 *     description: Listagem de Todas as Mídias
*/
router.get('/', midiaController.listagemMidias)


/**
 * @swagger
 * /livros/:
 *   get:
 *     summary: Listagem de Todos os Livros
 *     tags:
 *       - Livros, Capítulos e Mídias
 *     description: Listagem de Todos os Livros
*/
router.get('/', livroCapituloController.getLivros)


/**
 * @swagger
 * /livros/testamento/{cod_testamento}:
 *   get:
 *     summary: Listagem de Livros por Testamento
 *     tags:
 *       - Livros, Capítulos e Mídias
 *     description: Listagem de Livros por Testamento (Antigo Testamento - 1 / Novo Testamento - 2)
 *     parameters:
 *       - in: path
 *         name: cod_testamento
 *         required: true
 *         description: Código do testamento (Antigo Testamento - 1 / Novo Testamento - 2)
*/
router.get('/testamento/:cod_testamento', livroCapituloController.getLivroByTestamento)


/**
 * @swagger
 * /midia/midia_capitulo/:
 *   get:
 *     summary: Listagem de Mídias de um Capítulo
 *     tags:
 *       - Livros, Capítulos e Mídias
 *     description: Listagem de Mídias de um Capítulo
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               id_cap:
 *                 type: integer
 *                 description: ID do Capítulo que Deseja Listar as Mídias
 *                 example: 2
*/
router.get('/midia_capitulo', midiaController.getMidiaCap)


/**
 * @swagger
 * /midia/livro_cap_midia/:
 *   get:
 *     summary: Listagem de Todos os Livros, Capítulos e Mídias
 *     tags:
 *       - Livros, Capítulos e Mídias
 *     description: Listagem de Todos os Livros, Capítulos e Mídias
*/
router.get('/livro_cap_midia', midiaController.getLivroCapMidia)


/**
 * @swagger
 * /midia/{id_midia}/:
 *   get:
 *     summary: Listagem de Mídias por ID
 *     tags:
 *       - Livros, Capítulos e Mídias
 *     description: Listagem de Mídias por ID
 *     parameters:
 *       - in: path
 *         name: id_midia
 *         required: true
 *         description: ID da Mídia que deseja buscar
*/
router.get('/:id', midiaController.listagemMidiasById)


/**
 * @swagger
 * /midia/:
 *   delete:
 *     summary: Deletar uma Mídia
 *     tags:
 *       - Livros, Capítulos e Mídias
 *     description: Deletar uma Mídia
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               id_midia:
 *                 type: integer
 *                 description: ID da Mídia
 *                 example: 4
 *               id_cap:
 *                 type: integer
 *                 description: ID do Capítulo
 *                 example: 2
*/
router.delete('/', midiaController.deleteMidiaLivCap)