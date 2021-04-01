
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@ page import="java.io.PrintWriter" %>

<%
    String id = "";
    String fn = request.getParameter("firstn");
    String ln = request.getParameter("lastn");
    String email = request.getParameter("email");
    String phone = request.getParameter("phonenum");
    String applyfor = request.getParameter("applyfor");
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


     try {
       out.println("<script>alert('Application Submitted Successfully');</script>");

       connection = DriverManager.getConnection(
               connectionUrl + dbName, userId, password);
       statement = connection.createStatement();
       String sql = "INSERT INTO reg VALUES('"+ fn + "','" + ln + "','" + email + "','" + phone + "','" + applyfor + "','" + date + "','" + url + "','Studnet','portfolio')";
       int flage = statement.executeUpdate(sql);
       out.println("<script>alert('Application Submitted Successfully');</script>");

     } catch (Exception e) {
       e.printStackTrace();
     }


%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html class="supernova"><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="alternate" type="application/json+oembed" href="https://www.jotform.com/oembed/?format=json&amp;url=https%3A%2F%2Fform.jotform.com%2F203413790583153" title="oEmbed Form">
<link rel="alternate" type="text/xml+oembed" href="https://www.jotform.com/oembed/?format=xml&amp;url=https%3A%2F%2Fform.jotform.com%2F203413790583153" title="oEmbed Form">
<meta property="og:title" content="New Job Application Form" >
<meta property="og:url" content="https://form.jotform.com/203413790583153" >
<meta property="og:description" content="Please click the link to complete this form." >
<meta name="slack-app-id" content="AHNMASS8M">
<%--<link rel="shortcut icon" href="https://cdn.jotfor.ms/favicon.ico">--%>
<link rel="canonical" href="https://form.jotform.com/203413790583153" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=2.0, user-scalable=1" />
<meta name="HandheldFriendly" content="true" />
<title>New Job Application Form</title>
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

<script src="https://cdnjs.cloudflare.com/ajax/libs/punycode/1.4.1/punycode.min.js"></script>
<script src="https://cdn.jotfor.ms/js/vendor/jquery-1.8.0.min.js?v=3.3.22170" type="text/javascript"></script>
<script src="https://cdn.jotfor.ms/js/vendor/maskedinput.min.js?v=3.3.22170" type="text/javascript"></script>
<script src="https://cdn.jotfor.ms/js/vendor/jquery.maskedinput.min.js?v=3.3.22170" type="text/javascript"></script>
<script src="https://cdn.jotfor.ms/js/vendor/imageinfo.js?v=3.3.22170" type="text/javascript"></script>
<script src="https://cdn.jotfor.ms/static/prototype.forms.js" type="text/javascript"></script>
<script src="https://cdn.jotfor.ms/static/jotform.forms.js?3.3.22170" type="text/javascript"></script>
<script type="text/javascript">
   JotForm.setConditions([{"action":{"field":"11","visibility":"Show"},"link":"Any","terms":[{"field":"10","operator":"equals","value":"Upload File"}],"type":"field"},{"action":{"field":"12","visibility":"Show"},"link":"Any","terms":[{"field":"10","operator":"equals","value":"Provide URL"}],"type":"field"}]);
	JotForm.init(function(){
      setTimeout(function() {
          $('input_5').hint('ex: myname@example.com');
       }, 20);
      JotForm.setPhoneMaskingValidator( 'input_6_full', '(###) ###-####' );

 JotForm.calendarMonths = ["January","February","March","April","May","June","July","August","September","October","November","December"];
 JotForm.calendarDays = ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"];
 JotForm.calendarOther = {"today":"Today"};
 var languageOptions = document.querySelectorAll('#langList li'); 
 for(var langIndex = 0; langIndex < languageOptions.length; langIndex++) { 
   languageOptions[langIndex].on('click', function(e) { setTimeout(function(){ JotForm.setCalendar("8", false, {"days":{"monday":true,"tuesday":true,"wednesday":true,"thursday":true,"friday":true,"saturday":true,"sunday":true},"future":true,"past":true,"custom":false,"ranges":false,"start":"","end":""}); }, 0); });
 } 
 JotForm.setCalendar("8", false, {"days":{"monday":true,"tuesday":true,"wednesday":true,"thursday":true,"friday":true,"saturday":true,"sunday":true},"future":true,"past":true,"custom":false,"ranges":false,"start":"","end":""});
if (window.JotForm && JotForm.accessible) $('input_12').setAttribute('tabindex',0);
	JotForm.newDefaultTheme = true;
	JotForm.extendsNewTheme = false;
	JotForm.newPaymentUIForNewCreatedForms = false;
	JotForm.newPaymentUI = true;
    /*INIT-END*/
	});

   JotForm.prepareCalculationsOnTheFly([null,null,{"name":"submit","qid":"2","text":"Submit","type":"control_button"},{"name":"clickTo","qid":"3","text":"Job Application","type":"control_head"},{"name":"fullName4","qid":"4","text":"Full Name","type":"control_fullname"},{"name":"email5","qid":"5","subLabel":"example@example.com","text":"E-mail","type":"control_email"},{"name":"phoneNumber6","qid":"6","text":"Phone Number","type":"control_phone"},null,{"name":"availableStart8","qid":"8","text":"Available start date:","type":"control_datetime"},{"name":"whatIs9","qid":"9","text":"What is your current employment status?","type":"control_radio"},{"name":"howDo","qid":"10","text":"How do you prefer to submit your resume?","type":"control_radio"},{"name":"uploadFile","qid":"11","text":"Upload File","type":"control_fileupload"},{"name":"url","qid":"12","subLabel":"Website URL of your resume","text":"URL:","type":"control_textbox"},{"name":"whatPosition","qid":"13","text":"What position are you applying for?","type":"control_dropdown"}]);
   setTimeout(function() {
JotForm.paymentExtrasOnTheFly([null,null,{"name":"submit","qid":"2","text":"Submit","type":"control_button"},{"name":"clickTo","qid":"3","text":"Job Application","type":"control_head"},{"name":"fullName4","qid":"4","text":"Full Name","type":"control_fullname"},{"name":"email5","qid":"5","subLabel":"example@example.com","text":"E-mail","type":"control_email"},{"name":"phoneNumber6","qid":"6","text":"Phone Number","type":"control_phone"},null,{"name":"availableStart8","qid":"8","text":"Available start date:","type":"control_datetime"},{"name":"whatIs9","qid":"9","text":"What is your current employment status?","type":"control_radio"},{"name":"howDo","qid":"10","text":"How do you prefer to submit your resume?","type":"control_radio"},{"name":"uploadFile","qid":"11","text":"Upload File","type":"control_fileupload"},{"name":"url","qid":"12","subLabel":"Website URL of your resume","text":"URL:","type":"control_textbox"},{"name":"whatPosition","qid":"13","text":"What position are you applying for?","type":"control_dropdown"}]);}, 20); 
</script>
</head>
<body>
<form method="get" >
  <input type="hidden" name="formID" value="203413790583153" />
  <input type="hidden" id="JWTContainer" value="" />
  <input type="hidden" id="cardinalOrderNumber" value="" />
  <div role="main" class="form-all">
    <ul class="form-section page-section">
      <li id="cid_3" class="form-input-wide" data-type="control_head">
        <div class="form-header-group  header-large">
          <div class="header-text httal htvam">
            <h1 id="header_3" class="form-header" data-component="header">
              Resume Application
            </h1>
          </div>
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_fullname" id="id_4">
        <label class="form-label form-label-top" id="label_4" for="first_4">
          Full Name
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_4" class="form-input-wide jf-required" data-layout="full">
          <div data-wrapper-react="true">
            <span class="form-sub-label-container" style="vertical-align:top" data-input-type="first">
              <input type="text" id="first_4" name="firstn" class="form-textbox validate[required]" size="10" value="" data-component="first" aria-labelledby="label_4 sublabel_4_first" required="" />
              <label class="form-sub-label" for="first_4" id="sublabel_4_first" style="min-height:13px" aria-hidden="false"> First Name </label>
            </span>
            <span class="form-sub-label-container" style="vertical-align:top" data-input-type="last">
              <input type="text" id="last_4" name="lastn" class="form-textbox validate[required]" size="15" value="" data-component="last" aria-labelledby="label_4 sublabel_4_last" required="" />
              <label class="form-sub-label" for="last_4" id="sublabel_4_last" style="min-height:13px" aria-hidden="false"> Last Name </label>
            </span>
          </div>
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_email" id="id_5">
        <label class="form-label form-label-top" id="label_5" for="input_5">
          E-mail
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_5" class="form-input-wide jf-required" data-layout="half">
          <span class="form-sub-label-container" style="vertical-align:top">
            <input type="email" id="input_5" name="email" class="form-textbox validate[required, Email]" style="width:310px" size="310" value="" placeholder="ex: myname@example.com" data-component="email" aria-labelledby="label_5 sublabel_input_5" required="" />
            <label class="form-sub-label" for="input_5" id="sublabel_input_5" style="min-height:13px" aria-hidden="false"> example@example.com </label>
          </span>
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_email" id="id_51">
        <label class="form-label form-label-top" id="label_51" for="input_5">
          Phone Number
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_51" class="form-input-wide jf-required" data-layout="half">
          <span class="form-sub-label-container" style="vertical-align:top">
            <input type="text" id="input_51" name="phonenum" class="form-textbox " style="width:310px" size="310" value=""  data-component="email" aria-labelledby="label_5 sublabel_input_5" required="" />
            <label class="form-sub-label" for="input_5" id="sublabel_input_51" style="min-height:13px" aria-hidden="false"></label>
          </span>
        </div>
      </li>

      <li class="form-line" data-type="control_dropdown" id="id_13">
        <label class="form-label form-label-top" id="label_13" for="input_13"> What position are you applying for? </label>
        <div id="cid_13" class="form-input-wide" data-layout="half">
          <select class="form-dropdown" id="input_13" name="applyfor" style="width:310px" data-component="dropdown" aria-labelledby="label_13">
            <option value=""> Please Select </option>
            <option value="Software Developer"> Software Developer </option>
            <option value="Tester"> Tester </option>
            <option value="Web developer"> Web developer </option>
          </select>
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_datetime" id="id_8">
        <label class="form-label form-label-top" id="label_8" for="lite_mode_8">
          Available start date:
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_8" class="form-input-wide jf-required" data-layout="half">
          <div data-wrapper-react="true">
            <div style="display:none">
              <span class="form-sub-label-container" style="vertical-align:top">
                <input type="tel" class="form-textbox validate[required, limitDate]" id="month_8" name="date" size="2" data-maxlength="2" data-age="" maxLength="2" value="" required="" autoComplete="off" aria-labelledby="label_8 sublabel_8_month" />
                <span class="date-separate" aria-hidden="true">
                   -
                </span>
                <label class="form-sub-label" for="month_8" id="sublabel_8_month" style="min-height:13px" aria-hidden="false"> Month </label>
              </span>
              <span class="form-sub-label-container" style="vertical-align:top">
                <input type="tel" class="form-textbox validate[required, limitDate]" id="day_8" name="q8_availableStart8[day]" size="2" data-maxlength="2" data-age="" maxLength="2" value="" required="" autoComplete="off" aria-labelledby="label_8 sublabel_8_day" />
                <span class="date-separate" aria-hidden="true">
                   -
                </span>
                <label class="form-sub-label" for="day_8" id="sublabel_8_day" style="min-height:13px" aria-hidden="false"> Day </label>
              </span>
              <span class="form-sub-label-container" style="vertical-align:top">
                <input type="tel" class="form-textbox validate[required, limitDate]" id="year_8" name="q8_availableStart8[year]" size="4" data-maxlength="4" data-age="" maxLength="4" value="" required="" autoComplete="off" aria-labelledby="label_8 sublabel_8_year" />
                <label class="form-sub-label" for="year_8" id="sublabel_8_year" style="min-height:13px" aria-hidden="false"> Year </label>
              </span>
            </div>
            <span class="form-sub-label-container" style="vertical-align:top">
              <input type="text" class="form-textbox validate[required, limitDate, validateLiteDate]" id="lite_mode_8" size="12" data-maxlength="12" maxLength="12" data-age="" value="" required="" data-format="mmddyyyy" data-seperator="-" placeholder="MM-DD-YYYY" autoComplete="off" aria-labelledby="label_8 sublabel_8_litemode" />
              <img class=" newDefaultTheme-dateIcon icon-liteMode" alt="Pick a Date" id="input_8_pick" src="https://cdn.jotfor.ms/images/calendar.png" data-component="datetime" aria-hidden="true" data-allow-time="No" data-version="v2" />
              <label class="form-sub-label" for="lite_mode_8" id="sublabel_8_litemode" style="min-height:13px" aria-hidden="false"> Date </label>
            </span>
          </div>
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_radio" id="id_9">
        <label class="form-label form-label-top" id="label_9" for="input_9">
          What is your current employment status?
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_9" class="form-input-wide jf-required" data-layout="full">
          <div class="form-multiple-column" data-columncount="2" role="group" aria-labelledby="label_9" data-component="radio">
            <span class="form-radio-item">
              <span class="dragger-item">
              </span>
              <input type="radio" class="form-radio validate[required]" id="input_9_0" name="q9_whatIs9" value="Employed" required="" />
              <label id="label_input_9_0" for="input_9_0"> Employed </label>
            </span>
            <span class="form-radio-item">
              <span class="dragger-item">
              </span>
              <input type="radio" class="form-radio validate[required]" id="input_9_1" name="q9_whatIs9" value="Unemployed" required="" />
              <label id="label_input_9_1" for="input_9_1"> Unemployed </label>
            </span>
            <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="radio" class="form-radio validate[required]" id="input_9_2" name="q9_whatIs9" value="Self-Employed" required="" />
              <label id="label_input_9_2" for="input_9_2"> Self-Employed </label>
            </span>
            <span class="form-radio-item">
              <span class="dragger-item">
              </span>
              <input type="radio" class="form-radio validate[required]" id="input_9_3" name="q9_whatIs9" value="Student" required="" />
              <label id="label_input_9_3" for="input_9_3"> Student </label>
            </span>
          </div>
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_radio" id="id_10">
        <label class="form-label form-label-top" id="label_10" for="input_10">
          How do you prefer to submit your resume?
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_10" class="form-input-wide jf-required" data-layout="full">
          <div class="form-single-column" role="group" aria-labelledby="label_10" data-component="radio">
<%--            <span class="form-radio-item" style="clear:left">--%>
<%--              <span class="dragger-item">--%>
<%--              </span>--%>
<%--              <input type="radio" class="form-radio validate[required]" id="input_10_0" name="q10_howDo" value="Upload File" required="" />--%>
<%--              <label id="label_input_10_0" for="input_10_0"> Upload File </label>--%>
<%--            </span>--%>
            <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="radio" class="form-radio validate[required]" id="input_10_1" name="q10_howDo" value="Provide URL" required="" />
              <label id="label_input_10_1" for="input_10_1"> Provide Portfolio URL </label>
            </span>
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_fileupload" id="id_11">
        <label class="form-label form-label-top" id="label_11" for="input_11"> Upload File </label>
        <div id="cid_11" class="form-input-wide" data-layout="full">
          <div class="jfQuestion-fields" data-wrapper-react="true">
            <div class="jfField isFilled">
              <div class="jfUpload-wrapper">
                <div class="jfUpload-container">
                  <div class="jfUpload-text-container">
                    <div class="jfUpload-icon forDesktop">
                      <span class="iconSvg  dhtupload ">
                        <svg viewBox="0 0 54 47" version="1.1" xmlns="http://www.w3.org/2000/svg">
                          <g stroke="none" strokeWidth="1" fill="none">
                            <g transform="translate(-1506.000000, -2713.000000)">
                              <g transform="translate(1421.000000, 2713.000000)">
                                <path d="M125.212886,10.1718048 C127.110227,10.3826204 128.89335,10.9096517 130.562307,11.7529143 C132.231264,12.596177 133.689384,13.676591 134.93671,14.9941889 C136.184036,16.3117868 137.167828,17.8226097 137.888114,19.5267029 C138.608401,21.2307962 138.968539,23.049054 138.968539,24.9815309 C138.968539,26.8086 138.687456,28.6356416 138.125281,30.4627107 C137.563106,32.2897797 136.746207,33.9323605 135.674561,35.3905021 C134.602915,36.8486438 133.267769,38.0520318 131.669084,39.0007022 C130.070398,39.9493727 128.217005,40.4588363 126.108848,40.5291081 L122.261482,40.5291081 C121.804714,40.5291081 121.409441,40.3622149 121.07565,40.0284235 C120.741858,39.694632 120.574965,39.2993586 120.574965,38.8425913 C120.574965,38.385824 120.741858,37.9905506 121.07565,37.6567591 C121.409441,37.3229677 121.804714,37.1560744 122.261482,37.1560744 L126.108848,37.1560744 C127.549422,37.1560744 128.858216,36.7871526 130.03527,36.0492978 C131.212324,35.3114429 132.222468,34.3627867 133.06573,33.2033006 C133.908993,32.0438144 134.558998,30.743804 135.015765,29.3032303 C135.472533,27.8626567 135.700913,26.4221046 135.700913,24.9815309 C135.700913,23.4004134 135.384694,21.9159421 134.752247,20.5280723 C134.1198,19.1402026 133.258983,17.9280307 132.169768,16.8915204 C131.080554,15.85501 129.833247,15.0293277 128.427809,14.4144487 C127.022371,13.7995697 125.529116,13.4921348 123.947999,13.4921348 L122.735815,13.4394312 L122.366889,12.2799508 C121.48849,9.46907537 120.07429,7.28189569 118.124245,5.71834621 C116.1742,4.15479672 113.53026,3.37303371 110.192346,3.37303371 C108.084189,3.37303371 106.186876,3.73317173 104.500351,4.45345857 C102.813826,5.17374541 101.36449,6.17510478 100.1523,7.45756671 C98.9401098,8.74002865 98.0090213,10.2684193 97.3590063,12.0427844 C96.7089914,13.8171496 96.3839888,15.7232459 96.3839888,17.7611306 L96.4366924,17.7611306 L96.5420997,19.3422402 L95.0136938,19.6057584 C93.1514888,19.9219819 91.5703951,20.9233413 90.2703652,22.6098666 C88.9703353,24.2963919 88.3203301,26.1937043 88.3203301,28.301861 C88.3203301,30.6911051 89.1196608,32.7640947 90.7183462,34.5208919 C92.3170316,36.277689 94.2055603,37.1560744 96.3839888,37.1560744 L101.232725,37.1560744 C101.724628,37.1560744 102.128685,37.3229677 102.444909,37.6567591 C102.761132,37.9905506 102.919242,38.385824 102.919242,38.8425913 C102.919242,39.2993586 102.761132,39.694632 102.444909,40.0284235 C102.128685,40.3622149 101.724628,40.5291081 101.232725,40.5291081 L96.3839888,40.5291081 C94.8380073,40.5291081 93.3798875,40.2041055 92.0095857,39.5540906 C90.6392839,38.9040756 89.4358959,38.0169064 88.3993855,36.8925562 C87.3628752,35.768206 86.5371929,34.4681956 85.9223139,32.992486 C85.3074349,31.5167763 85,29.9532503 85,28.301861 C85,25.5963933 85.7554115,23.1544819 87.266257,20.9760534 C88.7771026,18.7976249 90.7095505,17.3395051 93.0636587,16.6016503 C93.2042025,14.2475421 93.7224499,12.0603624 94.6184164,10.0400456 C95.514383,8.0197289 96.7089871,6.26295807 98.2022647,4.76968048 C99.6955423,3.27640288 101.452313,2.10815028 103.47263,1.26488764 C105.492947,0.421624997 107.732829,0 110.192346,0 C112.089686,0 113.82889,0.237164061 115.410007,0.711499298 C116.991124,1.18583453 118.414109,1.8621913 119.679003,2.74058989 C120.943897,3.61898847 122.033095,4.69061868 122.946629,5.95551264 C123.860164,7.22040661 124.615575,8.62582326 125.212886,10.1718048 Z M113.249157,23.611236 L119.468188,30.4627107 C119.71414,30.7086623 119.837114,30.9985295 119.837114,31.3323209 C119.837114,31.6661124 119.71414,31.9735473 119.468188,32.2546348 L119.046559,32.5181531 C118.835743,32.7641047 118.563444,32.8607271 118.229652,32.8080232 C117.895861,32.7553193 117.605994,32.6059937 117.360042,32.3600421 L113.670787,28.2491573 L113.670787,45.2197331 C113.670787,45.7116364 113.503893,46.1156936 113.170102,46.4319171 C112.83631,46.7481406 112.441037,46.90625 111.98427,46.90625 C111.492366,46.90625 111.088309,46.7481406 110.772086,46.4319171 C110.455862,46.1156936 110.297753,45.7116364 110.297753,45.2197331 L110.297753,28.2491573 L106.713904,32.2546348 C106.467953,32.5005864 106.178086,32.649912 105.844294,32.7026159 C105.510503,32.7553198 105.220636,32.6586974 104.974684,32.4127458 L104.553055,32.1492275 C104.307103,31.86814 104.184129,31.5607051 104.184129,31.2269136 C104.184129,30.8931222 104.307103,30.603255 104.553055,30.3573034 L110.666678,23.611236 L110.666678,23.5585323 L111.088308,23.1369031 C111.193715,22.9963593 111.325473,22.8997369 111.483585,22.847033 C111.641697,22.7943291 111.791022,22.7679775 111.931566,22.7679775 C112.107246,22.7679775 112.265355,22.7943291 112.405899,22.847033 C112.546443,22.8997369 112.686984,22.9963593 112.827528,23.1369031 L113.249157,23.5585323 L113.249157,23.611236 Z">
                                </path>
                              </g>
                            </g>
                          </g>
                        </svg>
                      </span>
                    </div>
                  </div>
                  <div class="jfUpload-button-container">
                    <div class="jfUpload-button" aria-hidden="true" tabindex="0" style="display:none" data-version="v2">
                      Upload a File
                      <div class="jfUpload-heading forDesktop">
                        Drag and drop files here
                      </div>
                      <div class="jfUpload-heading forMobile">
                        Choose a file
                      </div>
                    </div>
                  </div>
                </div>
                <div class="jfUpload-files-container">
                  <input type="file" id="input_11" name="q11_uploadFile[]" multiple="" class="form-upload-multiple" data-imagevalidate="yes" data-file-accept="pdf, doc, docx, xls, csv, txt, rtf, html, zip, mp3, wma, mpg, flv, avi, jpg, jpeg, png, gif" data-file-maxsize="10240" data-file-minsize="0" data-file-limit="0" data-component="fileupload" aria-label="Upload a File" />
                </div>
              </div>
              <div data-wrapper-react="true">
              </div>
            </div>
            <span style="display:none" class="cancelText">
              Cancel
            </span>
            <span style="display:none" class="ofText">
              of
            </span>
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_textbox" id="id_12">
        <label class="form-label form-label-top" id="label_12" for="input_12"> URL: </label>
        <div id="cid_12" class="form-input-wide" data-layout="half">
          <span class="form-sub-label-container" style="vertical-align:top">
            <input type="text" id="input_12" name="url" data-type="input-textbox" class="form-textbox validate[Email]" style="width:310px" size="310" value="" placeholder=" " data-component="textbox" aria-labelledby="label_12 sublabel_input_12" />
            <label class="form-sub-label" for="input_12" id="sublabel_input_12" style="min-height:13px" aria-hidden="false"> Website URL of your Portfolio </label>
          </span>
        </div>
      </li>
      <li class="form-line" data-type="control_button" id="id_2">
        <div id="cid_2" class="form-input-wide" data-layout="full">
          <div data-align="right" class="form-buttons-wrapper form-buttons-right   jsTest-button-wrapperField">
            <button id="input_2" type="submit" class="form-submit-button form-submit-button-light_rounded submit-button jf-form-buttons jsTest-submitField" data-component="button" data-content="">
              Submit
            </button>
          </div>
        </div>
      </li>
      <li style="display:none">
        Should be Empty:
        <input type="text" name="website" value="" />
      </li>
    </ul>
  </div>
  <script>
  JotForm.showJotFormPowered = "new_footer";
  </script>
  <script>
  JotForm.poweredByText = "Powered by JotForm";
  </script>
  <input type="hidden" class="simple_spc" id="simple_spc" name="simple_spc" value="203413790583153" />
  <script type="text/javascript">
  var all_spc = document.querySelectorAll("form[id='203413790583153'] .si" + "mple" + "_spc");
for (var i = 0; i < all_spc.length; i++)
{
  all_spc[i].value = "203413790583153-203413790583153";
}
  </script>
  <
</form></body>
</html>
<script type="text/javascript">JotForm.ownerView=true;</script><script src="https://cdn.jotfor.ms//js/vendor/smoothscroll.min.js?v=3.3.22170"></script>
<script src="https://cdn.jotfor.ms//js/errorNavigation.js?v=3.3.22170"></script>
