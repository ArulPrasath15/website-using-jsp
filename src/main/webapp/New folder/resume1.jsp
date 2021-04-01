
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@ page import="java.io.PrintWriter" %>

<%
    String id = "";
    String fn = request.getParameter("fn");
    String ln = request.getParameter("ln");
    String email = request.getParameter("email");
    String web = request.getParameter("web");
    String pos = request.getParameter("pos");
    String sal = request.getParameter("sal");
    String start = request.getParameter("start");
    String phone = request.getParameter("phone");
    String last = request.getParameter("last");
    String ref = request.getParameter("ref");

    if (!(fn == null || email.isEmpty())) {

        String driverName = "com.mysql.cj.jdbc.Driver";
        String connectionUrl = "jdbc:mysql://localhost:3306/";
        String dbName = "trainreservation";
        String userId = "root";
        String password = "";
        try {
            Class.forName(driverName);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        Connection connection = null;
        Statement statement = null;
        try {
            connection = DriverManager.getConnection(
                    connectionUrl + dbName, userId, password);
            statement = connection.createStatement();

            String sql = "INSERT INTO registration VALUES(NULL,'"+ fn + "','" + ln + "','" + email + "','" + web + "','" + pos + "','" + sal + "','" + start + "','" + phone + "','" + last + "','" + ref + "')";
            int flage = statement.executeUpdate(sql);
            out.println("<script>alert('Application Submitted Successfully');</script>");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
%>
<html>
<head>
    <title>Registration</title>
    <style>
        @import url("https://fonts.googleapis.com/css?family=Fjalla+One&display=swap");
        * {
            margin: 0;
            padding: 0;
        }

        body {
            background: url("https://s3-us-west-2.amazonaws.com/s.cdpn.io/38816/image-from-rawpixel-id-2210775-jpeg.jpg") center center no-repeat;
            background-size: cover;
            background-repeat: repeat-y;
            width: 100vw;
            height: 100vh;
            display: grid;
            align-items: center;
            justify-items: center;
        }

        .contact-us {
            background: #f8f4e5;
            padding: 50px 100px;
            border: 2px solid black;
            box-shadow: 15px 15px 1px #ffa580, 15px 15px 1px 2px black;
        }
        input {
            display: block;
            width: 100%;
            font-size: 14pt;
            line-height: 28pt;
            font-family: "Fjalla One";
            margin-bottom: 28pt;
            border: none;
            border-bottom: 5px solid black;
            background: #f8f4e5;
            min-width: 250px;
            padding-left: 5px;
            outline: none;
            color: black;
        }

        input:focus {
            border-bottom: 5px solid #ffa580;
        }

        button {
            display: block;
            margin: 0 auto;
            line-height: 28pt;
            padding: 0 20px;
            background: #ffa580;
            letter-spacing: 2px;
            transition: 0.2s all ease-in-out;
            outline: none;
            border: 1px solid black;
            box-shadow: 3px 3px 1px #95a4ff, 3px 3px 1px 1px black;
        }
        button:hover {
            background: black;
            color: white;
            border: 1px solid black;
        }

        ::selection {
            background: #ffc8ff;
        }
    </style>
</head>
<body>
<center>
    <div class="contact-us">
        <h2>JSP Resume Registration</h2><br>
        <form id="EmploymentApplication100" method="get" onsubmit="return ValidateForm(this);">
            <table border="0" cellpadding="5" cellspacing="0">
                <tr> <td style="width: 50%">
                    <label for="First_Name"><b>First name *</b></label><br />
                    <input name="fn" type="text" maxlength="50" style="width:100%;max-width: 260px" />
                </td> <td style="width: 50%">
                    <label for="Last_Name"><b>Last name *</b></label><br />
                    <input name="ln" type="text" maxlength="50" style="width:100%;max-width: 260px" />
                </td> </tr> <tr> <td colspan="2">
                <label for="Email_Address"><b>Email *</b></label><br />
                <input name="email" type="text" maxlength="100" style="width:100%;max-width: 535px" />
            </td> </tr> <tr> <td colspan="2">
                <label for="Portfolio"><b>Portfolio website</b></label><br />
                <input name="web" type="text" maxlength="255" value="http://" style="width:100%;max-width: 535px" />
            </td> </tr> <tr> <td colspan="2">
                <label for="Position"><b>Position you are applying for *</b></label><br />
                <input name="pos" type="text" maxlength="100" style="width:100%;max-width: 535px" />
            </td> </tr> <tr> <td>
                <label for="Salary"><b>Salary requirements</b></label><br /> <input name="sal" type="text" maxlength="50" style="width:100%;max-width: 260px" /> </td> <td>
                <label for="StartDate"><b>When can you start?</b></label><br />
                <input name="start" type="date" maxlength="50" style="width:100%;max-width: 260px" />
            </td> </tr> <tr> <td>
                <label for="Phone"><b>Phone *</b></label><br />
                <input name="phone" type="text" maxlength="50" style="width:100%;max-width: 260px" />
            </td>  </tr>
                <tr> <td colspan="2">
                    <label for="Organization"><b>Last company you worked for</b></label><br />
                    <input name="last" type="text" maxlength="100" style="width:100%;max-width: 535px" />
                </td> </tr> <tr> <td colspan="2">
                <label for="Reference"><b>Reference / Comments / Questions</b></label><br />
                <textarea name="ref" rows="7" cols="40" style="width:100%;max-width: 535px"></textarea>
            </td> </tr> <tr> <td colspan="2" style="text-align: center;">
                <input name="submit" type="submit" value="Send Application" />
            </td> </tr>
            </table>
        </form></div>
</center>
</body>
</html>
