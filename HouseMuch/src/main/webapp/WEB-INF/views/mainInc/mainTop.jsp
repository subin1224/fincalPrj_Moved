<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>HouseMuch</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/app-assets/images/ico/apple-icon-120.png">
  <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/app-assets/images/ico/favicon.ico">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&family=Open+Sans:ital,wght@0,400;0,600;0,700;0,800;1,400;1,600;1,700;1,800&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;1,100;1,300;1,400;1,500&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="${pageContext.request.contextPath}/resources/user/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/user/assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/user/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/user/assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/user/assets/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/user/assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="${pageContext.request.contextPath}/resources/user/assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Groovin - v2.2.0
  * Template URL: https://bootstrapmade.com/groovin-free-bootstrap-theme/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container d-flex align-items-center col-lg-10">

      <h1 class="logo mr-auto"><a href='<c:url value='/main/index.do'/>'> 
      <img alt="하우스머치 로고" src='<c:url value="/resources/aptUser_images/housemuch_logo.png"/>'>
      </a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.jsp" class="logo mr-auto"><img src="${pageContext.request.contextPath}/resources/user/assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <div class="nav-menu d-none d-lg-block">
        <ul>
          <li><a href="<c:url value='/mngcost/mngcostInquiry.do'/>">관리비 조회</a></li>
          <li><a href="<c:url value='#'/>">에너지 조회</a></li>
          <li><a href="<c:url value='#'/>">생활지원 센터</a></li>
          <li><a href="<c:url value='#'/>">커뮤니티</a></li>
          <li><a href="<c:url value='#'/>">관리비 납부</a></li>
          <li><a href="<c:url value='#'/>">chat</a></li>
          <li class="drop-down"><a href="">user1</a>
            <ul>
              <li><a href="#">Drop Down 1</a></li>
              <li><a href="#">Drop Down 2</a></li>
              <li><a href="#">Drop Down 3</a></li>
              <li><a href="#">Drop Down 4</a></li>
            </ul>
          </li>
          
          
        </ul>
      </div><!-- .nav-menu -->


    </div>
  </header><!-- End Header -->

 