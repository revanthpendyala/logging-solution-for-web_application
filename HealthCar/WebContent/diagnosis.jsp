<%@ page import ="controller.*"
		 import ="model.*" %>
		 
<!DOCTYPE html>
<html lang="en">
<head>
<title>Diagnosis</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="style1.css" href="#">
<style>
* {
    box-sizing: border-box;
}

body {
  margin: 0;
}


.header {
    background: url("healthcare.jpg");
	     background-size: cover;
		  background-position:center;
		  background-repeat:no-repeat;

	    padding: 250px;
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
    width: 15%;
}

/* Middle column */
.column.middle {
    width: 10%;
    font-size:20px;
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}
.service {


    margin-top: 40px;
}
.service h2 {
    font-size: 90px;
    color: #fff;
    margin-top: 70px;
    margin-bottom: 0;
}
.service h3 {
    font-size: 24px;
    color: #fff;
    margin-top: 0;
    margin-bottom: 70px;
    display: block;
}
.single-service-img {
    width: 205px;
    height: 125px;
    background: #fff;
    position: relative;
    left: 10%;
    margin-left: -100px;
}

.single-service-img:before {
    content: "";
    position: absolute;
    top: -42px;
    left: 0;
    width: 0;
    height: 0;
    border-left: 102px solid transparent;
    border-right: 104px solid transparent;
    border-bottom: 42px solid #fff;
}
.single-service-img:after {
    content: "";
    position: absolute;
    bottom: -42px;
    left: 0;
    width: 0;
    height: 0;
    border-left: 102px solid transparent;
    border-right: 102px solid transparent;
    border-top: 42px solid #fff;
    z-index: 10;
}
.service-img {
    width: 200px;
    height: 123px;
    background: #3a9ecb;
    position: relative;
    left: 2px;
}
.service-img:before {
    content: "";
    position: absolute;
    top: -40px;
    left: 0;
    width: 0;
    height: 0;
    border-left: 100px solid transparent;
    border-right: 100px solid transparent;
    border-bottom: 40px solid #3a9ecb;
}
.service-img:after {
    content: "";
    position: absolute;
    bottom: -39px;
    left: 0;
    width: 0;
    height: 0;
    border-left: 100px solid transparent;
    border-right: 100px solid transparent;
    border-top: 40px solid #3a9ecb;
    z-index: 999;
}
.single-service h3 {
    margin-top: 60px;
    color: #fff;
    padding-bottom: 90px;
}
.service-img img.heart {
    left: 20%;

}
.service-img img.brain {
    left: 26%;

}
.service-img img.knee {
    left: 38%;
}
.service-img img.bone {
    left: 25%;

}
.service-img img {
    position:relative;
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
left:900%;
width:500px;
background-color:white;


}
button {
    background-color:gray;
    color: white;
    padding:10px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;

}

button:hover {
    opacity: 0.8;
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
    <a href="login.jsp">Logout</a>
	</div>
<section class="service text-center" id="service">
<div class="service">
<form action="diagnosis" method="post">
<div class="column middle">
<div class="container">
<b>Available Tests:<b><select name="test"><option value="sugartest">Sugar Test -50</option>
    <option value="bloodtest">Blood Test-100</option>
    <option value="aids">Aids Test-2000 </option>
    <option value="xray">Xray-400</option>
 <option value="ctsacan">CT Scan-800</option>

</select><br><br>

 <b>Test Timings:<b><select name="testtimings"><option value="morning">Morning(9:00 to 10:00)</option>
 <option value="morning">Morning(10:00 to 11:00)</option>
 <option value="morning">Morning(11:00 to 12:00)</option>
 <option value="morning">Morning(12:00 to 12:30)</option>
 <option value="afternoon">Afternoon(2:00 to 3:00)</option>
  <option value="afternoon">Afternoon(3:00 to 4:00)</option>
   <option value="afternoon">Afternoon(4:00 to 5:00)</option>
    <option value="evening">Evening(6:00 to 7:00)</option>
     <option value="evening">Evening(7:00 to 8:00)</option>
      <option value="evening">Evening(8:00 to 9:00)</option>
      <option value="night">Night(EMERGENCY)</option>
      </select><br><br>

	  <button type="submit">Submit</button>
	  </div>
</div>
   </form>
			<div class="row">
				<h2>Diagnosis</h2>
				<h3>We Provide Best Treatment.</h3>
				<div class="col-md-3 col-sm-6">
					<div class="single-service">
						<div class="single-service-img">
							<div class="service-img">
								<img class="heart img-responsive" src="service1.png" alt="">
							</div>
						</div>
						<h3>Heart problem</h3>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="single-service">
						<div class="single-service-img">
							<div class="service-img">
								<img class="brain img-responsive" src="service2.png" alt="">
							</div>
						</div>
						<h3>brain problem</h3>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="single-service">
						<div class="single-service-img">
							<div class="service-img">
								<img class="knee img-responsive" src="service3.png" alt="">
							</div>
						</div>
						<h3>knee problem</h3>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="single-service">
						<div class="single-service-img">
							<div class="service-img">
								<img class="bone img-responsive" src="service4.png" alt="">
							</div>
						</div>
						<h3>human bones problem</h3>
					</div>
				</div>
			</div>
		</div>
	</section>
<%

if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
 response.sendRedirect("index.jsp");
}

%>
</body>
</html>
