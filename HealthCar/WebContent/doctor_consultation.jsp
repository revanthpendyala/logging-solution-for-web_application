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
    background: url("online-consultation-sonal-hospital-header.jpg");
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
    width:30%;

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
left:900%;
width:500px;


}
input[type=text], input[type=text] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
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
  
</div>

<div class="row">
  <div class="column side"><br><br>
  <h3>Doctor Consultation</h3>
  <p>Patients are not exclusively physically ill or exclusively emotionally distressed. Often they are both. At the start of a consultation it is usually not possible to distinguish between these states. It is the doctor's task to listen actively to the patient's story, seeking and noticing evidence for both physical illness and emotional distress</p>
  <p>Three functions of the medical consultation
1 Build the relationship
Greet the patient warmly and by name
Detect and respond to emotional issues
Active listening
2 Collect data
Do not interrupt patient
Elicit patient's explanatory model
Consider other factors
Develop shared understanding
3 Agree a management plan
Provide information
Appropriate use of reassurance
Negotiate a management plan
Make links
Negotiate behaviour change</p>
<p>involving patients Changes in society and health care in the past decade have resulted in real changes in what people expect from their doctors and in how doctors view patients.Many patients want more information than they are given. They also want to take some part in deciding about their treatment in the light of its chances of success and any side effects. Some patients, of course, do not wish to participate in decision making; they would prefer their doctor to decide on a single course of action and to advise them accordingly.</p>
  </div>
  <form action="consultation" method="post">
  <div class="column middle">
   <div class="container">

   <b>Name:<b><input type="text" placeholder="FullName" Name="fullname">
   <b>Age:<b><input type="text" placeholder="AGE" Name="age">
   <b>Gender:<b><input type="radio" name="gender" value="male" checked/>Male
                <input type="radio" name="gender" value="female" />Female<br><br>
   <b>Available Doctor:<b><select name="doctor"><option value="venkatesh">DR.Venkatesh-Cardiologist</option>
    <option value="ramesh">DR.Ramesh-Allergist</option>
    <option value="anil_shrivastav">DR.Anil-ENT </option>
    <option value="hari">DR.Hari-EYE SPECALIST</option>
 <option value="suresh">DR.Suresh-BONE SPECALIST</option>
 <option value="dileep">DR.Dileep-DENTIST</option>
</select><br><br>

 <b>Doctor Timings:<b><select name="doctortime"><option value="morning">Morning(9:00 to 10:00)</option>
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
      <b>Problem Description<b>
      <textarea rows="6" cols="55" placeholder="Problem Description" name="problem">

      </textarea>
      <b>PhoneNumber:<b><input type="text" placeholder="PhoneNumber" Name="phonenumber">

<button type="submit">Submit</button>
</div>
   </div>
   </form>
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
