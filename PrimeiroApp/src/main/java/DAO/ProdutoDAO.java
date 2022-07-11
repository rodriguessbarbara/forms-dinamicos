package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import VO.Produto;

public class ProdutoDAO extends BaseDAO {
	private Produto vo;
	
	public ProdutoDAO(Produto vo) {
		this.vo = vo;
	}
	
	public ProdutoDAO() {
	}
	
	public ArrayList<Produto> getProdutos() throws Exception{
		abrir();
		ArrayList <Produto> lst = new ArrayList();
		Statement s = getConn().createStatement(); 
		String sql = "SELECT id,nome,descricao,ean,categoria,preco FROM Produto";
		ResultSet rs = s.executeQuery(sql);
		while (rs.next()) { 
			Produto p= new Produto();
			p.setCodigo(rs.getInt(1));
			p.setNome(rs.getString(2));
			p.setDescricao(rs.getString(3));
			p.setEAN(rs.getString(4));
			p.setCategoria(rs.getString(5));
			p.setPreco(rs.getFloat(6));
			lst.add(p);
		}
		s.close();
		rs.close();		
		fechar();
		return lst;
	}
	
	public ArrayList<Produto> findProdutos(String nome)  throws Exception{
		
		super.abrir();
		ArrayList <Produto> lst = new ArrayList();
		String sql = "SELECT id,nome,descricao,ean,categoria,preco FROM Produto where nome,descricao,ean,categoria,preco like ?";
		PreparedStatement preparedStmt = getConn().prepareStatement(sql);
		preparedStmt.setString (1, nome+'%');  
		ResultSet rs =   preparedStmt.executeQuery();
		while (rs.next()) { 
			Produto p= new Produto();
			p.setCodigo(Integer.parseInt(rs.getString(1)) );
			p.setNome(rs.getString(2));
			p.setDescricao(rs.getString(3));
			p.setEAN(rs.getString(4));
			p.setCategoria(rs.getString(5));
			p.setPreco(rs.getFloat(6));
			lst.add(p);
		}
		preparedStmt.close();
		rs.close();
		fechar();
		return lst;
	}
	
	public void newProduto() throws Exception {
		
		  abrir();		
	      String query = " insert into Produto (nome) (descricao) (ean) (categoria) (preco)"
	        + " values (?)";
	      PreparedStatement preparedStmt = getConn().prepareStatement(query);
	      preparedStmt.setString (1, vo.getNome());
	      preparedStmt.setInt(2, vo.getCodigo());
	      preparedStmt.setString(3, vo.getDescricao());
	      preparedStmt.setString(4, vo.getEAN());
	      preparedStmt.setString(5, vo.getCategoria());
	      preparedStmt.setFloat(5, vo.getPreco());      
	      preparedStmt.execute();
	      fechar();
	}
	
	public void editProduto()  throws Exception{
		  abrir();
			
	      String query = " update Produto set nome=? descricao=? ean=? categoria=? preco=? where id=?";
	      PreparedStatement preparedStmt = getConn().prepareStatement(query);
	      preparedStmt.setString (1, vo.getNome());    
	      preparedStmt.setInt(2, vo.getCodigo());
	      preparedStmt.setString(3, vo.getDescricao());
	      preparedStmt.setString(4, vo.getEAN());
	      preparedStmt.setString(5, vo.getCategoria());
	      preparedStmt.setFloat(6, vo.getPreco());	      
	      preparedStmt.execute();
	      fechar();
		
	}
	public void deleteProduto() throws Exception{
		  abrir();
	      String query = " delete from Produto where id=?";
	      PreparedStatement preparedStmt = getConn().prepareStatement(query);
	      preparedStmt.setInt(1, vo.getCodigo());    
	      preparedStmt.execute();
	      preparedStmt.close();
	      fechar();		
	}
	public Produto findByIdProduto(int id) throws Exception{
		super.abrir();
		
		String sql = "SELECT id,nome,descricao,ean,categoria,preco FROM Produto where id=?";
		  
		PreparedStatement preparedStmt = getConn().prepareStatement(sql);
		preparedStmt.setInt(1, id);  
		  
		ResultSet rs =   preparedStmt.executeQuery();
		Produto p= new Produto();
		while (rs.next()) { 
			p.setCodigo(Integer.parseInt(rs.getString(1)) );
			p.setNome(rs.getString(2));		
			p.setDescricao(rs.getString(3));
			p.setEAN(rs.getString(4));
			p.setCategoria(rs.getString(5));
			p.setPreco(rs.getFloat(6));
		}
		
		rs.close();
		return p;
	}
}