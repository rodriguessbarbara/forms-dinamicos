package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import java.util.ArrayList;
import VO.Categoria;

public class CategoriaDAO extends BaseDAO {
	private Categoria vo;
	
	public CategoriaDAO(Categoria vo) {
		this.vo = vo;
	}
	
	public CategoriaDAO() {
	}
	
	public ArrayList<Categoria> getCategorias() throws Exception{
		abrir();
		ArrayList <Categoria> lst = new ArrayList();
		Statement s = getConn().createStatement(); 
		String sql = "SELECT id,nome FROM Categoria";
		ResultSet rs = s.executeQuery(sql);
		while (rs.next()) { 
			Categoria p= new Categoria();
			p.setCodigo(rs.getInt(1));
			p.setNome(rs.getString(2));		
			lst.add(p);
		}
		s.close();
		rs.close();		
		fechar();
		return lst;
	}
	
	public ArrayList<Categoria> findCategorias(String nome)  throws Exception{
		
		super.abrir();
		ArrayList <Categoria> lst = new ArrayList();
		String sql = "SELECT id,nome FROM Categoria where nome like ?";
		PreparedStatement preparedStmt = getConn().prepareStatement(sql);
		preparedStmt.setString (1, nome+'%');  
		ResultSet rs =   preparedStmt.executeQuery();
		while (rs.next()) { 
			Categoria p= new Categoria();
			p.setCodigo(Integer.parseInt(rs.getString(1)) );
			p.setNome(rs.getString(2));		
			lst.add(p);
		}
		preparedStmt.close();
		rs.close();
		fechar();
		return lst;
	}
	
	public void newCategoria() throws Exception {
		
		  abrir();		
	      String query = " insert into Categoria (nome)"
	        + " values (?)";
	      PreparedStatement preparedStmt = getConn().prepareStatement(query);
	      preparedStmt.setString (1, vo.getNome());    
	      preparedStmt.execute();
	      fechar();
	}
	
	public void editCategoria()  throws Exception{
		  abrir();
			
	      String query = " update Categoria set nome=? where id=?";
	      PreparedStatement preparedStmt = getConn().prepareStatement(query);
	      preparedStmt.setString (1, vo.getNome());    
	      preparedStmt.setInt(2, vo.getCodigo()); 
	      preparedStmt.execute();
	      fechar();
		
	}
	public void deleteCategoria() throws Exception{
		  abrir();
	      String query = " delete from Categoria where id=?";
	      PreparedStatement preparedStmt = getConn().prepareStatement(query);
	      preparedStmt.setInt(1, vo.getCodigo());    
	      preparedStmt.execute();
	      preparedStmt.close();
	      fechar();		
	}
	public Categoria findByIdCategoria(int id) throws Exception{
		super.abrir();
		
		String sql = "SELECT id,nome FROM Categoria where id=?";
		  
		PreparedStatement preparedStmt = getConn().prepareStatement(sql);
		preparedStmt.setInt(1, id);  
		  
		ResultSet rs =   preparedStmt.executeQuery();
		Categoria p= new Categoria();
		while (rs.next()) { 
			p.setCodigo(Integer.parseInt(rs.getString(1)) );
			p.setNome(rs.getString(2));		
			
		}
		
		rs.close();
		return p;
	}
}