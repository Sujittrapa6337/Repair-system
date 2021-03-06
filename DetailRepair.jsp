<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins">
<style>
body,h1,h2,h3,h4,h5 {font-family: "Poppins", sans-serif}
body {font-size:16px;}
.w3-half img{margin-bottom:-6px;margin-top:16px;opacity:0.8;cursor:pointer}
.w3-half img:hover{opacity:1}
</style>
<script>
// Script to open and close sidebar
function w3_open() {
    document.getElementById("mySidebar").style.display = "block";
    document.getElementById("myOverlay").style.display = "block";
}
 
function w3_close() {
    document.getElementById("mySidebar").style.display = "none";
    document.getElementById("myOverlay").style.display = "none";
}
</script>
<style>
* {
    box-sizing: border-box;
}

input[type=text], select, textarea {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    resize: vertical;
}

label {
    padding: 12px 12px 12px 0;
    display: inline-block;
}

input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    float: right;
}

input[type=submit]:hover {
    background-color: #45a049;
}

.container {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}

.col-25 {
    float: left;
    width: 25%;
    margin-top: 6px;
}

.col-75 {
    float: left;
    width: 75%;
    margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
    .col-25, .col-75, input[type=submit] {
        width: 100%;
        margin-top: 0;
    }
}
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<title>index</title>
</head>
<body>
<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-red w3-collapse w3-top w3-large w3-padding" style="z-index:3;width:300px;font-weight:bold;" id="mySidebar"><br>
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-button w3-hide-large w3-display-topleft" style="width:100%;font-size:22px">ปิดเมนู</a>
  <div class="w3-container">
    <center><img src="http://www.science.mju.ac.th/chemistry/download/Logo/mju_logo.gif" style="width:150px;height:150px;padding:0px" ></center>
  </div>
   <hr>
  <div class="w3-bar-block"> 
    <a href="${pageContext.request.contextPath}/myprofile" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">หน้าแรก</a>
    <a href="${pageContext.request.contextPath}/EditProfile" class="w3-bar-item w3-button w3-hover-white" onclick="w3_close()">แก้ไขข้อมูลส่วนตัว</a>
    <a href="${pageContext.request.contextPath}/RepairList2" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">รายการแจ้งซ่อมทั้งหมด</a> 
    <a href="${pageContext.request.contextPath}/InsertRepair" class="w3-bar-item w3-button w3-hover-white" onclick="w3_close()">แจ้งซ่อม</a>
    <a href="${pageContext.request.contextPath}/ShowStatus" class="w3-bar-item w3-button w3-hover-white" onclick="w3_close()">สถานะการแจ้งซ่อม</a>
    <a href="${pageContext.request.contextPath}/logout" class="w3-bar-item w3-button w3-hover-white" onclick="w3_close()">ออกจากระบบ</a>
  </div>
</nav>

<!-- Top menu on small screens -->
<header class="w3-container w3-top w3-hide-large w3-red w3-xlarge w3-padding">
  <a href="javascript:void(0)" class="w3-button w3-red w3-margin-right" onclick="w3_open()">☰</a>
  <span>มหาวิทยาลัยแม่โจ้</span>
</header>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:340px;margin-right:40px">
<!-- Header -->
  	<div class="w3-container" style="margin-top:50px" id="showcase">
    	<h1 class="w3-xxxlarge"><b>สวัสดี</b></h1>
 	</div>
  <hr>	
  <label>${message}</label>
 <div class="container">
  	<form action="/action_page.php">
  	<h4><u>ผู้แจ้ง</u></h4>
    <div class="row">
      	<div class="col-25">
        <center><label for="Fullname">ชื่อ</label></center>
    	</div>
    <div class="col-75">
        <input type="text" id="Fullname" name="Fullname" placeholder="Your Fullname">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <center><label for="Major">สาขา</label></center>
    </div>
    <div class="col-75">
        <input type="text" id="Major" name="Major" placeholder="Your Major">
    </div>
    </div>
    <div class="row">
      <div class="col-25">
        <center><label for="Fullname">วันที่และเวลาที่แจ้ง</label></center>
      </div>
      <div class="col-75">
        	<input type="text" id="Date" name="Date" placeholder="Your Date">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <center><label for="Telephone">เบอร์โทรติดต่อ</label></center>
      </div>
      <div class="col-75">
        	<input type="text" id="Telephone" name="Telephone" placeholder="Your Telephone">
      </div>
    </div>
    <h4><u>รายการที่ดำเนินการ</u></h4>
    <div class="row">
      <div class="col-25">
        <center><label for="Position">ประเภทงาน</label></center>
      </div>
      <div class="col-75">
        <input type="text" id="WorkType" name="WorkType" placeholder="Your Worktype">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <center><label for="Telephone">อาคาร</label></center>
      </div>
      <div class="col-75">
        <input type="text" id="Building" name="Building" placeholder="Write Building"></input>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <center><label for="Telephone">เลที่ห้องและชั้น</label></center>
      </div>
      <div class="col-75">
        <input type="text" id="Floor" name="Floor" placeholder="Write Floor"></input>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <center><label for="Telephone">ปัญหาที่พบ</label></center>
      </div>
      <div class="col-75">
        <input type="text" id="Problem" name="Problem" placeholder="Write Problem"></input>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <center><label for="Telephone">สถานะ</label></center>
      </div>
      <div class="col-75">
        <input type="text" id="Status" name="Status" placeholder="Write Status"></input>
      </div>
    </div>
    <div>
    </div>
  </form>
</div>
 </div>
  
<!-- W3.CSS Container -->

<footer class="w3-light-grey w3-container w3-padding-32" style="margin-top:75px;padding-right:58px">
<p class="w3-center"><span>สำนักงานคณะวิทยาศาสตร์</span> มหาวิทยาลัยแม่โจ้</p>
</footer>

</body>
</html>