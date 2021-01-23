<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../user/dashinc/usertop.jsp"%>

<style type="text/css">
div#dash-title {
	margin-bottom: 15px;
}

.section-title {
	text-align: center;
	padding-bottom: 20px;
}

.section-title h2 {
	font-size: 32px;
	font-weight: bold;
	text-transform: uppercase;
	margin-top: 30px;
	padding-bottom: 0;
	color: #00000078;
}

div#divList {
	padding: 20px;
}

.section-label {
	font-size: 1.5em;
}
</style>

<!-- START : Content -->
<div class="app-content content">
	<div class="content-overlay"></div>
	<div class="header-navbar-shadow"></div>
	<div class="content-wrapper container p-0">
		<!------------ 첫번째div ------------>
		<div class="row">
			<!------- 타이틀 ------->
			<div class="col-sm-12" id="dash-title">
				<h2 class="content-header-title float-left mb-0">마이페이지</h2>
				<div class="breadcrumb-wrapper">
					<ol class="breadcrumb">
						<li class="breadcrumb-item active">관리비 납부 내역</li>
					</ol>
				</div>
			</div>
			<!------- 입주민 ------->
			<div class="col-sm-12">
				<div class="card card-congratulations">
					<div class="card-body text-center">
						<img
							src="${pageContext.request.contextPath}/resources/app-assets/images/elements/decore-left.png"
							class="congratulations-img-left" alt="card-img-left" /> <img
							src="${pageContext.request.contextPath}/resources/app-assets/images/elements/decore-right.png"
							class="congratulations-img-right" alt="card-img-right" />
						<div class="avatar avatar-xl bg-primary shadow">
							<div class="avatar-content">
								<i data-feather="award" class="font-large-1"></i>
							</div>
						</div>
						<div class="text-center">
							<h1 class="mb-1 text-white">반갑습니다. 입주민님!</h1>
							<p class="card-text m-auto w-75">
								You have done <strong>57.6%</strong> more sales today. Check
								your new badge in your profile.
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!------------ 두번째div ------------>
		<div class="row">
			<!-------  ------->
			<div class="col-sm-3">
				<div class="row">
					<div class="col-12">ㅇㅇㅇ</div>
				</div>
				<div class="row">
					<div class="col-12">ㅇㅇㅇ</div>
				</div>
			</div>
			<div class="col-sm-5">
				<div class="card">
					<div class="section-title">
						<h2>이번 달 관리비</h2>
					</div>
					<div class="card-body">
						<div id="donut-chart"></div>
						<ul class="list-inline mb-0 mt-2 text-center">
							<li class="list-inline-item"><span class="cursor-pointer">
									<span class="bullet align-middle bullet-sm"
									style="background-color: #ffe700">&nbsp;</span> <span
									class="align-middle cursor-pointer">Operational</span>
							</span></li>
							<li class="list-inline-item"><span class="cursor-pointer">
									<span class="bullet align-middle bullet-sm"
									style="background-color: #ffa1a1">&nbsp;</span> <span
									class="align-middle cursor-pointer">Networking</span>
							</span></li>
							<li class="list-inline-item"><span class="cursor-pointer">
									<span class="bullet bullet-primary align-middle bullet-sm">&nbsp;</span>
									<span class="align-middle cursor-pointer">Hiring</span>
							</span></li>
							<li class="list-inline-item"><span class="cursor-pointer">
									<span class="bullet align-middle bullet-sm"
									style="background-color: #00d4bd">&nbsp;</span> <span
									class="align-middle cursor-pointer">R&D</span>
							</span></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-sm-4"></div>
		</div>
		<!------------ 세번째div ------------>
		<div class="row">
			<!------- 내 건의사항 ------->
			<div class="col-sm-4">
				<div class="card" id="divList">
					<h6 class="section-label">내 건의사항</h6>
					<div class="mt-1">
						<div class="d-flex justify-content-start align-items-center mb-75">
							<a href="javascript:void(0);" class="mr-75">
								<div class="avatar bg-light-primary rounded">
									<div class="avatar-content">
										<i data-feather="watch" class="avatar-icon font-medium-1"></i>
									</div>
								</div>
							</a> <a href="javascript:void(0);">
								<div class="blog-category-title text-body">Fashion</div>
							</a>
						</div>
						<div class="d-flex justify-content-start align-items-center mb-75">
							<a href="javascript:void(0);" class="mr-75">
								<div class="avatar bg-light-success rounded">
									<div class="avatar-content">
										<i data-feather="shopping-cart"
											class="avatar-icon font-medium-1"></i>
									</div>
								</div>
							</a> <a href="javascript:void(0);">
								<div class="blog-category-title text-body">Food</div>
							</a>
						</div>
						<div class="d-flex justify-content-start align-items-center mb-75">
							<a href="javascript:void(0);" class="mr-75">
								<div class="avatar bg-light-danger rounded">
									<div class="avatar-content">
										<i data-feather="command" class="avatar-icon font-medium-1"></i>
									</div>
								</div>
							</a> <a href="javascript:void(0);">
								<div class="blog-category-title text-body">Gaming</div>
							</a>
						</div>
						<div class="d-flex justify-content-start align-items-center mb-75">
							<a href="javascript:void(0);" class="mr-75">
								<div class="avatar bg-light-info rounded">
									<div class="avatar-content">
										<i data-feather="hash" class="avatar-icon font-medium-1"></i>
									</div>
								</div>
							</a> <a href="javascript:void(0);">
								<div class="blog-category-title text-body">Quote</div>
							</a>
						</div>
						<div class="d-flex justify-content-start align-items-center">
							<a href="javascript:void(0);" class="mr-75">
								<div class="avatar bg-light-warning rounded">
									<div class="avatar-content">
										<i data-feather="video" class="avatar-icon font-medium-1"></i>
									</div>
								</div>
							</a> <a href="javascript:void(0);">
								<div class="blog-category-title text-body">Video</div>
							</a>
						</div>
					</div>
				</div>
			</div>
			<!------- 내 부가시설 ------->
			<div class="col-sm-4">
				<div class="card" id="divList">
					<h6 class="section-label">내 부가시설</h6>
					<div class="mt-1">
						<!-- 테이블 시작 -->
						<div>
							<table>
								<tr>
									<td colspan="5">내역이 존재하지 않습니다.</td>
								</tr>
							</table>
						</div>
						<!--- 테이블 끝 --->
					</div>
				</div>
			</div>
			<!------- 내 차량내역 ------->
			<div class="col-sm-4">
				<div class="card" id="divList">
					<h6 class="section-label">내 차량내역</h6>
					<div class="mt-1">
						<!-- 테이블 시작 -->
						<div>
							<table>
								<tr>
									<td colspan="5">내역이 존재하지 않습니다.</td>
								</tr>
							</table>
						</div>
						<!--- 테이블 끝 --->
					</div>
				</div>
			</div>
			<!------ 내 차량내역 끝  ------>
		</div>
		<!------------ div 끝 ------------>
	</div>
</div>
<!-- END: Content-->

<%@ include file="../user/dashinc/userbottom.jsp"%>