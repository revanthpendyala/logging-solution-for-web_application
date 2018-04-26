package model;
public class User {
	private String firstname;
	private String lastname;
	private String username;
	private String email;
	private String password;
	
	public User(){
		this.firstname = "";
		this.lastname = "";
		this.email = "";
		this.password = "";
		this.username = "";
	}
	
	public User(String email,String password){
		this.email = email;
		this.password = password;
		this.firstname = "";
		this.lastname = "";
	}
	
	public User(String username,String email,String password){
		this.username = username;
		this.email = email;
		this.password = password;
	}
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
	public String getfirstname() {
		return firstname;
	}

	public void setfirstname(String username) {
		this.firstname = firstname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getlastname() {
		// TODO Auto-generated method stub
		return lastname;
	}
	public void setlastname(String username) {
		this.lastname =lastname;
	}
	
}
