<%-- 
    Document   : excluircom
    Created on : 14 de jun. de 2023, 17:03:30
    Author     : RickQ
--%>

<%@page import="br.com.dao.LivroDAO"%>
<%@page import="br.com.dto.livrodto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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

            <h1>Excluido com sucesso!</h1>
            <a href="./pesquisar.jsp"><button>Volta</button></a>

               <% 
        
            livrodto li = new livrodto();
            LivroDAO objDao = new LivroDAO();
            li.id_livro = Integer.parseInt(request.getParameter("id"));

            
            
            objDao.ExcluirLivro(li);
            System.out.println("Livro");
            
          

        %>
    </body>
</html>
