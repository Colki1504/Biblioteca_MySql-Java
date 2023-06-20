<%-- 
    Document   : excluir
    Created on : 14 de jun. de 2023, 16:44:43
    Author     : RickQ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mundo das letras - Excluir</title>
        <link rel="stylesheet" href="../css/excluir.css">
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

        <form action="excluircom.jsp"  method="POST">
            <label>Livraria SALU</label>
            <div class="form">
                <label>Codigo do livro:</label> 
                <input type="text" name="id" 
                       value="<%=request.getParameter("id") %>"> <br/>
                <label>Nome do livro:</label> 
                <input type="text" name="nome" 
                       value="<%=request.getParameter("nome") %>"> <br/>
                <label>Autor do livro:  </label>
                <input type="text" name="autor" 
                       value="<%=request.getParameter("autor") %>"> <br/>
                <label>Valor do livro: </label>
                <input type="text" name="valor" value="<%=request.getParameter("valor") %>""> <br/>
                
                <button type="submit">Excluir</button>
                
            </div>
        </form>
    </body>
</html>
