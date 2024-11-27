package Model;

public class PaymentGateway {
	int id;
	String fname;
    String email;
    String address;
    String city;
    String state;
    int zip;
    String cardname;
    String cardnumber; // Change to String if card numbers may contain leading zeros
    String expmonth;   // MM/YY format
    int cvv;
    
    public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
    
	 public String getFname() {
		return fname;
	}
	public String getEmail() {
		return email;
	}
	public String getAddress() {
		return address;
	}
	public String getCity() {
		return city;
	}
	public String getState() {
		return state;
	}
	public int getZip() {
		return zip;
	}
	public String getCardname() {
		return cardname;
	}
	public String getCardnumber() {
		return cardnumber;
	}
	public String getExpmonth() {
		return expmonth;
	}
	public int getCvv() {
		return cvv;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public void setState(String state) {
		this.state = state;
	}
	public void setZip(int zip) {
		this.zip = zip;
	}
	public void setCardname(String cardname) {
		this.cardname = cardname;
	}
	public void setCardnumber(String cardnumber) {
		this.cardnumber = cardnumber;
	}
	public void setExpmonth(String expmonth) {
		this.expmonth = expmonth;
	}
	public void setCvv(int cvv) {
		this.cvv = cvv;
	}
	
	
}
