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
							<p class="card-text m-auto w-75">여기다 어떤 걸 넣으면 좋을까</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!------------ 두번째div ------------>
		<div class="row">
			<!-------  ------->
			<div class="col-sm-7">
				<div class="card">
					완납/미납
				</div>
			</div>
			<div class="col-sm-5">
				<div class="card">
					오늘은 2021년 1월 24일 일요일입니다.
				</div>
			</div>
		</div>
		<!------------ 세번째div ------------>
		<div class="row">
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
			<div class="col-sm-6">
				<section id="chartjs-chart">
					<div class="card">
						<div
							class="card-header d-flex justify-content-between align-items-sm-center align-items-start flex-sm-row flex-column">
							<div class="header-left">
								<h4 class="card-title">Latest Statistics</h4>
							</div>
							<div class="header-right d-flex align-items-center mt-sm-0 mt-1">
								<i data-feather="calendar"></i> <input type="text"
									class="form-control flat-picker border-0 shadow-none bg-transparent pr-0"
									placeholder="YYYY-MM-DD" />
							</div>
						</div>
						<div class="card-body">
							<canvas class="bar-chart-ex chartjs" data-height="400"></canvas>
						</div>
					</div>
				</section>
			</div>
		</div>
		<!------------ 네번째div ------------>
		<div class="row">
			<!------- 내 건의사항 ------->
			<div class="col-sm-4">
				<div class="card" id="divList">
					<h6 class="section-label">내 건의사항</h6>
					<div class="mt-1">
						<!-- 테이블 시작 -->
						<!-- 내역 없을 때 -->
						<div>
							<table>
								<tr>
									<td colspan="5">내역이 존재하지 않습니다.</td>
								</tr>
							</table>
						</div>
						<!-- 내역 있을 때 -->
						<!--- 테이블 끝 --->
					</div>
				</div>
			</div>
			<!------- 내 부가시설 ------->
			<div class="col-sm-4">
				<div class="card" id="divList">
					<h6 class="section-label">내 부가시설</h6>
					<div class="mt-1">
						<!-- 테이블 시작 -->
						<!-- 내역 없을 때 -->
						<div>
							<table>
								<tr>
									<td colspan="5">내역이 존재하지 않습니다.</td>
								</tr>
							</table>
						</div>
						<!-- 내역 있을 때 -->
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
						<!-- 내역 없을 때 -->
						<div>
							<table>
								<tr>
									<td colspan="5">내역이 존재하지 않습니다.</td>
								</tr>
							</table>
						</div>
						<!-- 내역 있을 때 -->
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