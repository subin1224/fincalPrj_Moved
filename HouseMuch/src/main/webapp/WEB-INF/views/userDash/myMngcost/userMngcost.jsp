<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../user/dashinc/usertop.jsp"%>

<style type="text/css">
div#dash-title {margin-bottom: 15px;}

.section-title {
  text-align: center;
  padding-bottom: 30px;
}

.section-title h2 {
  font-size: 32px;
  font-weight: bold;
  text-transform: uppercase;
  margin-bottom: 20px;
  padding-bottom: 0;
  color: #5c9f24;
}
</style>

<!-- START : Content -->
<div class="app-content content">
	<!-- 첫번째div -->
	<div class="row">
		<!-- 타이틀 -->
		<div class="col-sm-12" id="dash-title">
			<h2 class="content-header-title float-left mb-0">관리비 납부 내역</h2>
			<div class="breadcrumb-wrapper">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">입주민 홈</a></li>
					<li class="breadcrumb-item"><a href="#">내 관리비</a></li>
					<li class="breadcrumb-item active">관리비 납부 내역</li>
				</ol>
			</div>
		</div>
		<!-- 입주민 -->
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
							You have done <strong>57.6%</strong> more sales today. Check your
							new badge in your profile.
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 두번째div -->
	<div class="row">
		<!-- 관리비 내역 차트 -->
		<div class="col-sm-6">
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
		<div class="col-sm-6">dd</div>
	</div>
	<!-- 세번째div -->
	<div class="row">
		<!--  -->
		<div class="col-sm-4">dd</div>
		<!--  -->
		<div class="col-sm-4">dd</div>
		<!--  -->
		<div class="col-sm-4">dd</div>
	</div>
</div>
<!-- END: Content-->

<%@ include file="../../user/dashinc/userbottom.jsp"%>