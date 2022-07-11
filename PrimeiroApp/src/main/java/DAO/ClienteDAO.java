package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import VO.Cliente;

public class ClienteDAO extends BaseDAO {
	private Cliente vo;
	
	public ClienteDAO(Cliente vo) {
		this.vo = vo;
	}
	
	public ClienteDAO() {
	}
	
	public ArrayList<Cliente> getClientes() throws Exception{
		abrir();
		ArrayList <Cliente> lst = new ArrayList();
		Statement s = getConn().createStatement(); 
		String sql = "SELECT id,nome,email,telefone,endereco,bairro,cidade,CEP,CPF FROM Cliente";
		ResultSet rs = s.executeQuery(sql);
		while (rs.next()) { 
			Cliente p= new Cliente();
			p.setCodigo(rs.getInt(1));
			p.setNome(rs.getString(2));
			p.setEmail(rs.getString(3));
			p.setTelefone(rs.getString(4));
			p.setEndereco(rs.getString(5));
			p.setBairro(rs.getString(6));
			p.setCidade(rs.getString(7));
			p.setCEP(rs.getInt(8));
			p.setCPF(rs.getInt(9));

			lst.add(p);
		}
		s.close();
		rs.close();		
		fechar();
		return lst;
	}
	
	public ArrayList<Cliente> findClientes(String nome)  throws Exception{
		
		super.abrir();
		ArrayList <Cliente> lst = new ArrayList();
		String sql = "SELECT id,nome,email,telefone,endereco,bairro,cidade,CEP,CPF FROM Cliente where nome,email,telefone,endereco,bairro,cidade,CEP,CPF like ?";
		PreparedStatement preparedStmt = getConn().prepareStatement(sql);
		preparedStmt.setString (1, nome+'%');  
		ResultSet rs =   preparedStmt.executeQuery();
		while (rs.next()) { 
			Cliente p= new Cliente();
			p.setCodigo(Integer.parseInt(rs.getString(1)) );
			p.setNome(rs.getString(2));	
			p.setEmail(rs.getString(3));
			p.setTelefone(rs.getString(4));
			p.setEndereco(rs.getString(5));
			p.setBairro(rs.getString(6));
			p.setCidade(rs.getString(7));
			p.setCEP(rs.getInt(8));
			p.setCPF(rs.getInt(9));
			lst.add(p);
		}
		preparedStmt.close();
		rs.close();
		fechar();
		return lst;
	}
	
	public void newCliente() throws Exception {
		
		  abrir();		
	      String query = " insert into Cliente (nome) (email) (telefone) (endereco) (bairro) (cidade) (CEP) (CPF)"
	        + " values (?)";
	      PreparedStatement preparedStmt = getConn().prepareStatement(query);
	      preparedStmt.setString (1, vo.getNome());
	      preparedStmt.setInt(2, vo.getCodigo());
	      preparedStmt.setString(3, vo.getEmail());
	      preparedStmt.setString(4, vo.getTelefone());
	      preparedStmt.setString(5, vo.getEndereco());
	      preparedStmt.setString(6, vo.getBairro());
	      preparedStmt.setString(7, vo.getCidade());
	      preparedStmt.setInt(8, vo.getCEP());
	      preparedStmt.setInt(9, vo.getCPF());	      
	      preparedStmt.execute();
	      fechar();
	}
	
	public void editCliente()  throws Exception{
		  abrir();
			
	      String query = " update Cliente set nome=? email=? telefone=? endereco=? bairro=? cidade=? CEP=? CPF=? where id=?";
	      PreparedStatement preparedStmt = getConn().prepareStatement(query);
	      preparedStmt.setString (1, vo.getNome());    
	      preparedStmt.setInt(2, vo.getCodigo());
	      preparedStmt.setString(3, vo.getEmail());
	      preparedStmt.setString(4, vo.getTelefone());
	      preparedStmt.setString(5, vo.getEndereco());
	      preparedStmt.setString(6, vo.getBairro());
	      preparedStmt.setString(7, vo.getCidade());
	      preparedStmt.setInt(8, vo.getCEP());
	      preparedStmt.setInt(9, vo.getCPF());	      
	      preparedStmt.execute();
	      fechar();
		
	}
	public void deleteCliente() throws Exception{
		  abrir();
	      String query = " delete from Cliente where id=?";
	      PreparedStatement preparedStmt = getConn().prepareStatement(query);
	      preparedStmt.setInt(1, vo.getCodigo());    
	      preparedStmt.execute();
	      preparedStmt.close();
	      fechar();		
	}
	public Cliente findByIdCliente(int id) throws Exception{
		super.abrir();
		
		String sql = "SELECT id,nome,email,telefone,endereco,bairro,cidade,CEP,CPF FROM Cliente where id=?";
		  
		PreparedStatement preparedStmt = getConn().prepareStatement(sql);
		preparedStmt.setInt(1, id);  
		  
		ResultSet rs =   preparedStmt.executeQuery();
		Cliente p= new Cliente();
		while (rs.next()) { 
			p.setCodigo(Integer.parseInt(rs.getString(1)) );
			p.setNome(rs.getString(2));		
			p.setEmail(rs.getString(3));
			p.setTelefone(rs.getString(4));
			p.setEndereco(rs.getString(5));
			p.setBairro(rs.getString(6));
			p.setCidade(rs.getString(7));
			p.setCEP(rs.getInt(8));
			p.setCPF(rs.getInt(9));
		}
		
		rs.close();
		return p;
	}
}