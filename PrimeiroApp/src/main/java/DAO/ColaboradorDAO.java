package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import VO.Colaborador;

public class ColaboradorDAO extends BaseDAO {
	private Colaborador vo;
	
	public ColaboradorDAO(Colaborador vo) {
		this.vo = vo;
	}
	
	public ColaboradorDAO() {
	}
	
	public ArrayList<Colaborador> getColaboradores() throws Exception{
		abrir();
		ArrayList <Colaborador> lst = new ArrayList();
		Statement s = getConn().createStatement(); 
		String sql = "SELECT id,nome,cargo,email,observacao FROM Colaborador";
		ResultSet rs = s.executeQuery(sql);
		while (rs.next()) { 
			Colaborador p= new Colaborador();
			p.setCodigo(rs.getInt(1));
			p.setNome(rs.getString(2));
			p.setCargo(rs.getString(3));
			p.setEmail(rs.getString(4));
			p.setObservacao(rs.getString(5));				
			lst.add(p);
		}
		s.close();
		rs.close();		
		fechar();
		return lst;
	}
	
	public ArrayList<Colaborador> findColaboradores(String nome)  throws Exception{
		
		super.abrir();
		ArrayList <Colaborador> lst = new ArrayList();
		String sql = "SELECT id,nome,cargo,email,observacao FROM Colaborador where nome,cargo,email,observacao like ?";
		PreparedStatement preparedStmt = getConn().prepareStatement(sql);
		preparedStmt.setString (1, nome+'%');  
		ResultSet rs =   preparedStmt.executeQuery();
		while (rs.next()) { 
			Colaborador p= new Colaborador();
			p.setCodigo(Integer.parseInt(rs.getString(1)) );
			p.setNome(rs.getString(2));	
			p.setCargo(rs.getString(3));
			p.setEmail(rs.getString(4));
			p.setObservacao(rs.getString(5));
			lst.add(p);
		}
		preparedStmt.close();
		rs.close();
		fechar();
		return lst;
	}
	
	public void newColaborador() throws Exception {
		
		  abrir();		
	      String query = " insert into Colaborador (nome) (cargo) (email) (observacao)"
	        + " values (?)";
	      PreparedStatement preparedStmt = getConn().prepareStatement(query);
	      preparedStmt.setString (1, vo.getNome());
	      preparedStmt.setInt(2, vo.getCodigo());
	      preparedStmt.setString(3, vo.getCargo());
	      preparedStmt.setString(4, vo.getEmail());
	      preparedStmt.setString(5, vo.getObservacao());    
	      preparedStmt.execute();
	      fechar();
	}
	
	public void editColaborador()  throws Exception{
		  abrir();
			
	      String query = " update Colaborador set nome=? cargo=? email=? observacao=? where id=?";
	      PreparedStatement preparedStmt = getConn().prepareStatement(query);
	      preparedStmt.setString (1, vo.getNome());    
	      preparedStmt.setInt(2, vo.getCodigo());
	      preparedStmt.setString(3, vo.getCargo());
	      preparedStmt.setString(4, vo.getEmail()); 
	      preparedStmt.setString(4, vo.getObservacao());      
	      preparedStmt.execute();
	      fechar();
		
	}
	public void deleteColaborador() throws Exception{
		  abrir();
	      String query = " delete from Colaborador where id=?";
	      PreparedStatement preparedStmt = getConn().prepareStatement(query);
	      preparedStmt.setInt(1, vo.getCodigo());    
	      preparedStmt.execute();
	      preparedStmt.close();
	      fechar();		
	}
	public Colaborador findByIdColaborador(int id) throws Exception{
		super.abrir();
		
		String sql = "SELECT id,nome,cargo,email,observacao FROM Colaborador where id=?";
		  
		PreparedStatement preparedStmt = getConn().prepareStatement(sql);
		preparedStmt.setInt(1, id);  
		  
		ResultSet rs =   preparedStmt.executeQuery();
		Colaborador p= new Colaborador();
		while (rs.next()) { 
			p.setCodigo(Integer.parseInt(rs.getString(1)) );
			p.setNome(rs.getString(2));		
			p.setCargo(rs.getString(3));
			p.setEmail(rs.getString(4));
			p.setObservacao(rs.getString(5));
		}
		
		rs.close();
		return p;
	}
}
