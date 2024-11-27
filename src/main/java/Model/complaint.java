package Model;

public class complaint {
	//encapsulation//
	private String name;
	private String email;
	private String complaint;
	
	//abstraction//
	public String getName() {
		return name;
	}//information hidding//
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	public String getComplaint() {
		return complaint;
	}
	public void setComplaint(String complaint) {
		this.complaint = complaint;
	}

	
	
}
