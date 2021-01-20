<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="ko">
<!-- BEGIN: Head-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description" content="Vuexy admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, Vuexy admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
    <title>HouseMuch</title>
    <link rel="apple-touch-icon" href="${pageContext.request.contextPath}//resources/app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/app-assets/images/ico/favicon.ico">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&family=Open+Sans:ital,wght@0,400;0,600;0,700;0,800;1,400;1,600;1,700;1,800&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;1,100;1,300;1,400;1,500&display=swap" rel="stylesheet">
    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/vendors/css/charts/apexcharts.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/vendors/css/extensions/toastr.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/vendors/css/editors/quill/katex.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/vendors/css/editors/quill/monokai-sublime.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/vendors/css/editors/quill/quill.snow.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/vendors/css/forms/select/select2.min.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css2?family=Inconsolata&amp;family=Roboto+Slab&amp;family=Slabo+27px&amp;family=Sofia&amp;family=Ubuntu+Mono&amp;display=swap">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/vendors/css/calendars/fullcalendar.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/vendors/css/pickers/flatpickr/flatpickr.min.css">
    
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/vendors/css/tables/datatable/datatables.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/vendors/css/tables/datatable/extensions/dataTables.checkboxes.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/vendors/css/tables/datatable/responsive.bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/vendors/css/extensions/nouislider.min.css">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/vendors/css/forms/wizard/bs-stepper.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/vendors/css/forms/spinner/jquery.bootstrap-touchspin.css">
 
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/vendors/css/extensions/swiper.min.css">
       
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/vendors/css/tables/datatable/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/vendors/css/tables/datatable/buttons.bootstrap4.min.css">
   
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/vendors/css/pickers/pickadate/pickadate.css">   

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/vendors/css/maps/leaflet.min.css">

    <!-- END: Vendor CSS-->
    

    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/bootstrap-extended.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/colors.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/components.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/themes/dark-layout.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/themes/bordered-layout.css">

    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/core/menu/menu-types/vertical-menu.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/pages/dashboard-ecommerce.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/plugins/charts/chart-apex.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/plugins/extensions/ext-component-toastr.css">
 	
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/plugins/forms/form-quill-editor.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/pages/app-email.css">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/pages/app-chat.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/pages/app-chat-list.css">
   
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/plugins/forms/pickers/form-flat-pickr.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/pages/app-calendar.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/plugins/forms/form-validation.css">
    
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/pages/app-invoice-list.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/pages/app-invoice.css">
    
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/plugins/extensions/ext-component-sliders.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/pages/app-ecommerce.css">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/plugins/forms/pickers/form-pickadate.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/plugins/forms/form-wizard.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/plugins/forms/form-number-input.css">
  
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/pages/app-ecommerce-details.css">
    
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/pages/app-user.css">
 
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/pages/page-profile.css">
  
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/pages/page-pricing.css">  

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/pages/page-blog.css">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/pages/ui-colors.css">
  
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/pages/ui-feather.css">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/plugins/maps/map-leaflet.css">
      
    <!-- END: Page CSS-->
    
    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/style.css">
    <!-- END: Custom CSS-->

	<!-- 비교 -->




</head>
<!-- END: Head-->


<!-- BEGIN: Body-->

<body class="vertical-layout vertical-menu-modern  navbar-floating footer-static" data-open="click" data-menu="vertical-menu-modern" data-col="">

    <!-- BEGIN: Header-->
    <nav class="header-navbar navbar navbar-expand-lg align-items-center floating-nav navbar-light navbar-shadow">
        <div class="navbar-container d-flex content">
            <div class="bookmark-wrapper d-flex align-items-center">
                <ul class="nav navbar-nav d-xl-none">
                    <li class="nav-item"><a class="nav-link menu-toggle" href="javascript:void(0);"><i class="ficon" data-feather="menu"></i></a></li>
                </ul>
                <ul class="nav navbar-nav bookmark-icons">
                    <li class="nav-item d-none d-lg-block"><a class="nav-link" href="<c:url value='/sample/email.do'/>" data-toggle="tooltip" data-placement="top" title="Email"><i class="ficon" data-feather="mail"></i></a></li>
                    <li class="nav-item d-none d-lg-block"><a class="nav-link" href="<c:url value='/sample/chat.do'/>" data-toggle="tooltip" data-placement="top" title="Chat"><i class="ficon" data-feather="message-square"></i></a></li>
                    <li class="nav-item d-none d-lg-block"><a class="nav-link" href="<c:url value='/sample/calendar.do'/>" data-toggle="tooltip" data-placement="top" title="Calendar"><i class="ficon" data-feather="calendar"></i></a></li>
                </ul>
             
            </div>
            <ul class="nav navbar-nav align-items-center ml-auto">
                
           
                <li class="nav-item nav-search"><a class="nav-link nav-link-search"><i class="ficon" data-feather="search"></i></a>
                    <div class="search-input">
                        <div class="search-input-icon"><i data-feather="search"></i></div>
                        <input class="form-control input" type="text" placeholder="검색하세요!" tabindex="-1" data-search="search">
                        <div class="search-input-close"><i data-feather="x"></i></div>
                        <ul class="search-list search-list-main"></ul>
                    </div>
                </li>
                
                <li class="nav-item dropdown dropdown-notification mr-25"><a class="nav-link" href="javascript:void(0);" data-toggle="dropdown"><i class="ficon" data-feather="bell"></i><span class="badge badge-pill badge-danger badge-up">5</span></a>
                    <ul class="dropdown-menu dropdown-menu-media dropdown-menu-right">
                        <li class="dropdown-menu-header">
                            <div class="dropdown-header d-flex">
                                <h4 class="notification-title mb-0 mr-auto">Notifications</h4>
                                <div class="badge badge-pill badge-light-primary">6 New</div>
                            </div>
                        </li>
                        <li class="scrollable-container media-list"><a class="d-flex" href="javascript:void(0)">
                                <div class="media d-flex align-items-start">
                                    <div class="media-left">
                                        <div class="avatar"><img src="${pageContext.request.contextPath}/resources/app-assets/images/portrait/small/avatar-s-15.jpg" alt="avatar" width="32" height="32"></div>
                                    </div>
                                    <div class="media-body">
                                        <p class="media-heading"><span class="font-weight-bolder">Congratulation Sam 🎉</span>winner!</p><small class="notification-text"> Won the monthly best seller badge.</small>
                                    </div>
                                </div>
                            </a><a class="d-flex" href="javascript:void(0)">
                                <div class="media d-flex align-items-start">
                                    <div class="media-left">
                                        <div class="avatar"><img src="${pageContext.request.contextPath}/resources/app-assets/images/portrait/small/avatar-s-3.jpg" alt="avatar" width="32" height="32"></div>
                                    </div>
                                    <div class="media-body">
                                        <p class="media-heading"><span class="font-weight-bolder">New message</span>&nbsp;received</p><small class="notification-text"> You have 10 unread messages</small>
                                    </div>
                                </div>
                            </a><a class="d-flex" href="javascript:void(0)">
                                <div class="media d-flex align-items-start">
                                    <div class="media-left">
                                        <div class="avatar bg-light-danger">
                                            <div class="avatar-content">MD</div>
                                        </div>
                                    </div>
                                    <div class="media-body">
                                        <p class="media-heading"><span class="font-weight-bolder">Revised Order 👋</span>&nbsp;checkout</p><small class="notification-text"> MD Inc. order updated</small>
                                    </div>
                                </div>
                            </a>
                            <div class="media d-flex align-items-center">
                                <h6 class="font-weight-bolder mr-auto mb-0">System Notifications</h6>
                                <div class="custom-control custom-control-primary custom-switch">
                                    <input class="custom-control-input" id="systemNotification" type="checkbox" checked="">
                                    <label class="custom-control-label" for="systemNotification"></label>
                                </div>
                            </div><a class="d-flex" href="javascript:void(0)">
                                <div class="media d-flex align-items-start">
                                    <div class="media-left">
                                        <div class="avatar bg-light-danger">
                                            <div class="avatar-content"><i class="avatar-icon" data-feather="x"></i></div>
                                        </div>
                                    </div>
                                    <div class="media-body">
                                        <p class="media-heading"><span class="font-weight-bolder">Server down</span>&nbsp;registered</p><small class="notification-text"> USA Server is down due to hight CPU usage</small>
                                    </div>
                                </div>
                            </a><a class="d-flex" href="javascript:void(0)">
                                <div class="media d-flex align-items-start">
                                    <div class="media-left">
                                        <div class="avatar bg-light-success">
                                            <div class="avatar-content"><i class="avatar-icon" data-feather="check"></i></div>
                                        </div>
                                    </div>
                                    <div class="media-body">
                                        <p class="media-heading"><span class="font-weight-bolder">Sales report</span>&nbsp;generated</p><small class="notification-text"> Last month sales report generated</small>
                                    </div>
                                </div>
                            </a><a class="d-flex" href="javascript:void(0)">
                                <div class="media d-flex align-items-start">
                                    <div class="media-left">
                                        <div class="avatar bg-light-warning">
                                            <div class="avatar-content"><i class="avatar-icon" data-feather="alert-triangle"></i></div>
                                        </div>
                                    </div>
                                    <div class="media-body">
                                        <p class="media-heading"><span class="font-weight-bolder">High memory</span>&nbsp;usage</p><small class="notification-text"> BLR Server using high memory</small>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="dropdown-menu-footer"><a class="btn btn-primary btn-block" href="javascript:void(0)">Read all notifications</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown dropdown-user"><a class="nav-link dropdown-toggle dropdown-user-link" id="dropdown-user" href="javascript:void(0);" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <div class="user-nav d-sm-flex d-none"><span class="user-name font-weight-bolder">유저네임</span><span class="user-status">Admin</span></div><span class="avatar"><img class="round" src="${pageContext.request.contextPath}//resources/app-assets/images/portrait/small/avatar-s-22.jpg" alt="avatar" height="40" width="40"><span class="avatar-status-online"></span></span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdown-user"><a class="dropdown-item" href="#"><i class="mr-50" data-feather="user"></i> Profile</a><a class="dropdown-item" href="#"><i class="mr-50" data-feather="mail"></i> Inbox</a><a class="dropdown-item" href="#"><i class="mr-50" data-feather="check-square"></i> Task</a><a class="dropdown-item" href="#"><i class="mr-50" data-feather="message-square"></i> Chats</a>
                        <div class="dropdown-divider"></div><a class="dropdown-item" href="#"><i class="mr-50" data-feather="settings"></i> Settings</a><a class="dropdown-item" href="#"><i class="mr-50" data-feather="credit-card"></i> Pricing</a><a class="dropdown-item" href="#"><i class="mr-50" data-feather="help-circle"></i> FAQ</a><a class="dropdown-item" href="#"><i class="mr-50" data-feather="power"></i> Logout</a>
                    </div>
                </li>
            </ul>
        </div>
    </nav>
     <!-- END: Header-->


    <!-- BEGIN: Main Menu-->
    <div class="main-menu menu-fixed menu-light menu-accordion menu-shadow" data-scroll-to-active="true">
        <div class="navbar-header">
            <ul class="nav navbar-nav flex-row">
                <li class="nav-item mr-auto"><a class="navbar-brand" href="${pageContext.request.contextPath}/mydash/index.do">
                <span class="brand-logo">
     
                            
                            </span>
                        <div class="brand-text">
<img alt="하우스머치관리자로고" src='<c:url value="/resources/aptAdmin_images/housemuch_adminLogo.png" />'>
</div>
                    </a></li>
                <li class="nav-item nav-toggle"><a class="nav-link modern-nav-toggle pr-0" data-toggle="collapse"><i class="d-block d-xl-none text-primary toggle-icon font-medium-4" data-feather="x"></i><i class="d-none d-xl-block collapse-toggle-icon font-medium-4  text-primary" data-feather="disc" data-ticon="disc"></i></a></li>
            </ul>
        </div>
        <div class="shadow-bottom"></div>
        <div class="main-menu-content">
            <ul class="navigation navigation-main" id="main-menu-navigation" data-menu="menu-navigation">

                <!-- 입주민 홈으로 가는 링크 : 어떤페이지로 할 지 결정하기 -->
                <li class="nav-item">
	                <a class="align-items-center" href="<c:url value='/mydash/index.do'/>"><span class="menu-title">입주민 홈으로 이동</span></a>
                </li>
                 <hr>
                <!-- navi 시작 -->
                <!----------------------------------------------- 여기부터 단독메뉴  ------------------------------------------------------------->
                <li class=" navigation-header"><span data-i18n="Apps &amp; Pages">행정 관리 업무</span><i data-feather="more-horizontal"></i>
                </li>
           
       
                <!-- 행정1 : 일정 및 공지 관리 -->
                <li class=" nav-item"><a class="d-flex align-items-center" href="#"><span class="menu-title text-truncate" data-i18n="eCommerce">일정 및 공지 관리</span></a>
                    <ul class="menu-content">
                        
                        <!-- 행정1-3 : 일정 및 공지 목록 -->
                        <li><a class="d-flex align-items-center" href="<c:url value='/admin/adminLiving/adminNoti/adminNotiList.do'/>">
                        <i data-feather="circle"></i><span class="menu-item" data-i18n="Wish List">일정/공지 목록</span></a>
                        </li>
                        
                        <!-- 행정1-1 : 일정 및 공지 등록 -->
                        <li><a class="d-flex align-items-center" href="<c:url value='/admin/adminLiving/adminNoti/adminNotiRegister.do'/>">
                        <i data-feather="circle"></i><span class="menu-item" data-i18n="Shop">일정/공지 등록</span></a>
                        </li>
                        
                        <!-- 행정1-2 : 일정 및 공지 수정 -->
                        <li><a class="d-flex align-items-center" href="<c:url value='/admin/adminLiving/adminNoti/adminNotiEdit.do'/>">
                        <i data-feather="circle"></i><span class="menu-item" data-i18n="Details">일정/공지 수정</span></a>
                        </li>
                        
                        <!-- 행정1-3 : 일정 및 공지 삭제 -->
                        <li><a class="d-flex align-items-center" href="<c:url value='/admin/adminLiving/adminNoti/adminNotiDel.do'/>">
                        <i data-feather="circle"></i><span class="menu-item" data-i18n="Wish List">일정/공지 삭제</span></a>
                        </li>
                    </ul>
                </li>

                <!-- 행정2 : 부가시설 관리 -->
                <li class=" nav-item"><a class="d-flex align-items-center" href="#"><span class="menu-title text-truncate" data-i18n="eCommerce">부가시설 관리</span></a>
                    <ul class="menu-content">
                        <!-- 행정2-1 : 부가시설 등록 -->
                        <li><a class="d-flex align-items-center" href="<c:url value='/admin/adminLiving/adminAdd/adminAddRegList.do'/>">
                        <i data-feather="circle"></i><span class="menu-item" data-i18n="Shop">부가시설 등록</span></a>
                        </li>
                        
                        <!-- 행정2-2 : 부가시설 수정 -->
                        <li><a class="d-flex align-items-center" href="<c:url value='/admin/adminLiving/adminAdd/adminAddEdit.do'/>">
                        <i data-feather="circle"></i><span class="menu-item" data-i18n="Details">부가시설 수정</span></a>
                        </li>
                        
                        <!-- 행정2-3 : 부가시설 신청내역 -->
                        <li><a class="d-flex align-items-center" href="<c:url value='/admin/adminLiving/adminAdd/adminAddResidence.do'/>">
                        <i data-feather="circle"></i><span class="menu-item" data-i18n="Wish List">부가시설 신청내역</span></a>
                        </li>
                    </ul>
                </li>
                
                

                <!-- 행정3 : 차량 관리 -->
                <li class=" nav-item"><a class="d-flex align-items-center" href="#"><span class="menu-title text-truncate" data-i18n="eCommerce">차량 관리</span></a>
                    <ul class="menu-content">
                        <!-- 행정3-1 : 방문차량 등록현황 -->
                        <li><a class="d-flex align-items-center" href="<c:url value='/admin/adminLiving/adminCar/adminCarVisit.do'/>">
                        <i data-feather="circle"></i><span class="menu-item" data-i18n="Shop">방문 차량 관리</span></a>
                        </li>
                        
                        <!-- 행정3-2 : 차량 등록 상세 -->
                        <li><a class="d-flex align-items-center" href="<c:url value='/admin/adminLiving/adminCar/adminCarDetail.do'/>">
                        <i data-feather="circle"></i><span class="menu-item" data-i18n="Details">등록 차량 상세조회</span></a>
                        </li>
                        
                        <!-- 행정2-3 : 부가시설 신청내역 -->
                        <li><a class="d-flex align-items-center" href="<c:url value='/admin/adminLiving/adminCar/adminCarResidence.do'/>">
                        <i data-feather="circle"></i><span class="menu-item" data-i18n="Wish List">세대 차량 관리</span></a>
                        </li>
                    </ul>
                </li>
                <hr>
                <!----------------------------------------------- 여기까지 단독메뉴  ------------------------------------------------------------->
                
                
                <!----------------------------------------------- 여기부터 공통메뉴  ------------------------------------------------------------->
                <li class=" navigation-header"><span data-i18n="Apps &amp; Pages">일반 관리 업무</span><i data-feather="more-horizontal"></i>
                </li>
           
       
                <!-- 일반1 : 입주민 투표 현황-->
                <li class=" nav-item"><a class="d-flex align-items-center" href="#"><span class="menu-title text-truncate" data-i18n="eCommerce">입주민 투표 현황</span></a>
                    <ul class="menu-content">
                        <!-- 행정1-1 : 입주민 투표 현황 -->
                        <li><a class="d-flex align-items-center" href="<c:url value='/admin/adminLiving/adminNoti/adminNotiRegList.do'/>">
                        <i data-feather="circle"></i><span class="menu-item" data-i18n="Shop">입주민 투표 현황</span></a>
                        </li>
                       
                    </ul>
                </li>

                <!-- 일반2 : 입주민 게시판 관리 -->
                <li class=" nav-item"><a class="d-flex align-items-center" href="#"><span class="menu-title text-truncate" data-i18n="eCommerce">입주민 게시판 관리</span></a>
                    <ul class="menu-content">
                        <!-- 일반2-1 : 입주민 게시판 카테고리 편집-->
                        <li><a class="d-flex align-items-center" href="<c:url value='/admin/adminLiving/adminAdd/adminAddRegList.do'/>">
                        <i data-feather="circle"></i><span class="menu-item" data-i18n="Shop">게시판 카테고리 편집</span></a>
                        </li>
                    </ul>
                </li>

                <!-- 일반3 : 건의 답변-->
                <li class=" nav-item"><a class="d-flex align-items-center" href="#"><span class="menu-title text-truncate" data-i18n="eCommerce">건의 사항 관리</span></a>
                    <ul class="menu-content">
                
	      		        <!-- 일반3-1 : 건의 목록-->
	                	<li><a class="d-flex align-items-center" href="<c:url value='/admin/adminLiving/adminCar/adminCarVisit.do'/>">
	                       <i data-feather="circle"></i><span class="menu-item" data-i18n="Shop">건의 게시판</span></a>
	                    </li>
	      		        <!-- 일반3-2 : 건의 답변-->
	                	<li><a class="d-flex align-items-center" href="<c:url value='/admin/adminLiving/adminCar/adminCarVisit.do'/>">
	                       <i data-feather="circle"></i><span class="menu-item" data-i18n="Shop">건의 답변</span></a>
	                    </li>
                    </ul>
                </li>
                <hr/>
                <!----------------------------------------------- 여기까지 단독메뉴  ------------------------------------------------------------->
                
                <li class=" nav-item"><a class="d-flex align-items-center" href="#"><i data-feather="user"></i><span class="menu-title text-truncate" data-i18n="User">User</span></a>
                    <ul class="menu-content">
                        <li><a class="d-flex align-items-center" href="<c:url value='/sample/app-user-list.do'/>"><i data-feather="circle"></i><span class="menu-item" data-i18n="List">List</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="<c:url value='/sample/app-user-view.do'/>"><i data-feather="circle"></i><span class="menu-item" data-i18n="View">View</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="<c:url value='/sample/app-user-edit.do'/>"><i data-feather="circle"></i><span class="menu-item" data-i18n="Edit">Edit</span></a>
                        </li>
                    </ul>
                </li>
                
                
                <li class=" nav-item"><a class="d-flex align-items-center" href="#"><i data-feather="file-text"></i><span class="menu-title text-truncate" data-i18n="Pages">Pages</span></a>
                    <ul class="menu-content">
                        <li><a class="d-flex align-items-center" href="#"><i data-feather="circle"></i><span class="menu-item" data-i18n="Authentication">Authentication</span></a>
                            <ul class="menu-content">
                                <li><a class="d-flex align-items-center" href="<c:url value='/sample/page-auth-login-v1.do'/>" target="_blank"><span class="menu-item" data-i18n="LoginV1">Login v1</span></a>
                                </li>
                                
                                <li><a class="d-flex align-items-center" href="<c:url value='/sample/page-auth-register-v1.do'/>" target="_blank"><span class="menu-item" data-i18n="RegisterV1">Register v1</span></a>
                                </li>
                               
                                <li><a class="d-flex align-items-center" href="<c:url value='/sample/page-auth-forgot-password-v1.do'/>" target="_blank"><span class="menu-item" data-i18n="ForgotPasswordV1">Forgot Password v1</span></a>
                                </li>
                                
                                <li><a class="d-flex align-items-center" href="<c:url value='/sample/page-auth-reset-password-v1.do'/>" target="_blank"><span class="menu-item" data-i18n="ResetPasswordV1">Reset Password v1</span></a>
                                </li>
                                
                            </ul>
                        </li>
                        
                        <li><a class="d-flex align-items-center" href="<c:url value='/sample/page-account-settings.do'/>"><i data-feather="circle"></i><span class="menu-item" data-i18n="Account Settings">Account Settings</span></a>
                        </li>
                        
                        <li><a class="d-flex align-items-center" href="<c:url value='/sample/page-profile.do'/>"><i data-feather="circle"></i><span class="menu-item" data-i18n="Profile">Profile</span></a>
                        </li>
                        
                        <li><a class="d-flex align-items-center" href="<c:url value='/sample/page-faq.do'/>"><i data-feather="circle"></i><span class="menu-item" data-i18n="FAQ">FAQ</span></a>
                        </li>                      
                        
                        <li><a class="d-flex align-items-center" href="<c:url value='/sample/page-pricing.do'/>"><i data-feather="circle"></i><span class="menu-item" data-i18n="Pricing">Pricing</span></a>
                        </li>
                        
                        <li><a class="d-flex align-items-center" href="#"><i data-feather="circle"></i><span class="menu-item" data-i18n="Blog">Blog</span></a>
                            <ul class="menu-content">
                                <li><a class="d-flex align-items-center" href="<c:url value='/sample/page-blog-list.do'/>"><span class="menu-item" data-i18n="List">List</span></a>
                                </li>
                                <li><a class="d-flex align-items-center" href="<c:url value='/sample/page-blog-detail.do'/>"><span class="menu-item" data-i18n="Detail">Detail</span></a>
                                </li>
                                <li><a class="d-flex align-items-center" href="<c:url value='/sample/page-blog-edit.do'/>"><span class="menu-item" data-i18n="Edit">Edit</span></a>
                                </li>
                            </ul>
                        </li>
                        
                        
                        <li><a class="d-flex align-items-center" href="#"><i data-feather="circle"></i><span class="menu-item" data-i18n="Mail Template">Mail Template</span></a>
                            <ul class="menu-content">
                             
                                <li><a class="d-flex align-items-center" href="https://pixinvent.com/demo/vuexy-mail-template/mail-invoice.html" target="_blank"><span class="menu-item" data-i18n="Invoice">Invoice</span></a>
                                </li>
                    
                            </ul>
                        </li>
                        
                        <li><a class="d-flex align-items-center" href="#"><i data-feather="circle"></i><span class="menu-item" data-i18n="Miscellaneous">Miscellaneous</span></a>
                            <ul class="menu-content">
                                <li><a class="d-flex align-items-center" href="<c:url value='/sample/page-misc-error.do'/>" target="_blank"><span class="menu-item" data-i18n="Error">Error</span></a>
                                </li>
                            </ul>
                        </li>
                        
                        
                    </ul>
                </li>
   
                
                <li class=" navigation-header"><span data-i18n="User Interface">User Interface</span><i data-feather="more-horizontal"></i>
                </li>
                <li class=" nav-item"><a class="d-flex align-items-center" href="<c:url value='/sample/ui-typography.do'/>"><i data-feather="type"></i><span class="menu-title text-truncate" data-i18n="Typography">Typography</span></a>
                </li>
                <li class=" nav-item"><a class="d-flex align-items-center" href="<c:url value='/sample/ui-colors.do'/>"><i data-feather="droplet"></i><span class="menu-title text-truncate" data-i18n="Colors">Colors</span></a>
                </li>
                <li class=" nav-item"><a class="d-flex align-items-center" href="<c:url value='/sample/ui-feather.do'/>"><i data-feather="eye"></i><span class="menu-title text-truncate" data-i18n="Feather">Feather</span></a>
                </li>
                <li class=" nav-item"><a class="d-flex align-items-center" href="#"><i data-feather="credit-card"></i><span class="menu-title text-truncate" data-i18n="Card">Card</span><span class="badge badge-light-success badge-pill ml-auto mr-1">New</span></a>
                    <ul class="menu-content">
                        <li><a class="d-flex align-items-center" href="<c:url value='/sample/card-basic.do'/>"><i data-feather="circle"></i><span class="menu-item" data-i18n="Basic">Basic</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="<c:url value='/sample/card-advance.do'/>"><i data-feather="circle"></i><span class="menu-item" data-i18n="Advance">Advance</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="<c:url value='/sample/card-statistics.do'/>"><i data-feather="circle"></i><span class="menu-item" data-i18n="Statistics">Statistics</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="<c:url value='/sample/card-analytics.do'/>"><i data-feather="circle"></i><span class="menu-item" data-i18n="Analytics">Analytics</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="<c:url value='/sample/card-actions.do'/>"><i data-feather="circle"></i><span class="menu-item" data-i18n="Card Actions">Card Actions</span></a>
                        </li>
                    </ul>
                </li>
                <li class=" nav-item"><a class="d-flex align-items-center" href="#"><i data-feather="briefcase"></i><span class="menu-title text-truncate" data-i18n="Components">Components</span></a>
                    <ul class="menu-content">
                        <li><a class="d-flex align-items-center" href="component-alerts.html"><i data-feather="circle"></i><span class="menu-item" data-i18n="Alerts">Alerts</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="component-avatar.html"><i data-feather="circle"></i><span class="menu-item" data-i18n="Avatar">Avatar</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="component-badges.html"><i data-feather="circle"></i><span class="menu-item" data-i18n="Badges">Badges</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="component-breadcrumbs.html"><i data-feather="circle"></i><span class="menu-item" data-i18n="Breadcrumbs">Breadcrumbs</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="component-buttons.html"><i data-feather="circle"></i><span class="menu-item" data-i18n="Buttons">Buttons</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="component-carousel.html"><i data-feather="circle"></i><span class="menu-item" data-i18n="Carousel">Carousel</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="component-collapse.html"><i data-feather="circle"></i><span class="menu-item" data-i18n="Collapse">Collapse</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="component-divider.html"><i data-feather="circle"></i><span class="menu-item" data-i18n="Divider">Divider</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="component-dropdowns.html"><i data-feather="circle"></i><span class="menu-item" data-i18n="Dropdowns">Dropdowns</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="component-list-group.html"><i data-feather="circle"></i><span class="menu-item" data-i18n="List Group">List Group</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="component-media-objects.html"><i data-feather="circle"></i><span class="menu-item">Media Objects</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="component-modals.html"><i data-feather="circle"></i><span class="menu-item" data-i18n="Modals">Modals</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="component-navs-component.html"><i data-feather="circle"></i><span class="menu-item" data-i18n="Navs Component">Navs Component</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="component-pagination.html"><i data-feather="circle"></i><span class="menu-item" data-i18n="Pagination">Pagination</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="component-pill-badges.html"><i data-feather="circle"></i><span class="menu-item" data-i18n="Pill Badges">Pill Badges</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="component-pills-component.html"><i data-feather="circle"></i><span class="menu-item" data-i18n="Pills Component">Pills Component</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="component-popovers.html"><i data-feather="circle"></i><span class="menu-item" data-i18n="Popovers">Popovers</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="component-progress.html"><i data-feather="circle"></i><span class="menu-item" data-i18n="Progress">Progress</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="component-spinner.html"><i data-feather="circle"></i><span class="menu-item" data-i18n="Spinner">Spinner</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="component-tabs-component.html"><i data-feather="circle"></i><span class="menu-item" data-i18n="Tabs Component">Tabs Component</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="component-timeline.html"><i data-feather="circle"></i><span class="menu-item" data-i18n="Timeline">Timeline</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="component-bs-toast.html"><i data-feather="circle"></i><span class="menu-item" data-i18n="Toasts">Toasts</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="component-tooltips.html"><i data-feather="circle"></i><span class="menu-item" data-i18n="Tooltips">Tooltips</span></a>
                        </li>
                    </ul>
                </li>
                <li class=" nav-item"><a class="d-flex align-items-center" href="#"><i data-feather="box"></i><span class="menu-title text-truncate" data-i18n="Extensions">Extensions</span></a>
                    <ul class="menu-content">
                        <li><a class="d-flex align-items-center" href="ext-component-sweet-alerts.html"><i data-feather="circle"></i><span class="menu-item" data-i18n="Sweet Alert">Sweet Alert</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="ext-component-blockui.html"><i data-feather="circle"></i><span class="menu-item" data-i18n="Block UI">BlockUI</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="ext-component-toastr.html"><i data-feather="circle"></i><span class="menu-item" data-i18n="Toastr">Toastr</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="ext-component-sliders.html"><i data-feather="circle"></i><span class="menu-item" data-i18n="Sliders">Sliders</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="ext-component-drag-drop.html"><i data-feather="circle"></i><span class="menu-item" data-i18n="Drag &amp; Drop">Drag &amp; Drop</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="ext-component-tour.html"><i data-feather="circle"></i><span class="menu-item" data-i18n="Tour">Tour</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="ext-component-clipboard.html"><i data-feather="circle"></i><span class="menu-item" data-i18n="Clipboard">Clipboard</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="ext-component-media-player.html"><i data-feather="circle"></i><span class="menu-item" data-i18n="Media player">Media Player</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="ext-component-context-menu.html"><i data-feather="circle"></i><span class="menu-item" data-i18n="Context Menu">Context Menu</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="ext-component-swiper.html"><i data-feather="circle"></i><span class="menu-item" data-i18n="swiper">Swiper</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="ext-component-tree.html"><i data-feather="circle"></i><span class="menu-item" data-i18n="Tree">Tree</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="ext-component-ratings.html"><i data-feather="circle"></i><span class="menu-item" data-i18n="Ratings">Ratings</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="ext-component-i18n.html"><i data-feather="circle"></i><span class="menu-item" data-i18n="l18n">l18n</span></a>
                        </li>
                    </ul>
                </li>
                <li class=" nav-item"><a class="d-flex align-items-center" href="#"><i data-feather="layout"></i><span class="menu-title text-truncate" data-i18n="Page Layouts">Page Layouts</span></a>
                    <ul class="menu-content">
                        <li><a class="d-flex align-items-center" href="layout-collapsed-menu.html"><i data-feather="circle"></i><span class="menu-item" data-i18n="Collapsed Menu">Collapsed Menu</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="layout-boxed.html"><i data-feather="circle"></i><span class="menu-item" data-i18n="Layout Boxed">Layout Boxed</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="layout-without-menu.html"><i data-feather="circle"></i><span class="menu-item" data-i18n="Without Menu">Without Menu</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="layout-empty.html"><i data-feather="circle"></i><span class="menu-item" data-i18n="Layout Empty">Layout Empty</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="layout-blank.html"><i data-feather="circle"></i><span class="menu-item" data-i18n="Layout Blank">Layout Blank</span></a>
                        </li>
                    </ul>
                </li>
                <li class=" navigation-header"><span data-i18n="Forms &amp; Tables">Forms &amp; Tables</span><i data-feather="more-horizontal"></i>
                </li>
                <li class=" nav-item"><a class="d-flex align-items-center" href="#"><i data-feather="copy"></i><span class="menu-title text-truncate" data-i18n="Form Elements">Form Elements</span></a>
                    <ul class="menu-content">
                        <li><a class="d-flex align-items-center" href="#"><i data-feather="circle"></i><span class="menu-item" data-i18n="Input">Input</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="#"><i data-feather="circle"></i><span class="menu-item" data-i18n="Input Groups">Input Groups</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="<c:url value='/sample/form-input-mask.do'/>"><i data-feather="circle"></i><span class="menu-item" data-i18n="Input Mask">요기 확인해주세용!!!</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="#"><i data-feather="circle"></i><span class="menu-item" data-i18n="Textarea">Textarea</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="#"><i data-feather="circle"></i><span class="menu-item" data-i18n="Checkbox">Checkbox</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="#"><i data-feather="circle"></i><span class="menu-item" data-i18n="Radio">Radio</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="#"><i data-feather="circle"></i><span class="menu-item" data-i18n="Switch">Switch</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="#"><i data-feather="circle"></i><span class="menu-item" data-i18n="Select">Select</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="#"><i data-feather="circle"></i><span class="menu-item" data-i18n="Number Input">Number Input</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="#"><i data-feather="circle"></i><span class="menu-item" data-i18n="File Uploader">File Uploader</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="#"><i data-feather="circle"></i><span class="menu-item" data-i18n="Quill Editor">Quill Editor</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="<c:url value='/sample/form-date-time-picker.do'/>"><i data-feather="circle"></i><span class="menu-item" data-i18n="Date &amp; Time Picker">Date &amp; Time Picker 봅시다!!!</span></a>
                        </li>
                    </ul>
                </li>
                <li class=" nav-item"><a class="d-flex align-items-center" href="<c:url value='/sample/form-layout.do'/>"><i data-feather="box"></i><span class="menu-title text-truncate" data-i18n="Form Layout">폼 레이아웃 ~~ </span></a>
                </li>
                <li class=" nav-item"><a class="d-flex align-items-center" href="<c:url value='/sample/form-wizard.do'/>"><i data-feather="package"></i><span class="menu-title text-truncate" data-i18n="Form Wizard">Form Wizard ~~폼~</span></a>
                </li>
                <li class=" nav-item"><a class="d-flex align-items-center" href="<c:url value='/sample/form-validation.do'/>"><i data-feather="check-circle"></i><span class="menu-title text-truncate" data-i18n="Form Validation">~폼 Validation~</span></a>
                </li>
                <li class=" nav-item"><a class="d-flex align-items-center" href="<c:url value='/sample/form-repeater.do'/>"><i data-feather="rotate-cw"></i><span class="menu-title text-truncate" data-i18n="Form Repeater">Form Repeater</span></a>
                </li>
                <li class=" nav-item"><a class="d-flex align-items-center" href="table-bootstrap.html"><i data-feather="server"></i><span class="menu-title text-truncate" data-i18n="Table">Table</span></a>
                </li>
                <li class=" nav-item"><a class="d-flex align-items-center" href="#"><i data-feather="grid"></i><span class="menu-title text-truncate" data-i18n="Datatable">Datatable</span></a>
                    <ul class="menu-content">
                        <li><a class="d-flex align-items-center" href="<c:url value='table-datatable-basic.do'/>"><i data-feather="circle"></i><span class="menu-item" data-i18n="Basic">Basic</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="<c:url value='table-datatable-advanced.do'/>"><i data-feather="circle"></i><span class="menu-item" data-i18n="Advanced">Advanced</span></a>
                        </li>
                    </ul>
                </li>
                <li class=" nav-item"><a class="d-flex align-items-center" href="table-ag-grid.html"><i data-feather="grid"></i><span class="menu-title text-truncate" data-i18n="ag-grid">agGrid Table</span></a>
                </li>
                <li class=" navigation-header"><span data-i18n="Charts &amp; Maps">Charts &amp; Maps</span><i data-feather="more-horizontal"></i>
                </li>
                <li class=" nav-item"><a class="d-flex align-items-center" href="#"><i data-feather="pie-chart"></i><span class="menu-title text-truncate" data-i18n="Charts">Charts</span><span class="badge badge-light-danger badge-pill ml-auto mr-2">2</span></a>
                    <ul class="menu-content">
                        <li><a class="d-flex align-items-center" href="<c:url value='/sample/chart-apex.do'/>"><i data-feather="circle"></i><span class="menu-item" data-i18n="Apex">Apex</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="<c:url value='/sample/chart-chartjs.do'/>"><i data-feather="circle"></i><span class="menu-item" data-i18n="Chartjs">Chartjs</span></a>
                        </li>
                    </ul>
                </li>
                <li class=" nav-item"><a class="d-flex align-items-center" href="<c:url value='/sample/maps-leaflet.do'/>"><i data-feather="map"></i><span class="menu-title text-truncate" data-i18n="Leaflet Maps">Leaflet Maps</span></a>
                </li>
                <li class=" navigation-header"><span data-i18n="Misc">Misc</span><i data-feather="more-horizontal"></i>
                </li>
                <li class=" nav-item"><a class="d-flex align-items-center" href="#"><i data-feather="menu"></i><span class="menu-title text-truncate" data-i18n="Menu Levels">Menu Levels</span></a>
                    <ul class="menu-content">
                        <li><a class="d-flex align-items-center" href="#"><i data-feather="circle"></i><span class="menu-item" data-i18n="Second Level">Second Level 2.1</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" href="#"><i data-feather="circle"></i><span class="menu-item" data-i18n="Second Level">Second Level 2.2</span></a>
                            <ul class="menu-content">
                                <li><a class="d-flex align-items-center" href="#"><span class="menu-item" data-i18n="Third Level">Third Level 3.1</span></a>
                                </li>
                                <li><a class="d-flex align-items-center" href="#"><span class="menu-item" data-i18n="Third Level">Third Level 3.2</span></a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li class="disabled nav-item"><a class="d-flex align-items-center" href="#"><i data-feather="eye-off"></i><span class="menu-title text-truncate" data-i18n="Disabled Menu">Disabled Menu</span></a>
                </li>
                <li class=" nav-item"><a class="d-flex align-items-center" href="https://pixinvent.com/demo/vuexy-html-bootstrap-admin-template/documentation"><i data-feather="folder"></i><span class="menu-title text-truncate" data-i18n="Documentation">Documentation</span></a>
                </li>
                <li class=" nav-item"><a class="d-flex align-items-center" href="https://pixinvent.ticksy.com/"><i data-feather="life-buoy"></i><span class="menu-title text-truncate" data-i18n="Raise Support">Raise Support</span></a>
                </li>
            </ul><!-- 사이드 대메뉴ul -->
        </div>
    </div>
    <!-- END: Main Menu-->
    

