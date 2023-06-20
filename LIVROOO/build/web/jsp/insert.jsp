<%-- 
    Document   : insert
    Created on : 14 de jun. de 2023, 13:18:10
    Author     : RickQ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.dto.livrodto"%>
<%@page import="br.com.dao.ConexaoDAO"%>
<%@page import="br.com.dao.LivroDAO"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inserido com Sucesso</title>
        <link rel="stylesheet" href="../css/jsp.css">
    </head>
    <body>
        
        <div class="FundoNav">
            <div class="NavItens">
            <img src="../img/livro.png" width="50px" height="50px">
            <h1>Mundo das Letras</h1>
            </div>
                <nav>   
                <ul> 
                    <li><a href="../index.html">Inserir</a></li>
                    <li><a href="./pesquisar.jsp">Pesquisar</a></li>
                    <li><a href="./excluir.jsp">Excluir</a></li>
                    <li><a href="./alterar.jsp">Alterar</a></li>
                </ul> 
                </nav>
            </div>  
            <div class="form">
                <h1>Adicionado com Sucesso!!</h1>
                 <a href="../index.html"><button>Volta</button></a>
            </div>
        <% 
        
            livrodto li = new livrodto();
            LivroDAO objDao = new LivroDAO();
            li.nome = request.getParameter("nome");
            li.autor = request.getParameter("autor");
            li.valor = request.getParameter("valor");
            
            
            objDao.CadastrarLivro(li);
            System.out.println("Livro");
            
          

        %>
    </body>
</html>
