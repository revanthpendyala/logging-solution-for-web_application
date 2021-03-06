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
    padding:30px;

position:relative;
left:60%;


width:500px;


}
</style>

<script type="text/javascript">
        function computeBMI()
        {

            var height=Number(document.getElementById("height").value);
            var heightunits=document.getElementById("heightunits").value;
            var weight=Number(document.getElementById("weight").value);
            var weightunits=document.getElementById("weightunits").value;



            if (heightunits=="inches") height/=39.3700787;
            if (weightunits=="lb") weight/=2.20462;


            var BMI=weight/Math.pow(height,2);


            document.getElementById("output").innerText=Math.round(BMI*100)/100;

            if (output<18.5)
            document.getElementById("comment").value = "Underweight";
            if (output>=18.5 && output<=25)
            document.getElementById("comment").value = "Normal";
            if (output>=25 && output<=30)
            document.getElementById("comment").value = "Obese";
            if (output>30)
            document.getElementById("comment").value = "Overweight";
            document.getElementById("answer").value = output;
        }
</script>

</head>
<body>

<div class="header">

</div>

<div class="topnav">
  <a href="home.html">Home </a>
   <a href="doctor_consultation.html">Doctor Consultation</a>
   <a href="diagnosis.html">Diagnostics</a>
    <a href="healthcal.html">Health Calculator</a>
    <a href="medicines.html">Medicines</a>
    <a href="login.html">Logout</a>
</div>

<div class="row">
<div class="column side">
<h3>BMI Calculator</h3>
   <b> <p>What is BMI?</p></b>
   <p>BMI - Body Mass Index (BMI) is a person's weight in kilograms divided by the square of height in meters. A high BMI can be an indicator of high body fatness. BMI can be used to screen for weight categories that may lead to health problems but it is not diagnostic of the body fatness of an individual.</p>
    </div>

<div class="container">
    <p>Enter your height: <input type="text" id="height"/>
        <select type="multiple" id="heightunits">
            <option value="metres" selected="selected">metres</option>
            <option value="inches">inches</option>
        </select>
    </p>
    <p>Enter your weight: <input type="text" id="weight"/>
        <select type="multiple" id="weightunits">
            <option value="kg" selected="selected">kilograms</option>
            <option value="lb">pounds</option>
        </select>
    </p>
    <input type="submit" value="computeBMI" onclick="computeBMI();">
    <h1><span id="output"></span></h1>

   <b> <p>If BMI</p>
    <p>less than 18.5 - Under weight</p>
    <p>B/W 18.5 and 24.9 - Normal weight</p>
    <p>B/W  25.0 and  29.9 - Over weight</p>
    <p>B/W 30.0 and 34.9 - Obese class-I</p>
    <p>B/W 35.0 and 39.9 - Obese class-II</p>
    <p>B/W Greater than 40- Obese class-III</p></b>
</div>

<%

if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
 response.sendRedirect("index.jsp");
}

%>
	</body>
</htmL>