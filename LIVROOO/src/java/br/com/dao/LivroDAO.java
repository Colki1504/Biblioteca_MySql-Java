/*
 * Local onde tem as classes para os comandos slq
 */
package br.com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import br.com.dto.livrodto;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
public class LivroDAO {
     /*Variaveis */
    Connection con;
    PreparedStatement pstm;
    ResultSet  rs;
    ArrayList<livrodto> lista = new ArrayList<>();
     /*Variaveis */
     /*Classe cadastrar livro */
    public void CadastrarLivro(livrodto li) throws ClassNotFoundException{
     
        String nome_livro= li.nome;
        String autor_livro= li.autor;
        String valor_livro= li.valor;
        String sql = "insert into livro(nome_livro,autor_livro,valor_livro) values(?,?,?)";
    
        con = new ConexaoDAO().conexao();
        try{
            pstm = con.prepareCall(sql);
            pstm.setString(1, nome_livro );
            pstm.setString(2, autor_livro );
            pstm.setString(3, valor_livro);
            
            
            

            pstm.execute();
            pstm.close();
        }
        catch(SQLException e ){
            
            System.out.println("Erro ao estabelecer a conexão com o banco de dados:");
            System.out.println("Mensagem: " + e.getMessage());
            System.out.println("Código de erro: " + e.getErrorCode());
            System.out.println("Estado SQL: " + e.getSQLState());
        }
        
    }
     /*Classe para pesquisar livros */
    public ArrayList<livrodto> PesquisarLivro() throws ClassNotFoundException{
            
        String sql = "select * from livro";
        con = new ConexaoDAO().conexao();
        
        try {
            pstm = con.prepareCall(sql);
            rs = pstm.executeQuery(sql);
            
            while(rs.next()){
                livrodto li = new livrodto();
                li.id_livro = rs.getInt("id_livro");
                li.nome = rs.getString("nome_livro");
                li.autor = rs.getString("autor_livro");
                li.valor = rs.getString("valor_livro");
                lista.add(li);              
            }
            
        } catch (SQLException e) {
        }
        
        
        return lista;
       
    }

    public void ExcluirLivro(livrodto li) throws ClassNotFoundException{
        int id = li.id_livro;
        String sql = "delete from livro where id_livro = ?";
        
        con = new ConexaoDAO().conexao();
        try{
            pstm = con.prepareCall(sql);
            pstm.setInt(1, id );

            
            
            

            pstm.execute();
            pstm.close();
        }
        catch(SQLException e ){
            
            System.out.println("Erro ao estabelecer a conexão com o banco de dados:");
            System.out.println("Mensagem: " + e.getMessage());
            System.out.println("Código de erro: " + e.getErrorCode());
            System.out.println("Estado SQL: " + e.getSQLState());
        }
    }
     /*Classe para alterar o nome dos livros */
    public void AlterarLivro(livrodto li) throws ClassNotFoundException{
        
        String sql = "update livro set nome_livro= ? where id_livro= ?";
        
        con = new ConexaoDAO().conexao();
        try{
            pstm = con.prepareCall(sql);
            pstm.setString(1, li.nome );
            pstm.setInt(2, li.id_livro);
            pstm.execute();
            pstm.close();
        }
        catch(SQLException e ){
            
            System.out.println("Erro ao estabelecer a conexão com o banco de dados:");
            System.out.println("Mensagem: " + e.getMessage());
            System.out.println("Código de erro: " + e.getErrorCode());
            System.out.println("Estado SQL: " + e.getSQLState());
        }
    }
}
