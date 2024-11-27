package Services;

import java.sql.Statement;

import java.sql.ResultSet;
import java.util.ArrayList;

import Controller.DBconnect;
import Model.contactModel;


public class contactService {
	
	public void contactData(contactModel con) {
		try {
			String name = con.getName();
			String email = con.getEmail();
			String massage = con.getMassage();
			
			Statement semt = DBconnect.getConnection().createStatement();
			
			String sql = "INSERT INTO contact VALUES('"+0+"','"+name+"','"+email+"','"+massage+"')";
			
			semt.executeUpdate(sql);
			semt.close();
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
			}
	public contactModel congetone(contactModel con) {
        try { 	     
        	
        	String query = "select * from contact where username = '"+con.getEmail()+"'";
        	

        	Statement semt = DBconnect.getConnection().createStatement();
        	
        	ResultSet rs = semt.executeQuery(query);
        	if(rs.next()) {
        		con.setName(rs.getString("name"));
        		con.setEmail(rs.getString("email"));
        		con.setMassage(rs.getString("massage"));
        		

        		return con;
        	}
     }
			catch(Exception e)
        {
			e.printStackTrace();
		}
		return null;
	}
	
	  public ArrayList<contactModel> getAllcontact(){
		   try {
			   ArrayList<contactModel> listcus = new ArrayList<contactModel>();
			   
			   String query = "select * from admin";
			   
			   Statement semt = DBconnect.getConnection().createStatement();
			   ResultSet rs = semt.executeQuery(query);
			   
			   while(rs.next()) {
				   contactModel con = new contactModel();
				   
				   con.setName(rs.getString("name"));
				   con.setEmail(rs.getString("email"));
				   con.setMassage(rs.getString("massage"));
				   
				   
				   listcus.add(con);
			   }
			   return listcus;
			}
			catch(Exception e) {
				e.printStackTrace();
				return null;
			}
	   }
		
	  public void updatecontactData(contactModel con) {
	        try {
				
	        	String query = "update contact SET name='"+con.getName()+"',email='"+con.getEmail()+"',massage='"+con.getMassage()+"', where email='"+con.getEmail()+"'";
	        	
	        	Statement semt = DBconnect.getConnection().createStatement();
	        	
	        	semt.executeUpdate(query);
	        	
			}
			catch(Exception e) {
				e.printStackTrace();
			}
		}
}
