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
    background: url("medical-background-37614775.jpg");
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

.topnav a {.
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
    width: 15%;
}

/* Middle column */
.column.middle {
    width: 70%;
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
  <form action="logout" method="post">

<input type="submit" value="logout">
</form>
</div>

<div class="row">
  <div class="column side">

  </div>
  <div class="column middle">
    <h2>About</h2>
    <p>Medical and healthcare information is some of the most personal information people search for online, and it presents a substantial opportunity for organizations in this field to provide relevant, credible, and useful health content for consumers to access when they need it</p>
    <p>Because doctors have many years of schooling and are recognized experts, many people have a natural tendency to believe whatever doctors tells them.  That belief extends to healthcare content on the Internet especially at sites of trusted professionals or organizations like doctors offices and health insurance companies. Therefore, it is critical that healthcare content, especially when it deals with diseases or medical conditions, be accurate and have transparent input and/or review by appropriate experts.</p>
    <p>Because people often seek healthcare content when under the stress of discovering that they or a loved one are suffering from a particular condition, it is important to treat healthcare and medical topics sensitively. Humor and a lighter tone are not unwelcome, but they should be limited to appropriate types of health content or discussions.</p>
    <p>The availability of medical information online is rarely something that will cause a customer to choose a particular company or healthcare provider. However, the lack of health and medical information may influence an existing customers decision to change affiliations.</p>
 <p>We are providing health calculator page in that BMI,hypertension,stroke,and there are some other calculators which wii clearly display your health conditions by taking height and weight and some other inputs from user or admin.
 <p>Now a days taking appointment from doctor is very difficult so that we created a page for doctor consultation which provides a what type of doctors are available at what time.so that healthcare users can easily get appointment from doctor whenever they want</p>
 <p> yes you can simply order your medicines to your address by just clicking on button.and cod is available.and diagnostics page is also one part of our website it provides several tests it includes blood test,bp.blood count and some other tests.</P>
  <div class="column side">

  </div>
</div>
<%

if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
 response.sendRedirect("index.jsp");
}

%>

</body>
</html>
		 