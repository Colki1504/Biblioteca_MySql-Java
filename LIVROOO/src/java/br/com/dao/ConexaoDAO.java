/*
 * Conexão com o banco de dados
 */
package br.com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexaoDAO {
    public Connection conexao() throws ClassNotFoundException{
        Connection con = null;
        try{
            
            //Lembrando que em "jdbc:mysql://localhost:3306/biblioteca?user=root&password="; a palavra biblioteca tem que ser o nome do banco de dados
            String url = "jdbc:mysql://localhost:3306/biblioteca?user=root&password=";
            Class.forName("com.mysql.jdbc.Driver");
              con = DriverManager.getConnection(url);
              System.out.print("AI PAPAI");
        }
        catch(SQLException e ){
            
            System.out.println("Erro ao estabelecer a conexão com o banco de dados:");
            System.out.println("Mensagem: " + e.getMessage());
            System.out.println("Código de erro: " + e.getErrorCode());
            System.out.println("Estado SQL: " + e.getSQLState());
        }
        return con;
        } 
}
