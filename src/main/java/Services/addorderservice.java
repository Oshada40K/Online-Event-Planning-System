package Services;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import Controller.DBconnect;
import Model.addorderModel;



public class addorderservice {
	
	public void addservice(addorderModel addModel) {
		
		try {
			
			String query = "INSERT INTO addorder VALUES('"+0+"','"+addModel.getName()+"','"+addModel.getEmail()+"','"+addModel.getService()+"','"+addModel.getAmount()+"')";
			
			Statement stmt = DBconnect.getConnection().createStatement();		
			
			stmt.executeUpdate(query);
			
	}catch (Exception e) {
		e.printStackTrace();
	}
}
	
	public boolean confirmorder(addorderModel addModel) {
        try { 	     
        	
        	String query = "select * from addorder where name = '"+addModel.getName()+"'and email='"+addModel.getEmail()+"'";
        	

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

	
	public  addorderModel oneorder(addorderModel addModel) {
        try { 	     
        	
        	String query = "select * from addorder where name = '"+addModel.getName()+"'and email='"+addModel.getEmail()+"'";
        	

        	Statement semt = DBconnect.getConnection().createStatement();
        	
        	ResultSet rs = semt.executeQuery(query);
        	if(rs.next()) {
        		
        		addModel.setName(rs.getString("name"));
        		addModel.setEmail(rs.getString("email"));
        		addModel.setService(rs.getString("service"));
        		addModel.setAmount(rs.getString("amount"));
        		return addModel;
        	}
     }
			catch(Exception e)
        {
			e.printStackTrace();
		}
		return null;
	}
	
	public ArrayList<addorderModel> getallorders(){
		try {
			ArrayList<addorderModel> orrderarray = new ArrayList<addorderModel>();
			
			String query = "select * from addorder";
			Statement semt = DBconnect.getConnection().createStatement();
			
			ResultSet rs =semt.executeQuery(query);
			while(rs.next()) {
				addorderModel addModel = new addorderModel();
				addModel.setName(rs.getString("name"));
        		addModel.setEmail(rs.getString("email"));
        		addModel.setService(rs.getString("service"));
        		addModel.setAmount(rs.getString("amount"));
        		orrderarray.add(addModel);
			}
			return orrderarray;
			
			
		}catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	
	public  addorderModel singalorder(addorderModel addModel) {
        try { 	     
        	
        	String query = "select * from addorder where  email='"+addModel.getEmail()+"'";
        	

        	Statement semt = DBconnect.getConnection().createStatement();
        	
        	ResultSet rs = semt.executeQuery(query);
        	if(rs.next()) {
        		
        		addModel.setName(rs.getString("name"));
        		addModel.setEmail(rs.getString("email"));
        		addModel.setService(rs.getString("service"));
        		addModel.setAmount(rs.getString("amount"));
        		return addModel;
        	}
     }
			catch(Exception e)
        {
			e.printStackTrace();
		}
		return null;
	}
	public void updateorder(addorderModel addModel) {
        try {
			
        	String query = "update addorder SET Name='"+addModel.getName()+"',email='"+addModel.getEmail()+"',service='"+addModel.getService()+"',amount='"+addModel.getAmount()+"' where email='"+addModel.getEmail()+"'";
        	
        	Statement semt = DBconnect.getConnection().createStatement();
        	
        	semt.executeUpdate(query);
        	
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public void deleteorder(addorderModel addModel) {
        try {
        	String query = "Delete from addorder where email = '"+addModel.getEmail()+"'";
        	
        	Statement semt = DBconnect.getConnection().createStatement();
			semt.executeUpdate(query);		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
}
