<%@page import="java.sql.*,ConnectionBean.*" %>
<style>
a
{
           color:"Black";
           text-decoration:none;
}
a:hover
{
            color:Gray;
            text-decoration:underline;

}
</style>
<HTML><HEAD><TITLE>Home Page</TITLE>
<META><LINK title=report  media=screen href="css/simple.css" type=text/css type=text/css rel=stylesheet>
<BODY class=rightPage><A name=Entity_1></A>
<DIV class=caption1>DOMAIN SERVICE MANAGEMENT SYSTEM</DIV>
<a href ="javascript:history.back()" ><b>Back</b></a></b>
<DIV class=caption2>General Information</DIV>

<TABLE class=tabformat cellSpacing=1 cellPadding=2 width="100%" border=0>
  <TBODY>
  <TR>
   <TD class=tabhead width="15%"><a href="RequisitionForm.jsp">Requisition</a></TD>
       <TD class=tabhead width="15%"><a href="ServiceDetails.jsp">About Service</a></TD>
       <TD class=tabhead width="15%"><a href="CustLogin.jsp">Customer Login</a></TD>
       <TD class=tabhead width="15%"><a href="ShowTemplates.jsp">Templates</a></TD>
       <TD class=tabhead width="15%"><a href="LoginCheck">Administration</a></TD>
       <TD class=tabhead width="15%"><a href="AboutUs.jsp">About Us</a></TD>
       <TD class=tabhead width="15%"><a href="ContactUs.jsp">Contact Us</a></TD>

  </TBODY></TABLE>
<TABLE class=tabformat cellSpacing=1 cellPadding=2 width="100%" border=0 >
  <TBODY>
  <TR>
<td>



<%
try
{
Connection con=null;
Statement stmt=null;
ResultSet rs=null;
ConnectionBean CBean=new ConnectionBean();
//con=CBean.getConnection();

rs=CBean.executeQuery("select * from toservice");

System.out.println("ok");

%>
<html>
<body bgcolor=lightblue>
<form>
<center><h1 class=tabhead>SERVICE DETAILS</h1> </center>
<table align=center border=1 colspace=10>
<th>ServiceId
<th>Service Name
<th>Validity
<th>Amount
<%
while(rs.next())
{
%>
<tr>
<td class=tabhead><%=rs.getString(1) %>
<td class=tabhead><%=rs.getString(2) %>
<td class=tabhead><%=rs.getString(3) %>
<td class=tabhead><%=rs.getString(4) %>
</tr>
<%
}

}catch(Exception ex)
{
%>
<b>

<%
  out.println("Error While Connecting DataBase" + ex);
}

%>

</table>

</form>
</body>
</html>





</td>





  </TR>
</TBODY></TABLE>
<br>
<br>
<br>

<TABLE class=tabformat cellSpacing=1 cellPadding=2 width="100%" border=0>
 <TR>
     <TD class=tabhead width="10%"><H4><center>This is a Customer Domain  Registration and Service Management System Site</center></TD>
 </TR>
 
 <TR>
    <TD class=tabhead width="35%"><marquee><b>24 Hours Application dovelopment and Hosting Service </b></marquee></a></TD>
 </TR>

</TABLE>
</BODY>
</HTML>
