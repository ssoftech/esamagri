package courier_bean;

public class Add_client_bean {

	private String company_name;
	private String client_name;
	private String address;
	private String country;
	private String city;
	private String postal_code;
	private String phone_no;
	
	public Add_client_bean(String company_name, String client_name, String address, String country, String city,
			String postal_code, String phone_no) {
		super();
		this.company_name = company_name;
		this.client_name = client_name;
		this.address = address;
		this.country = country;
		this.city = city;
		this.postal_code = postal_code;
		this.phone_no = phone_no;
	}

	public String getCompany_name() {
		return company_name;
	}

	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}

	public String getClient_name() {
		return client_name;
	}

	public void setClient_name(String client_name) {
		this.client_name = client_name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPostal_code() {
		return postal_code;
	}

	public void setPostal_code(String postal_code) {
		this.postal_code = postal_code;
	}

	public String getPhone_no() {
		return phone_no;
	}

	public void setPhone_no(String phone_no) {
		this.phone_no = phone_no;
	}
	
	
	
}
