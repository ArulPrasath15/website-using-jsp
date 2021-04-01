<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="icon" type="image/png" href="./images/logo.png">
    <link rel="stylesheet" type="text/css" href="semantic/dist/semantic.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css"
    />
</head>
<style>
    body
    {
        margin:0;
        padding:0;
        font-family: sans-serif;
        background-color: white;
        background-size: cover;
    }
    .box
    {
        position:absolute;
        top: 50%;
        left: 50%;
        transform:translate(-50%,-50%);
        width:800px;
        padding:40px;
        background:rgba(0,0,0,.8);
        box-sizing: border-box;
        box-shadow: 0 15px 25px rgba(0,0,0,.5);
        border-radius: 10px;
    }


</style>
<body>
<% String str=request.getParameter("str");%>
<%   int vcount = 0, ccount = 0;

    //converting all the chars to lowercase
    str = str.toLowerCase();
    for(int i = 0; i < str.length(); i++) { char ch = str.charAt(i); if(ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u') { vcount++; } else if((ch >= 'a'&& ch <= 'z')) {
        ccount++;
    }
    }%>
<div class="box">

       <center> <h3 style="color: white;"><%=str%></h3><br>
         <h2 style="color: white;">Vowels Count = <%=vcount%></h2><br>
        <h2 style="color: white;">Consonants Count = <%=ccount%></h2><br>
           <br></center>



</div>


</body>
</html>