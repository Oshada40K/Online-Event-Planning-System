package Services;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import Controller.DBconnect;
import Model.StaffModel;

public class staffServises {
	//add new manager//
	public void insertData(StaffModel mgModel ) {
		
		try {
			
			 String name = mgModel.getName();
			 String email =mgModel.getEmail();
			 String phone =mgModel.getPhone();
			 String username=mgModel.getUsername();
			 String password =mgModel.getPassword();
			
			
			Statement smt =DBconnect.getConnection().createStatement();
			
			String sql ="INSERT INTO staff VALUES('"+0+"','"+name+"','"+email+"','"+phone+"','"+username+"','"+password+"')";
			
			smt.executeUpdate(sql);
			
			smt.close();

		}catch(Exception E) {
			
			E.printStackTrace();
			
		}
		
	}
	
	//validate manger login credentials//
	public boolean Validate(StaffModel mgModel) {
		
		try {
			
			String query = "SELECT * FROM staff WHERE username ='"+mgModel.getUsername()+"' AND password = '"+mgModel.getPassword()+"' ";
			
			//fixed//
			Statement smt =DBconnect.getConnection().createStatement();
			
			
			ResultSet rs= smt.executeQuery(query);
			
			if(rs.next()) {
				return true;
			}
			
		}catch(Exception E) {
			
			
			E.printStackTrace();
		}
		return false;
		
		
	}
	//display manager data//
	public StaffModel getone(StaffModel mgModel) {
		
		try {
			
			String query = "SELECT * FROM staff WHERE username ='"+mgModel.getUsername()+"' AND password = '"+mgModel.getPassword()+"' ";
			
			//fixed//
			Statement smt =DBconnect.getConnection().createStatement();
			
			
			ResultSet rs= smt.executeQuery(query);
			
			if(rs.next()) {
				
				mgModel.setName(rs.getNString("name"));
				mgModel.setEmail(rs.getNString("email"));
				mgModel.setPhone(rs.getNString("phone"));
				mgModel.setUsername(rs.getString("username"));
				mgModel.setPassword(rs.getString("password"));
				
				
				return mgModel;
			}
			
		}catch(Exception E) {
			
			
			E.printStackTrace();
		}
		return null;
		
		
	}
	
	//update manager data//
	public void updateData(StaffModel mgModel) {
		
		try {
			
			String query="update staff SET name='"+mgModel.getName()+"',email='"+mgModel.getEmail()+"',phone='"+mgModel.getPhone()+"',username='"+mgModel.getUsername()+"',password='"+mgModel.getPassword()+"' where email='"+mgModel.getEmail()+"'"
					+ "";
			
			Statement smt =DBconnect.getConnection().createStatement();
			 smt.executeUpdate(query);
			
		}catch(Exception E) {
			
			E.printStackTrace();
			
		}
	
}
	
	
	//delete manager data//
	public void deleteData(StaffModel mgModel) {
		
		try {
			
			String query="Delete from staff where email='"+mgModel.getEmail()+"'";
			
			Statement smt =DBconnect.getConnection().createStatement();
			
			smt.executeUpdate(query);
			
		}catch(Exception E) {
			
			
			E.printStackTrace();
			
		}
	
}
//list all manager//
	public ArrayList<StaffModel>getAllcustomer() {
		
		try {
			
			
			ArrayList<StaffModel> listcus =new ArrayList<StaffModel>();
			
			String query ="select * from staff";
			
			Statement smt =DBconnect.getConnection().createStatement();
			ResultSet rs= smt.executeQuery(query);
			
			while(rs.next()) {
				
			StaffModel mgModel = new StaffModel();
			mgModel.setName(rs.getString("name"));
			mgModel.setEmail(rs.getString("email"));
			mgModel.setPhone(rs.getString("phone"));
			mgModel.setUsername(rs.getString("username"));
			mgModel.setPassword(rs.getString("password"));
			
			listcus.add(mgModel);
			}
			
			return listcus;
		}catch(Exception E) {
			
			
			E.printStackTrace();
			return null;
			
		}
	
}
//view all data in list//
	public StaffModel databutton(StaffModel mgModel) {
		
		try {
			
			String query = "SELECT * FROM staff WHERE email ='"+mgModel.getEmail()+"' ";
			
			//fixed//
			Statement smt =DBconnect.getConnection().createStatement();
			
			
			ResultSet rs= smt.executeQuery(query);
			
			if(rs.next()) {
				
				mgModel.setName(rs.getNString("name"));
				mgModel.setEmail(rs.getNString("email"));
				mgModel.setPhone(rs.getNString("phone"));
				mgModel.setUsername(rs.getString("username"));
				mgModel.setPassword(rs.getString("password"));
				
				
				return mgModel;
			}
			
		}catch(Exception E) {
			
			
			E.printStackTrace();
		}
		return null;
		
		
	}
	
}
