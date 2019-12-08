import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class SnapTales
{
private String name,pnumber,email,event,message;

	
	public String getName() {
	return name;
}


public void setName(String name) {
	this.name = name;
}


public String getPnumber() {
	return pnumber;
}


public void setPnumber(String pnumber) {
	this.pnumber = pnumber;
}


public String getEmail() {
	return email;
}


public void setEmail(String email) {
	this.email = email;
}


public String getEvent() {
	return event;
}


public void setEvent(String event) {
	this.event = event;
}


public String getMessage() {
	return message;
}


public void setMessage(String message) {
	this.message = message;
}


	public String contact()
	{
		String ret="";
		try
		{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://snaptales.cap4ub3juflu.ap-south-1.rds.amazonaws.com:3306/snaptales","abhishekroot","abhisheksnaptales");
	    Statement st=con.createStatement();
	    int i=st.executeUpdate("insert into contact(name,phone_number,email,event,message) values ('"+name+"','"+pnumber+"','"+email+"','"+event+"','"+message+"')" );
	    if(i>0)
	    	ret="done";
	    else if(i<0)
	    	ret="ndone";
	    	
	     
		}
		catch(Exception ee)
		{
			
		}
		
		return ret;
	}
}
