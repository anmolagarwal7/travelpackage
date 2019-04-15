<%@page import="pack.DbConnector"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Cocktail_Approach_for_Travel</title>
<meta name="keywords" content="travel website, free CSS, web templates" />
<meta name="description" content="Travel Site - free website template from templatemo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="https://fonts.googleapis.com/css?family=Merriweather" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Roboto+Condensed" rel="stylesheet" />
<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>


</head>
<body>
<div id="templatemo_container">
	<div id="templatemo_menu">
    	<ul>
            <li><a href="adminpage.jsp" class="current">Home</a></li>
            <li><a href="admintour.jsp">Tour Details</a></li>
            <li><a href="userd.jsp">User Details</a></li>
            <li><a href="index.jsp">Logout</a></li>
           
           
        </ul>
    </div>

	<div id="templatemo_banner">
    	
        <div id="site_title">
            <h2>
            	<!--  Travel Site  <span>free css template</span>  -->
               Mr. Holidays - One step close to your Dream Destination!
                <!--<img src="images/templatemo_logo.png" alt="free css template" /><span>free css template</span>-->
          </h2>
        </div>
        
        
    
    </div> <!-- templatemo_banner -->
    
    <div class="fw_section blue_section">
    	
        <div class="fw_section_content">
    
           <h2>Travel Packages</h2>
            <p>To help you find your way through getting a perfect experience of travelling in the World, Our site has curated several travel packages covering some of the most popular holiday destinations for you.</p>
           
            
	  </div>
            
    </div> <!-- end of blue section -->
    
    <div class="fw_section green_section">
    
    	<div class="fw_section_content">
    
            <h2>Customize your packages</h2>
            <p> Travel according to your preferences. Experience the cinematic landscapes of Switzerland to glorious Bali sun ? our collection of hand-picked travel packages solves almost every traveller's dilemma.</p>
            <div class="button_01"><a href="http://www.templatemo.com" target="_parent">Details</a></div>
            
	  </div>
    
    </div> <!-- end of green section -->
    
    <div id="templatemo_content">
    	
        <div id="side_column">
        	
            <div class="section_w280">
            
            	<h3>Promotions</h3>
                
              <div class="news_section">
                    	<img class="image_wrapper" src="images/templatemo_image_02.jpg" alt="image" />
                          </div>
                    
                    <div class="news_section">
                    	<img class="image_wrapper" src="images/templatemo_image_03.jpg" alt="image" />
                       </div>
                    
                <div class="button_01"><a href="index.jsp">Read All</a></div> 

            </div>
        
        </div>
        
        <div id="main_column">
        
            <div class="section_w560"><div style="position: absolute; left:470px; top:450px;">
                    <h3>USER TOUR PACKAGE DETAILS..!</h3><BR>
				          <table border="2" style="width: 550px; alignment-adjust: central; ">
                
                <tr style="color: red; background-color: steelblue; alignment-adjust:auto; font-family: fantasy; font-size: 18px;">
                   <td><font size="3">NAME</font></td>
                   <td align="center"><font size="3">STARTING FROM</font></td>
                   <td align="center"><font size="3">ENDING TO</font></td>
                   <td align="center"><font size="3">INTR TO VIST</font></td>
                   <td align="center"><font size="3">D.O.T</font></td>
                   <td align="center"><font size="3">TOTAL DAYS</font></td>
                   <td align="center"><font size="3">N.O.P</font></td>
                   <td align="center"><font size="3">STATUS</font></td>
                   <td align="center"><font size="3">TOTAL COST</font></td>
                   <td align="center"><font size="3">ACTION</font></td>
                   <td align="center"><font size="3">CANCEL</font></td>
                    
                   
               </tr>
<%               
    
    //userid, str, end, intr, dot, dy, nop, status_, tcost, key_
        String  u=null,st=null,en=null,intr=null,dot=null,dy=null,nop=null,sta=null,toc=null,key=null;
        
Class.forName("com.mysql.jdbc.Driver");	
Connection conn = DbConnector.getConnection();
Statement st1 = conn.createStatement();

ResultSet rs1 = st1.executeQuery("select * from  plan ");
while(rs1.next()){
u=rs1.getString("userid");
st=rs1.getString("str");
en=rs1.getString("end");
intr=rs1.getString("intr");
dot=rs1.getString("dot");
dy=rs1.getString("dy");
nop=rs1.getString("nop");
sta=rs1.getString("status_");
toc=rs1.getString("tcost");
key=rs1.getString("key_");

       %>   
       <tr style="color: #0000cc; background-color: wheat">
           <form name="ff" action="update.jsp" method="get"  onsubmit="return check()" >
              <!--<td><input type="text" name="file" value="<%=u%>" style="height: 40px; background-color: #ffccff; font-family: monospace; font-weight: bold" readonly ></td>-->
               <input type="hidden" value="<%=key%>" name="key"/>
              <td align="center"><%=u%></td>
              <td align="center"><%=st%></td>
       <td align="center"> <%=en%></td>
       <td align="center"> <%=intr%></td>
       <td align="center"> <%=dot%></td>
       <td align="center"> <%=dy%></td>
       <td align="center"> <%=nop%></td>
       <td align="center"> <%=sta%></td>
   
       <td align="center"><input type="text"  name="totoalcost" value="<%=toc%>" style="width: 80px;"/></td>
       <td align="center"><input type="submit" value="Go"></td> </form>
       <td align="center"><a href="delete.jsp?<%=key%>">Delete</a></td>
          
     <%

}                                     
%>
</tr>
                                          </table><BR></BR>
               
                </div>

                <div class="cleaner"></div>
        	</div>
            
       
            
            <div class="cleaner"></div>
        </div>
       
        <div class="cleaner">
              
            
        </div>
    </div>
<center><h3> <font color="blue">Registered Office</font></h3><p><h4><font color="black">47,Heera Bagh Colony Dayal Bagh Road, Agra(U.P)</font></h4></p></center>
    <div id="templatemo_footer">
       
        
    
       
        
        
    
    </div> <!-- end of footer -->
    
</div> <!-- end of container -->
</body>
</html>