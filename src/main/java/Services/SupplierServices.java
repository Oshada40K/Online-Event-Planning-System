package Services;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;


import Controller.DBconnect;
import Model.SupplierModel;

public class SupplierServices {
	
	public void insertData(SupplierModel supModel) {
		try {
			
			String name = supModel.getName() ;
			String email = supModel.getEmail() ;
			String user = supModel.getUser() ;
			String password = supModel.getPassword() ;
			
						
			String sql = "INSERT INTO supplier VALUES('"+0+"','"+name+"', '"+email+"', '"+user+"', '"+password+"') " ; 
			
			
			Statement stmt = DBconnect.getConnection().createStatement();

			
			stmt.executeUpdate(sql);
			 
			stmt.close();
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public boolean validate(SupplierModel supModel) {
		try { 
						
			String sql = "SELECT * FROM supplier where username = '"+supModel.getUser()+"'and password='"+supModel.getPassword()+"' " ;
						
			Statement stmt = DBconnect.getConnection().createStatement() ;
			
			ResultSet rs = stmt.executeQuery(sql) ;
			
			if(rs.next()) {
				return true ;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return false ;
		
	}
	
	
	
	public SupplierModel getOne(SupplierModel supModel) {
		try { 
						
			String sql = "SELECT * FROM supplier where username = '"+supModel.getUser()+"'and password='"+supModel.getPassword()+"' " ;
						
			Statement stmt =  DBconnect.getConnection().createStatement() ;
			
			ResultSet rs = stmt.executeQuery(sql) ;
			
			if(rs.next()) {
				supModel.setName(rs.getString("name"));
				supModel.setEmail(rs.getString("email"));
				supModel.setUser(rs.getString("username"));
				supModel.setPassword(rs.getString("password"));
				return supModel ;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return supModel;
		
//		return null ;
		
	}
		
	
	public ArrayList<SupplierModel> getAllSupplier(){
		
		ArrayList<SupplierModel> listCus = new ArrayList<SupplierModel>();
		
		try {
			
			String query = "select * from supplier" ;
			
			Statement statement = DBconnect.getConnection().createStatement();
			ResultSet rs = statement.executeQuery(query) ;
			while(rs.next()) {
				SupplierModel supModel = new SupplierModel();
				
				supModel.setName(rs.getString("name"));
				supModel.setEmail(rs.getString("email"));
				supModel.setUser(rs.getString("username"));
				supModel.setPassword(rs.getString("password"));
				
				listCus.add(supModel) ;
				
			}
			return listCus ;
			
		}catch(Exception e) {
			e.printStackTrace();
			return null ;
		}
		//return listCus ;
	}
	
	
	public SupplierModel singleDataButton(SupplierModel supModel) {
		try { 
						
			String sql = "SELECT * FROM supplier where email = '"+supModel.getEmail()+"'" ;
						
			Statement stmt =  DBconnect.getConnection().createStatement() ;
			
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				supModel.setName(rs.getString("name"));
				supModel.setEmail(rs.getString("email"));
				supModel.setUser(rs.getString("username"));
				supModel.setPassword(rs.getString("password"));
				return supModel ;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
		
	// return null ;
		
	}
	
	
	
	public void updateSupplier(SupplierModel supModel) {
		try {
			
			String query = "update supplier SET name='"+supModel.getName()+"',email='"+supModel.getEmail()+"', username='"+supModel.getUser()+"',password='"+supModel.getPassword()+"' where email='"+supModel.getEmail()+"' ";
			
			Statement stmt = DBconnect.getConnection().createStatement();
			stmt.executeUpdate(query);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	public void deleteSupplier(SupplierModel supModel) {
		try {
			
			String query="Delete from supplier where email='"+supModel.getEmail()+"' " ;
			
			Statement stmt = DBconnect.getConnection().createStatement();
			stmt.executeUpdate(query) ;
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
}
