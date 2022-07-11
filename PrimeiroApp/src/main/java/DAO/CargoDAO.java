package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import VO.Cargo;

public class CargoDAO extends BaseDAO {
	private Cargo vo;
	
	public CargoDAO(Cargo vo) {
		this.vo = vo;
	}
	
	public CargoDAO() {
	}
	
	public ArrayList<Cargo> getCargos() throws Exception{
		abrir();
		ArrayList <Cargo> lst = new ArrayList();
		Statement s = getConn().createStatement(); 
		String sql = "SELECT id,nome,observacao FROM Cargo";
		ResultSet rs = s.executeQuery(sql);
		while (rs.next()) { 
			Cargo p= new Cargo();
			p.setCodigo(rs.getInt(1));
			p.setNome(rs.getString(2));	
			p.setObservacao(rs.getString(3));	
			lst.add(p);
		}
		s.close();
		rs.close();		
		fechar();
		return lst;
	}
	
	public ArrayList<Cargo> findCargos(String nome)  throws Exception{
		
		super.abrir();
		ArrayList <Cargo> lst = new ArrayList();
		String sql = "SELECT id,nome,observacao FROM Cargo where nome,observacao like ?";
		PreparedStatement preparedStmt = getConn().prepareStatement(sql);
		preparedStmt.setString (1, nome+'%');  
		ResultSet rs =   preparedStmt.executeQuery();
		while (rs.next()) { 
			Cargo p= new Cargo();
			p.setCodigo(Integer.parseInt(rs.getString(1)) );
			p.setNome(rs.getString(2));
			p.setObservacao(rs.getString(3));
			lst.add(p);
		}
		preparedStmt.close();
		rs.close();
		fechar();
		return lst;
	}
	
	public void newCargo() throws Exception {
		
		  abrir();		
	      String query = " insert into Cargo (nome) (observacao)"
	        + " values (?)";
	      PreparedStatement preparedStmt = getConn().prepareStatement(query);
	      preparedStmt.setString (1, vo.getNome());
	      preparedStmt.setString (2, vo.getObservacao()); 
	      preparedStmt.execute();
	      fechar();
	}
	
	public void editCargo()  throws Exception{
		  abrir();
			
	      String query = " update Cargo set nome=? observacao=? where id=?";
	      PreparedStatement preparedStmt = getConn().prepareStatement(query);
	      preparedStmt.setString (1, vo.getNome());    
	      preparedStmt.setInt(2, vo.getCodigo()); 
	      preparedStmt.setString(3, vo.getObservacao());
	      preparedStmt.execute();
	      fechar();
		
	}
	public void deleteCargo() throws Exception{
		  abrir();
	      String query = " delete from Cargo where id=?";
	      PreparedStatement preparedStmt = getConn().prepareStatement(query);
	      preparedStmt.setInt(1, vo.getCodigo());    
	      preparedStmt.execute();
	      preparedStmt.close();
	      fechar();		
	}
	public Cargo findByIdCargo(int id) throws Exception{
		super.abrir();
		
		String sql = "SELECT id,nome,observacao FROM Cargo where id=?";
		  
		PreparedStatement preparedStmt = getConn().prepareStatement(sql);
		preparedStmt.setInt(1, id);  
		  
		ResultSet rs =   preparedStmt.executeQuery();
		Cargo p= new Cargo();
		while (rs.next()) { 
			p.setCodigo(Integer.parseInt(rs.getString(1)) );
			p.setNome(rs.getString(2));		
			p.setObservacao(rs.getString(3));	
		}
		
		rs.close();
		return p;
	}
}