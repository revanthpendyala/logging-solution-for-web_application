<%@ page import ="controller.*"
		 import ="model.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Health care</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
    box-sizing: border-box;
}

body {
  margin: 0;
}


.header {
    background: url("health-calculators.jpg");
	     background-size: cover;
		  background-position:center;
		  background-repeat:no-repeat;

	    padding: 200px;
    text-align: center;
    }


.topnav {
    overflow: hidden;
    background-color: #333;
    padding:15px;
}

.topnav a {
    position:relative;
    left:20%;
    display:inline;
    color: #f2f2f2;
    text-align: center;
    padding:20px;
    text-decoration: none;
}


.topnav a:hover {
    background-color: #ddd;
    color: black;
}


.column {
    float: left;
    padding: 10px;
}


.column.side {
    width: 47%;
    font-size:18.5px;
}

/* Middle column */
.column.middle {
    width: 60%;
    font-size:20px;
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}

@media (max-width: 600px) {
    .column.side, .column.middle {
        width: 100%;
    }
}

form {

width:300px;
margin:auto;

padding:100px;

}
.container {
    padding: 50px;
border:1px solid black;
position:relative;
left:150%;
width:500px;


}
</style>
</head>
<body>

<div class="header">

</div>

<div class="topnav">
  <a href="home.jsp">Home </a>
    <a href="doctor_consultation.jsp">Doctor Consultation</a>
    <a href="diagnosis.jsp">Diagnostics</a>
     <a href="healthcal.jsp">Health Calculator</a>
     <a href="medicines.jsp">Medicines</a>
    
</div>

<div class="row">
<div class="column side">
  <h3>Health Calculators</h3>
  <p>A medical calculator is a type of medical computer software, whose purpose is to allow easy calculation of various scores and indices, presenting the user with a friendly interface that hides the complexity of the formulas. Most offer further helpful information such as result interpretation guides and medical literature references.[1] Generally, such calculators are intended for use by health care professionals, and use by the general public is discouraged.</p>
  </div>
  <form>
  <div class="container">
	<label for="BMI"><a href = "C:\apache tomcat\apache-tomcat-8.0.49\webapps\html forms\bmi.html"><img src="bmi.gif" alt="BMI" width="180" height="130" align = "center"></a>&nbsp;&nbsp;</label>

	<a href = "C:\apache tomcat\apache-tomcat-8.0.49\webapps\html forms\calorie.html"><img src = "cal.gif" alt = "calorie"  align = "middle" width ="180" height ="130"></a>
</div>
</form>
<%

if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
 response.sendRedirect("index.jsp");
}

%>
	</body>
</htmL>