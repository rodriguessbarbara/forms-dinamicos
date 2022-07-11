package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import VO.Pedido;

public class PedidoDAO extends BaseDAO {
	private Pedido vo;
	
	public PedidoDAO(Pedido vo) {
		this.vo = vo;
	}
	
	public PedidoDAO() {
	}
	
	public ArrayList<Pedido> getPedidos() throws Exception{
		abrir();
		ArrayList <Pedido> lst = new ArrayList();
		Statement s = getConn().createStatement(); 
		String sql = "SELECT id,cliente,vendedor,produto FROM Pedido";
		ResultSet rs = s.executeQuery(sql);
		while (rs.next()) { 
			Pedido p= new Pedido();
			p.setCodigo(rs.getInt(1));
			p.setCliente(rs.getString(2));
			p.setVendedor(rs.getString(3));
			p.setProduto(rs.getString(4));
			lst.add(p);
		}
		s.close();
		rs.close();		
		fechar();
		return lst;
	}
	
	public ArrayList<Pedido> findPedidos(String nome)  throws Exception{
		
		super.abrir();
		ArrayList <Pedido> lst = new ArrayList();
		String sql = "SELECT id,cliente,vendedor,produto FROM Pedido where cliente,vendedor,produto like ?";
		PreparedStatement preparedStmt = getConn().prepareStatement(sql);
		preparedStmt.setString (1, nome+'%');  
		ResultSet rs =   preparedStmt.executeQuery();
		while (rs.next()) { 
			Pedido p= new Pedido();
			p.setCodigo(Integer.parseInt(rs.getString(1)) );
			p.setCliente(rs.getString(2));	
			p.setVendedor(rs.getString(3));
			p.setProduto(rs.getString(4));
			lst.add(p);
		}
		preparedStmt.close();
		rs.close();
		fechar();
		return lst;
	}
	
	public void newPedido() throws Exception {
		
		  abrir();		
	      String query = " insert into Pedido (cliente) (vendedor) (produto)"
	        + " values (?)";
	      PreparedStatement preparedStmt = getConn().prepareStatement(query);
	      preparedStmt.setInt(1, vo.getCodigo());
	      preparedStmt.setString (2, vo.getCliente());
	      preparedStmt.setString(3, vo.getVendedor());
	      preparedStmt.setString(4, vo.getProduto());
	      preparedStmt.execute();
	      fechar();
	}
	
	public void editPedido()  throws Exception{
		  abrir();
			
	      String query = " update Pedido set cliente=? vendedor=? produto=? where id=?";
	      PreparedStatement preparedStmt = getConn().prepareStatement(query);
	      preparedStmt.setInt(1, vo.getCodigo());
	      preparedStmt.setString (2, vo.getCliente());    
	      preparedStmt.setString(3, vo.getVendedor());
	      preparedStmt.setString(4, vo.getProduto());    
	      preparedStmt.execute();
	      fechar();
		
	}
	public void deletePedido() throws Exception{
		  abrir();
	      String query = " delete from Pedido where id=?";
	      PreparedStatement preparedStmt = getConn().prepareStatement(query);
	      preparedStmt.setInt(1, vo.getCodigo());    
	      preparedStmt.execute();
	      preparedStmt.close();
	      fechar();		
	}
	public Pedido findByIdPedido(int id) throws Exception{
		super.abrir();
		
		String sql = "SELECT id,cliente,vendedor,produto FROM Pedido where id=?";
		  
		PreparedStatement preparedStmt = getConn().prepareStatement(sql);
		preparedStmt.setInt(1, id);  
		  
		ResultSet rs =   preparedStmt.executeQuery();
		Pedido p= new Pedido();
		while (rs.next()) { 
			p.setCodigo(Integer.parseInt(rs.getString(1)) );
			p.setCliente(rs.getString(2));		
			p.setVendedor(rs.getString(3));
			p.setProduto(rs.getString(4));
		}
		
		rs.close();
		return p;
	}
}
