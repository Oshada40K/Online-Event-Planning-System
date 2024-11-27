package Services;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import Controller.DBconnect;
import Model.adminModel;


public class adminService {
	
	public void insertData(adminModel adModel) {
		try {
			
			String name = adModel.getName();
			String email = adModel.getEmail();
			String password = adModel.getPassword();
			String username = adModel.getUsername();
			
			Statement semt = DBconnect.getConnection().createStatement();
			
			String sql = "INSERT INTO admin VALUES('"+0+"','"+name+"','"+email+"','"+password+"','"+username+"')";
			
			semt.executeUpdate(sql);
			semt.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
	public boolean validate(adminModel adModel) {
        try { 	     
        	
        	String query = "select * from admin where username = '"+adModel.getUsername()+"'and password='"+adModel.getPassword()+"'";
        	

        	Statement semt = DBconnect.getConnection().createStatement();
        	
        	ResultSet rs = semt.executeQuery(query);
        	if(rs.next()) {
        		return true;
        	}
     }
			catch(Exception e)
        {
			e.printStackTrace();
		}
		return false;
	}
	
	public adminModel getone(adminModel adModel) {
        try { 	     
        	
        	String query = "select * from admin where username = '"+adModel.getUsername()+"'and password='"+adModel.getPassword()+"'";
        	

        	Statement semt = DBconnect.getConnection().createStatement();
        	
        	ResultSet rs = semt.executeQuery(query);
        	if(rs.next()) {
        		adModel.setName(rs.getString("name"));
        		adModel.setEmail(rs.getString("email"));
        		adModel.setPassword(rs.getString("password"));
        		adModel.setUsername(rs.getString("username"));
        		
        		return adModel;
        	}
     }
			catch(Exception e)
        {
			e.printStackTrace();
		}
		return null;
	}
	
	public void updateData(adminModel adModel) {
        try {
			
        	String query = "update admin SET Name='"+adModel.getName()+"',email='"+adModel.getEmail()+"',password='"+adModel.getPassword()+"',username='"+adModel.getUsername()+"' where email='"+adModel.getEmail()+"'";
        	
        	Statement semt = DBconnect.getConnection().createStatement();
        	
        	semt.executeUpdate(query);
        	
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
   public ArrayList<adminModel> getAllCustomer(){
	   try {
		   ArrayList<adminModel> listcus = new ArrayList<adminModel>();
		   
		   String query = "select * from admin";
		   
		   Statement semt = DBconnect.getConnection().createStatement();
		   ResultSet rs = semt.executeQuery(query);
		   
		   while(rs.next()) {
			   adminModel adModel = new adminModel();
			   
			   adModel.setName(rs.getString("name"));
			   adModel.setEmail(rs.getString("email"));
			   adModel.setPassword(rs.getString("password"));
			   adModel.setUsername(rs.getString("username"));
			   
			   listcus.add(adModel);
		   }
		   return listcus;
		}
		catch(Exception e) {
			e.printStackTrace();
			return null;
		}
   }
	
   public adminModel singleData(adminModel adModel) {
       try { 	     
       	
       	String query = "select * from admin where email = '"+adModel.getEmail()+"'";
       	

       	Statement semt = DBconnect.getConnection().createStatement();
       	
       	ResultSet rs = semt.executeQuery(query);
       	if(rs.next()) {
       		adModel.setName(rs.getString("name"));
       		adModel.setEmail(rs.getString("email"));
       		adModel.setPassword(rs.getString("password"));
       		adModel.setUsername(rs.getString("username"));
       		
       		return adModel;
       	}
    }
			catch(Exception e)
       {
			e.printStackTrace();
		}
		return null;
	}
   
	public void deleteData(adminModel adModel) {
        try {
        	String query = "Delete from admin where email = '"+adModel.getEmail()+"'";
        	
        	Statement semt = DBconnect.getConnection().createStatement();
			semt.executeUpdate(query);		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	

}


