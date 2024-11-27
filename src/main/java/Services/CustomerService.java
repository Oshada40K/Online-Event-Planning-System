package Services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


import Controller.DBconnect;
import Model.Customer;
import Model.PaymentGateway;

public class CustomerService {
	public void regCustomer(Customer cus) {
		try {
			
			String query = "INSERT INTO registered_user VALUES('"+0+"','"+cus.getEmail()+"', '"+cus.getName()+"', '"+cus.getAge()+"', '"+cus.getPassword()+"')";
			
			Statement statement = DBconnect.getConnection().createStatement();
			
			statement.executeUpdate(query);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
		
	public boolean validate(Customer cus) {
		try {
			
			String query = "SELECT * FROM registered_user WHERE email = '"+cus.getEmail()+"' and password = '"+cus.getPassword()+"'";
			
			Statement statement = DBconnect.getConnection().createStatement();
			
			ResultSet rs = statement.executeQuery(query);
			
			if(rs.next()) {
				return true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}
	
	public Customer getOne(Customer cus) {
		try {
			
			String query = "SELECT * FROM registered_user WHERE email = '"+cus.getEmail()+"' and password = '"+cus.getPassword()+"'";
			
			Statement statement = DBconnect.getConnection().createStatement();
			
			ResultSet rs = statement.executeQuery(query);
			
			if(rs.next()) {
				cus.setName(rs.getString("name"));
				cus.setAge(rs.getInt("age"));
				cus.setEmail(rs.getString("email"));
				cus.setPassword(rs.getString("password"));
				return cus;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	public ArrayList<Customer> getAllCustomer(){
		try {
			ArrayList<Customer> listCus = new ArrayList<Customer>();
			
			String query = "SELECT * FROM registered_user";
			
			Statement statement = DBconnect.getConnection().createStatement();
			
			ResultSet rs = statement.executeQuery(query);
			
			while(rs.next()) {
				Customer cus = new Customer();
				cus.setName(rs.getString("name"));
				cus.setAge(rs.getInt("age"));
				cus.setEmail(rs.getString("email"));
				cus.setPassword(rs.getString("password"));
				listCus.add(cus);
			}
			
			return listCus;
 		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public Customer singleDataButton(Customer cus) {
		try {
			
			String query = "SELECT * FROM registered_user WHERE email = '"+cus.getEmail()+"'";
			
			Statement statement = DBconnect.getConnection().createStatement();
			
			ResultSet rs = statement.executeQuery(query);
			
			if(rs.next()) {
				cus.setName(rs.getString("name"));
				cus.setAge(rs.getInt("age"));
				cus.setEmail(rs.getString("email"));
				cus.setPassword(rs.getString("password"));
				return cus;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	
	public void updateCustomer(Customer customer) {
		try {
			
			String query = "UPDATE registered_user SET name = '"+customer.getName()+"', age = '"+customer.getAge()+"', email = '"+customer.getEmail()+"', password = '"+customer.getPassword()+"' where email = '"+customer.getEmail()+"'";
			Statement statement = DBconnect.getConnection().createStatement();
			statement.executeUpdate(query);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void deleteCustomer(Customer cus) {
		try {
			String query = "Delete from registered_user where email = '"+cus.getEmail()+"'";
			
			Statement statement = DBconnect.getConnection().createStatement();
			statement.executeUpdate(query);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void doPayment(PaymentGateway paymentG) throws ClassNotFoundException {
		String query = "INSERT INTO payment (fname, email, address, city, state, zip, cardname, cardnumber, expmonth, cvv) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
	    
	    try (Connection connection = DBconnect.getConnection();
	         PreparedStatement preparedStatement = connection.prepareStatement(query)) {
	        
	        preparedStatement.setString(1, paymentG.getFname());
	        preparedStatement.setString(2, paymentG.getEmail());
	        preparedStatement.setString(3, paymentG.getAddress());
	        preparedStatement.setString(4, paymentG.getCity());
	        preparedStatement.setString(5, paymentG.getState());
	        preparedStatement.setInt(6, paymentG.getZip());
	        preparedStatement.setString(7, paymentG.getCardname());
	        preparedStatement.setString(8, paymentG.getCardnumber());
	        preparedStatement.setString(9, paymentG.getExpmonth());
	        preparedStatement.setInt(10, paymentG.getCvv());

	        preparedStatement.executeUpdate();
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	        // Optionally, handle exceptions more gracefully
	    } 
	}
	
	public boolean validatePayment(PaymentGateway paymentG) {
		try {
			
			String query = "SELECT * FROM payment where fname = '"+paymentG.getFname()+"' and email = '"+paymentG.getEmail()+"'";
			
			Statement statement = DBconnect.getConnection().createStatement();
			
			ResultSet rs = statement.executeQuery(query);
			if(rs.next()) {
				return true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public PaymentGateway getOnePay(PaymentGateway paymentG) {
		try {
			
			String query = "SELECT * FROM payment where fname = '"+paymentG.getFname()+"' and email = '"+paymentG.getEmail()+"'";
			
			Statement statement = DBconnect.getConnection().createStatement();
			
			ResultSet rs = statement.executeQuery(query);
			if(rs.next()) {
				paymentG.setFname(rs.getString("fname"));
				paymentG.setEmail(rs.getString("email"));
				paymentG.setAddress(rs.getString("address"));
				paymentG.setCity(rs.getString("city"));
				paymentG.setState(rs.getString("state"));
				paymentG.setZip(rs.getInt("zip"));
				paymentG.setCardname(rs.getString("cardname"));
				paymentG.setCardnumber(rs.getString("cardnumber"));
				paymentG.setExpmonth(rs.getString("expmonth"));
				paymentG.setCvv(rs.getInt("cvv"));
				return paymentG;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public ArrayList<PaymentGateway> getAllPayments(){
		try {
			
			ArrayList<PaymentGateway> listPay = new ArrayList<PaymentGateway>();
			String query = "SELECT * FROM payment";
			
			Statement statement = DBconnect.getConnection().createStatement();
			ResultSet rs = statement.executeQuery(query);
			
			while(rs.next()) {
				PaymentGateway paymentG = new PaymentGateway();
				paymentG.setFname(rs.getString("fname"));
				paymentG.setEmail(rs.getString("email"));
				paymentG.setAddress(rs.getString("address"));
				paymentG.setCity(rs.getString("city"));
				paymentG.setState(rs.getString("state"));
				paymentG.setZip(rs.getInt("zip"));
				paymentG.setCardname(rs.getString("cardname"));
				paymentG.setCardnumber(rs.getString("cardnumber"));
				paymentG.setExpmonth(rs.getString("expmonth"));
				paymentG.setCvv(rs.getInt("cvv"));
				
				listPay.add(paymentG);
			}
			
			return listPay;
			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public PaymentGateway paymentDataButton(PaymentGateway paymentG) {
		try {
			
			String query = "SELECT * FROM payment where email = '"+paymentG.getEmail()+"'";
			
			Statement statement = DBconnect.getConnection().createStatement();
			
			ResultSet rs = statement.executeQuery(query);
			if(rs.next()) {
				paymentG.setFname(rs.getString("fname"));
				paymentG.setEmail(rs.getString("email"));
				paymentG.setAddress(rs.getString("address"));
				paymentG.setCity(rs.getString("city"));
				paymentG.setState(rs.getString("state"));
				paymentG.setZip(rs.getInt("zip"));
				paymentG.setCardname(rs.getString("cardname"));
				paymentG.setCardnumber(rs.getString("cardnumber"));
				paymentG.setExpmonth(rs.getString("expmonth"));
				paymentG.setCvv(rs.getInt("cvv"));
				return paymentG;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	

	public void updatePayment(PaymentGateway paymentG) {
		try {
			String query = "UPDATE payment SET fname = '"+paymentG.getFname()+"',email = '"+paymentG.getEmail()+"', address = '"+paymentG.getAddress()+"', city = '"+paymentG.getCity()+"', state = '"+paymentG.getState()+"', zip = '"+paymentG.getZip()+"', cardname = '"+paymentG.getCardname()+"', cardnumber = '"+paymentG.getCardnumber()+"', expmonth = '"+paymentG.getExpmonth()+"', cvv = '"+paymentG.getCvv()+"'where email = '"+paymentG.getEmail()+"'";
			
			Statement statement = DBconnect.getConnection().createStatement();
			statement.executeUpdate(query);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void deletePayment(PaymentGateway paymentG) {
		try {
			String query = "Delete from payment where email = '"+paymentG.getEmail()+"'";
			
			Statement statement = DBconnect.getConnection().createStatement();
			statement.executeUpdate(query);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
