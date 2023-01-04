<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home page</title>
<link href="/resources/all.css" rel="stylesheet" type="text/css">
</head>
<body>
	<header>
		<div class="left">
			<ul>
				<li><a href="#main">Home</a></li>
				<li><a href="#about">About</a></li>
				<li><a href="#experience">Experience</a></li>
				<li><a href="#whatilove">What i love</a></li>
				<li><a href="#guestbook">Guest Book</a></li>
			</ul>
		</div>
	<section id=main>
		<div class="right">
				<div class="content1">
				<h1></h1>
			</div>
		</div>
	</section>
	</header>
	<section id=about>
	<div class="right">
			<div class="pic">
				<img alt="" src="/resources/img/me.jpg">
			</div>
			<div class="info">
				<ul class="detail">
					<li>NAME | 임예선</li>
					<li>BIRTH | 1995.09.04</li>
					<li>CONTACT | 010-4108-9528</li>
					<li>EMAIL | tkdzma6228@naver.com</li>
					<li>MBTI | ISFP</li>
				</ul>
			</div>
		</div>
	</section>
	<section id="experience">
		<div class="right">
		<h1> What I Achieved </h1>
			<div class="content3">
            	<input type="checkbox" id="popup">
               	<label for="popup">HighSchool</label>
	               <div>
	                  <div>
	                     <label for="popup"></label>
	                     <img src="/resources/img/high.jpg" alt="" width="700px" height="500px">
	                  </div>
	               <label for="popup">X</label>
	               </div>
            	<input type="checkbox" id="popup1">
               	<label for="popup1">University</label>
	               <div>
	                  <div>
	                     <label for="popup1"></label>
	                     <img src="/resources/img/uni.jpg" alt="" width="700px" height="500px">
	                  </div>
	               <label for="popup1">X</label>
	               </div>
            	<input type="checkbox" id="popup2">
               	<label for="popup2">Airline</label>
	               <div>
	                  <div>
	                     <label for="popup2"></label>
	                     <img src="/resources/img/kal.jpg" alt="" width="300px" height="500px">
	                  </div>
	               <label for="popup2">X</label>
	               </div>
            	<input type="checkbox" id="popup3">
               	<label for="popup3">NewZealand</label>
	               <div>
	                  <div>
	                     <label for="popup3"></label>
	                     <img src="/resources/img/new.jpg" alt="" width="700px" height="500px">
	                  </div>
	               <label for="popup3">X</label>
	               </div>
            	<input type="checkbox" id="popup4">
               	<label for="popup4">MedicalCenter</label>
	               <div>
	                  <div>
	                     <label for="popup4"></label>
	                     <img src="/resources/img/hos.jpg" alt="" width="300px" height="500px">
	                  </div>
	               <label for="popup4">X</label>
	               </div>
            	<input type="checkbox" id="popup5">
               	<label for="popup5">Academy</label>
	               <div>
	                  <div>
	                     <label for="popup5"></label>
	                     <img src="/resources/img/cube.jpg" alt="" width="300px" height="500px">
	                  </div>
	               <label for="popup5">X</label>
	               </div>
            	<input type="checkbox" id="popup6">
               	<label for="popup6">BackToStudent</label>
	               <div>
	                  <div>
	                     <label for="popup6"></label>
	                     <img src="/resources/img/ezen.jpg" alt="" width="700px" height="500px">
	                  </div>
	               <label for="popup6">X</label>
	               </div>
            	<input type="checkbox" id="popup7">
               	<label for="popup7">MyNextPage</label>
	               <div>
	                  <div>
	                     <label for="popup7"></label>
	                     <img src="/resources/img/view.jpg" alt="" width="700px" height="500px">
	                  </div>
	               <label for="popup7">X</label>
	               </div>
			</div>
		</div>
	</section>
	<section id="whatilove">
		<div class="right">
		<h1> What I Love </h1>
			<div class="slide_wrapper">
				<ul class="slides">
				<li><img alt="family" src="/resources/img/fam.jpg"><strong>가족</strong></li>
				<li><img alt="travel" src="/resources/img/travel.jpg"><strong>여행</strong></li>
				<li><img alt="doctorwho" src="/resources/img/doctor.gif"><strong>닥터후</strong></li>
				<li><img alt="yangyang" src="/resources/img/yang.jpg"><strong>양양</strong></li>
				<li><img alt="learn" src="/resources/img/learn.jpg"><strong>배우는재미</strong></li>
				<li><img alt="baking" src="/resources/img/bak.jpg"><strong>제빵</strong></li>
				<li><img alt="chilling" src="/resources/img/chilling.jpg"><strong>즐거운한잔</strong></li>
				<li><img alt="food" src="/resources/img/food.jpg"><strong>맛있는것</strong></li>
				</ul>
			</div>
			<p class="controls">
			<span class="prev"> << </span>
			<span class="next"> >> </span>
			</p>
		</div>
	</section>
	<section id="guestbook">
		<div class="right">
		<h1> 방명록 </h1>
			<div class="content5">
				<form action="/gbc/insert" method="post">
					작성자 : <input type="text" name="writer"><br>
					내용 : <textarea rows="1" cols="70" name="content" ></textarea>
					<button type="submit"> 등록 </button><br>
				</form>
				<hr>
				<table>
					<tr>
						<th>번호</th>
						<th>작성자</th>
						<th>내용</th>
						<th>작성일</th>
					</tr>
					<c:forEach items="${list }" var="gvo">
					<tr>
						<td>${gvo.gno }</td>
						<td>${gvo.writer }</td>
						<td>${gvo.content}</td>
						<td>${gvo.reg_date }</td>
					</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</section>
	<script src="/resources/main.js" type="text/javascript"></script>
</body>
</html>