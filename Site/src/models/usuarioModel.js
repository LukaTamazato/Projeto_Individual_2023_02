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


    var insereDragao = `INSERT INTO dragao  (tipoDragao) VALUES('${tipoDragao}');`;
    var insereUsuario = `INSERT INTO usuario (nome,email,senha,fkDragao) VALUES ('${nome}', '${email}', '${senha}', (SELECT max(idDragao) from dragao) );`
    var insereTitulo = `INSERT INTO titulo (titulo, fkUsuario) VALUES ('${titulo}',(SELECT max(idUsuario) from usuario));`

    database.executar(insereDragao);
    database.executar(insereUsuario);
    return database.executar(insereTitulo);
}
    function dashboard (){

        // var selectTipoDragaoCromatico = `select count(tipoDragao) qtdDrag
        // from dragao where 
        //     tipoDragao = 'Vermelho' OR
        //     tipoDragao ='Azul'OR
        //     tipoDragao ='Verde' OR
        //     tipoDragao ='Preto' OR
        //     tipoDragao = 'Branco'
        // group by tipoDragao 
        // order by tipoDragao;
        // `;

        // var selectTipoDragaoMetalico = `select count(tipoDragao) qtdDrag
        // from dragao where 
        //     tipoDragao = 'Ouro' OR
        //     tipoDragao ='Bronze' OR
        //     tipoDragao = 'Latao' OR
        //     tipoDragao = 'Cobre' OR 
        //     tipoDragao = 'Prata'
        // group by tipoDragao
        // order by tipoDragao;
        // `;

        var selectTipoDragao = `select count(tipoDragao) qtdDrag
        from dragao 
        group by tipoDragao
        order by tipoDragao;`
        

        return database.executar(selectTipoDragao);
    }
module.exports = {
    autenticar,
    cadastrar,
    dashboard
};