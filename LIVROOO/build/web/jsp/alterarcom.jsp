<%-- 
    Document   : alterarcom
    Created on : 14 de jun. de 2023, 17:52:42
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
    </head>
    <body>
        <% 
        
            livrodto li = new livrodto();
            LivroDAO objDao = new LivroDAO();
            li.id_livro = Integer.parseInt(request.getParameter("id"));
            li.nome = request.getParameter("nome");
            
            
            objDao.AlterarLivro(li);
            System.out.println("Livro");
            
          

        %>
    </body>
</html>
