<%-- 
    Document   : index
    Created on : Jun 22, 2023, 10:44:59 PM
    Author     : ftoyi
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
    //Use a try/catch block to catch any database exceptions
    try {
    //Create connection to the database
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection(
    "jdbc:mysql://localhost:3306/world" , "root", "admin");
    
    //Create a new SQL statement using the connection
    Statement stmt = con.createStatement();
    
    
    //Execute the SQL statement to retrieve a result set of records from the database.
    //This SQL query will retrieve all of the records in the bookings table
    ResultSet rs =stmt.executeQuery("SELECT name FROM bookings;" + ";");
    
    //Use a while loop to iterate through the resultset of records
    while (rs.next()){
    //print out the data in name column in the current record
    //The first column contains name so we are calling the getString() method to retrieve it.
    
%>
    


    <%
}//end while loop
//close the connection to the database
con.close();
}catch(Exception e){
out.println(e);
}//end try catch
%>

</body>
</html>

        
            
            
        
