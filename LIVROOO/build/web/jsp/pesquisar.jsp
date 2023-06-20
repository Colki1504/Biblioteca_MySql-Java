<%-- 
    Document   : pesquisar
    Created on : 15 de jun. de 2023, 00:23:34
    Author     : RickQ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.dto.livrodto"%>
<%@page import="br.com.dao.ConexaoDAO"%>
<%@page import="java.util.ArrayList" %>
<%@page import="br.com.dao.LivroDAO"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <link rel="stylesheet" href="../css/pesquisar.css">
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

    <table>
        <tr>
            <th>Código</th>
            <th>Nome</th>
            <th>Autor</th>
            <th>Valor</th>
            <th>Ações</th>
        </tr>
        <% 
            try {
                LivroDAO objDao = new LivroDAO();
                ArrayList<livrodto> lista = objDao.PesquisarLivro();
                for (int num = 0; num < lista.size(); num++) {
                    out.print("<tr>");
                    out.print("<td>" + lista.get(num).id_livro + "</td>");
                    out.print("<td>" + lista.get(num).nome + "</td>");
                    out.print("<td>" + lista.get(num).autor + "</td>");
                    out.print("<td>" + lista.get(num).valor + "</td>");
                    out.print("<td>");
                    out.print("<a href='excluir.jsp?id=" + lista.get(num).id_livro + "&nome=" + lista.get(num).nome + "&autor=" + lista.get(num).autor + "&valor=" + lista.get(num).valor +"'>Excluir</a>");
                    out.print("<a href='alterar.jsp?id=" + lista.get(num).id_livro + "&nome=" + lista.get(num).nome + "&autor=" + lista.get(num).autor + "&valor=" + lista.get(num).valor +   "'>Alterar</a>");
                    out.print("</td>");
                    out.print("</tr>");
                }
            } catch (Exception e) {
            } 
        %>
    </table>
</body>
</html>
