
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@ page import="java.io.PrintWriter" %>

<%
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String depart = request.getParameter("depart");

    String date = request.getParameter("date");
    String url = request.getParameter("url");
    String driverName = "com.mysql.cj.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost:3306/";
    String dbName = "jobapply";
    String userId = "root";
    String password = "";
    try {
        Class.forName(driverName);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
    Connection connection = null;
    Statement statement = null;

    if(id!=null)
    {
        try {

            connection = DriverManager.getConnection(
                    connectionUrl + dbName, userId, password);
            statement = connection.createStatement();
        String sql = "INSERT INTO reg VALUES('"+ id + "','" + name + "','" + depart + "')";
        int flage = statement.executeUpdate(sql);
        out.println("<script>alert('Application Submitted Successfully');</script>");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }



%>
<html class="supernova"><head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>REgistration Form</title>
    <link type="text/css" media="print" rel="stylesheet" href="https://cdn.jotfor.ms/css/printForm.css?3.3.22170" />
    <link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/themes/CSS/5e6b428acc8c4e222d1beb91.css?themeRevisionID=5f30e2a790832f3e96009402"/>
    <link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/css/styles/payment/payment_styles.css?3.3.22170" />
    <link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/css/styles/payment/payment_feature.css?3.3.22170" />
    <style type="text/css" id="form-designer-style">
        /* Injected CSS Code */
        .form-label.form-label-auto {

            display: block;
            float: none;
            text-align: left;
            width: 100%;

        }
        /* Injected CSS Code */
    </style>

</head>
<body>
<form method="get"  >

    <div role="main" class="form-all">
        <ul class="form-section page-section">
            <li id="cid_3" class="form-input-wide" data-type="control_head">
                <div class="form-header-group  header-large">
                    <div class="header-text httal htvam">
                        <h1 id="header_3" class="form-header" data-component="header">
                            Registation Application
                        </h1>
                    </div>
                </div>
            </li>
            <li class="form-line jf-required" data-type="control_email" id="id_5">
                <label class="form-label form-label-top" id="label_5" for="input_5">
                    Alumini ID
                    <span class="form-required">
            *
          </span>
                </label>
                <div id="cid_5" class="form-input-wide jf-required" data-layout="half">
          <span class="form-sub-label-container" style="vertical-align:top">
            <input type="text" id="input_5" name="id" class="form-textbox" style="width:310px" size="310"  required />
          </span>
                </div>
            </li>
            <li class="form-line jf-required" data-type="control_email" id="id_51">
                <label class="form-label form-label-top" id="label_51" for="input_5">
                    Name
                    <span class="form-required">
            *
          </span>
                </label>
                <div id="cid_51" class="form-input-wide jf-required" data-layout="half">
          <span class="form-sub-label-container" style="vertical-align:top">
            <input type="text" id="input_51" name="name" class="form-textbox " style="width:310px" size="310" value=""   required/>
            <label class="form-sub-label" for="input_5" id="sublabel_input_51" style="min-height:13px" aria-hidden="false"></label>
          </span>
                </div>
            </li>

            <li class="form-line" data-type="control_dropdown" id="id_13">
                <label class="form-label form-label-top" id="label_13" for="input_13">Department</label>
                <div id="cid_13" class="form-input-wide" data-layout="half">
                    <select class="form-dropdown" id="input_13" name="depart" style="width:310px" data-component="dropdown" aria-labelledby="label_13" required/>
                        <option value=""> Please Select </option>
                        <option value="CSE"> CSE </option>
                        <option value="ECE"> ECE </option>
                        <option value="EEE"> EEE </option>
                    </select>
                </div>
            </li>

            <li class="form-line" data-type="control_button" id="id_2">
                <button id="1" type="submit" class="form-submit-button form-submit-button-light_rounded submit-button jf-form-buttons jsTest-submitField" data-component="button" data-content="">
                    Register
                </button>
                <button id="2" type="button" class="form-submit-button form-submit-button-light_rounded submit-button jf-form-buttons jsTest-submitField" data-component="button" data-content="">
                    Display
                </button>
                <button id="3" type="reset" class="form-submit-button form-submit-button-light_rounded submit-button jf-form-buttons jsTest-submitField" data-component="button" data-content="">
                    Reset
                </button>
            </li>
            <br><br><br>

        </ul>
        <br><br>
    </div>

    <br>
</form></body>
</html>

