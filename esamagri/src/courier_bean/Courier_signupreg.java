package courier_bean;

public class Courier_signupreg {
	
	private String NAME;
	private String USER_NAME;
	private String EMAIL;
	private String PASSWORD;
	
	public Courier_signupreg(String nAME, String uSER_NAME, String eMAIL, String pASSWORD) {
		super();
		NAME = nAME;
		USER_NAME = uSER_NAME;
		EMAIL = eMAIL;
		PASSWORD = pASSWORD;
	}

	public String getNAME() {
		return NAME;
	}

	public void setNAME(String nAME) {
		NAME = nAME;
	}

	public String getUSER_NAME() {
		return USER_NAME;
	}

	public void setUSER_NAME(String uSER_NAME) {
		USER_NAME = uSER_NAME;
	}

	public String getEMAIL() {
		return EMAIL;
	}

	public void setEMAIL(String eMAIL) {
		EMAIL = eMAIL;
	}

	public String getPASSWORD() {
		return PASSWORD;
	}

	public void setPASSWORD(String pASSWORD) {
		PASSWORD = pASSWORD;
	}
	
	
	

}
