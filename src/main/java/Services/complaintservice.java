package Services;


import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import Controller.DBconnect;

import Model.complaint;


public class complaintservice {
//add new complaint//
	public void complaintreg(	complaint com ) {
		
		try {
			
		
			String query="insert into complaint values('"+com.getName()+"','"+com.getEmail()+"','"+com.getComplaint()+"')";
			
			Statement smt =DBconnect.getConnection().createStatement();
			smt.executeUpdate(query);
			
		}catch(Exception E) {
			
			E.printStackTrace();
			
		}
		
	}

	
	//confirm complaint//
	public boolean comValidate(complaint com) {
		
		try {
			
			String query = "SELECT * FROM complaint   WHERE name ='"+com.getName()+"' AND email= '"+com.getEmail()+"' ";
			
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
	
	public complaint getone(complaint com) {
		
		try {
			
			String query = "SELECT * FROM complaint   WHERE name ='"+com.getName()+"' AND email= '"+com.getEmail()+"' ";
			
			//fixed//
			Statement smt =DBconnect.getConnection().createStatement();
			
			
			ResultSet rs= smt.executeQuery(query);
			
			if(rs.next()) {
				com.setName(rs.getString("name"));
				com.setEmail(rs.getString("email"));
				com.setComplaint(rs.getString("complaint"));
				return com;
			}
			
		}catch(Exception E) {
			
			
			E.printStackTrace();
		}
		return null;
		
		
	}
	//get all complaint list//
	public ArrayList<complaint>getAllcomplaint() {
		
		try {
			
			
			ArrayList<complaint> listcom =new ArrayList<complaint>();
			
			String query ="select * from complaint";
			
			Statement smt =DBconnect.getConnection().createStatement();
			ResultSet rs= smt.executeQuery(query);
			
			while(rs.next()) {
				
				complaint com =new complaint ();
				
			com.setName(rs.getString("name"));
			com.setEmail(rs.getString("email"));
			com.setComplaint(rs.getString("complaint"));
			
			
			listcom.add(com);
			}
			
			return listcom;
		}catch(Exception E) {
			
			
			E.printStackTrace();
			return null;
			
		}
	
}

	public complaint combutton(complaint com) {
		
		try {
			
			String query = "SELECT * FROM complaint   WHERE email= '"+com.getEmail()+"' ";
			
			//fixed//
			Statement smt =DBconnect.getConnection().createStatement();
			
			
			ResultSet rs= smt.executeQuery(query);
			
			if(rs.next()) {
				com.setName(rs.getString("name"));
				com.setEmail(rs.getString("email"));
				com.setComplaint(rs.getString("complaint"));
				return com;
			}
			
		}catch(Exception E) {
			
			
			E.printStackTrace();
		}
		return null;
		
		
	}
	//update complaint//
	public void comupdate(complaint com ) {
		
		try {
			
		
			String query = "UPDATE complaint SET name='" + com.getName() + "', email='" + com.getEmail() + "', complaint='" + com.getComplaint() + "' WHERE email='" + com.getEmail() + "'";

			
			Statement smt =DBconnect.getConnection().createStatement();
			smt.executeUpdate(query);
			
		}catch(Exception E) {
			
			E.printStackTrace();
			
		}
		
	}

	//delete complaint//
	public void deletecomplaint(complaint com) {
		
		try {
			
			String query="Delete from complaint where email='"+com.getEmail()+"'";
			
			Statement smt =DBconnect.getConnection().createStatement();
			
			smt.executeUpdate(query);
			
		}catch(Exception E) {
			
			
			E.printStackTrace();
			
		}
	
}
	
	
}
