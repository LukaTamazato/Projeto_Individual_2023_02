var database = require("../database/config")

function autenticar(email, senha) {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function entrar(): ", email, senha)
    var instrucao = `
        SELECT idUsuario, nome, email  FROM usuario WHERE email = '${email}' AND senha = '${senha}';
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

// Coloque os mesmos parâmetros aqui. Vá para a var instrucao
function cadastrar(nome, email, senha, tipoDragao, titulo) {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function cadastrar():", nome, email, senha);
    
    // Insira exatamente a query do banco aqui, lembrando da nomenclatura exata nos valores
    //  e na ordem de inserção dos dados.

    // var instrucao = `SELECT * from dragao;`
    // var resultadoDragao = await database.executar(instrucao)
    // '${resultadoDragao[resultadoDragao.length - 1].idDragao}'
    var insereDragao = `INSERT INTO dragao  (tipoDragao) VALUES('${tipoDragao}');`;
    var insereUsuario = `INSERT INTO usuario (nome,email,senha,fkDragao) VALUES ('${nome}', '${email}', '${senha}', (SELECT max(idDragao) from dragao) );`
    var insereTitulo = `INSERT INTO titulo (titulo, fkUsuario) VALUES ('${titulo}',(SELECT max(idUsuario) from usuario));`
    // console.log("Executando a instrução SQL: \n" + instrucao);
    database.executar(insereDragao);
    database.executar(insereUsuario);
    return database.executar(insereTitulo);
}

module.exports = {
    autenticar,
    cadastrar
};