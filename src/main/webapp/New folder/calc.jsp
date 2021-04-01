<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!--<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">-->
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>YOUR GPA IS...</title>
</head>
<body style="background-color: red;">
<%
    String nam=request.getParameter("sname");
    String gr1=request.getParameter("g1");
    String gr2=request.getParameter("g2");
    String gr3=request.getParameter("g3");
    int cr1=4,cr2=3,cr3=3,tot=0;
    double gpa=0;
%>
<% if(gr1.equals("A"))
{
%>  <% cr1= cr1*10; %>
<%
}


else if(gr1.equals("B"))
{
%>  <% cr1= cr1*9; %>
<%
}

else if(gr1.equals("C"))
{
%>  <% cr1= cr1*8; %>
<%
}

else if(gr1.equals("D"))
{
%>  <% cr1= cr1*7; %>
<%
}

else {
%>  <% cr1= cr1*6; %>
<%
    }

%>

<% if(gr2.equals("A"))
{
%>  <% cr2= cr2*10; %>
<%
}


else if(gr2.equals("B"))
{
%>  <% cr2= cr2*9; %>
<%
}

else if(gr2.equals("C"))
{
%>  <% cr2= cr2*8; %>
<%
}

else if(gr2.equals("D"))
{
%>  <% cr2= cr2*7; %>
<%
}

else {
%>  <% cr2= cr2*6; %>
<%
    }
%>

<% if(gr3.equals("A"))
{
%>  <% cr3= cr3*10; %>
<%
}


else if(gr3.equals("B"))
{
%>  <% cr3= cr3*9; %>
<%
}

else if(gr3.equals("C"))
{
%>  <% cr3= cr3*8; %>
<%
}

else if(gr3.equals("D"))
{
%>  <% cr3= cr3*7; %>
<%
}

else {
%> <% cr3= cr3*6; %>
<%
    }
%>

<%
    tot=cr1+cr2+cr3;
    gpa=tot/10.0;
    out.println("[STUDENT NAME: "+ nam+"]");
    out.println("<br>");

    out.println("[Grade in OS: "+ gr1+" Credits in OS: "+ cr1+"]");
    out.println("<br>");
    out.println("[Grade in AJP: "+ gr2+" Credits in AJP: "+ cr2+"]");
    out.println("<br>");
    out.println("[Grade in WT: "+ gr3+" Credits in WT: "+ cr3+"]");
    out.println("<br>");
    out.println("[GPA Obtained: "+ gpa+"]");

%>



</body>
</html>