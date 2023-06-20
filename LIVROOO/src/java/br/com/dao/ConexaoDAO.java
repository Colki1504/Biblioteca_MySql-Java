/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexaoDAO {
    public Connection conexao() throws ClassNotFoundException{
        Connection con = null;
        try{
            
            
            String url = "jdbc:mysql://localhost:3306/biblioteca?user=root&password=";
            Class.forName("com.mysql.jdbc.Driver");
              con = DriverManager.getConnection(url);
              System.out.print("AI PAPAI");
        }
        catch(SQLException e ){
            System.out.println("SEXOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO");
            System.out.println("Erro ao estabelecer a conexão com o banco de dados:");
            System.out.println("Mensagem: " + e.getMessage());
            System.out.println("Código de erro: " + e.getErrorCode());
            System.out.println("Estado SQL: " + e.getSQLState());
        }
        return con;
        } 
}
