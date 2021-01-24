<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../adminInc/adminTop.jsp"%>
<!-- 여기부터 -->
<div class="app-content content ">
	<div class="content-overlay"></div>
	<div class="header-navbar-shadow"></div>
	<div class="content-wrapper container p-0">

		<!-- 여기까지 box로 감싸는 기본틀 : 밑에 div맡출 것-->

		<!-- Table head options start -->
		<div class="row" id="table-head">
			<div class="col-12">
				<div class="card" style="align: right">
					<div class="card-header">
						<h4 class="card-title">아파트 공지 게시판 관리</h4>
					</div>
					<div class="card-body p-0">
						<!--                <p class="card-text">
                                    Similar to tables and dark tables, use the modifier classes
                                    <code class="highlighter-rouge">.thead-dark</code> to make
                                    <code class="highlighter-rouge">&lt;thead&gt;</code>s appear dark.
                                </p> -->

						<div class="col-12 mb-1 p-0">
							<!-- 기본 Select -->
							<div class="col-md-2 col-6 mb-1 float-left">
								<div class="form-group">
									<!-- <label for="basicSelect">분류</label> -->
									<label for="nCtgNo">공지 분류</label> <select id="nCtgNo"
										name="nCtgNo" class="form-control">
										<option value="2">시설보수 공지</option>
										<option value="3">생활 공지</option>
										<option value="4">관리비 공지</option>
										<option value="1">일정 공지</option>
									</select>
								</div>
							</div>
							<!-- 기본 Select -->
							<!-- 여기다 검색창 -->
							<div class="col-md-4 col-6 mb-1 float-left">
								<div class="input-group">

									<input type="text" class="form-control"
										placeholder="검색어를 입력하세요" aria-label="Amount" />
									<div class="input-group-prepend">
										<button class="btn btn-outline-primary" type="button">
											<i data-feather="search" style="box-sizing: border-box;"></i>
										</button>
									</div>
								</div>
							</div>

						</div>
					</div>
					<!-- 여기다 검색창 : 끝 -->



					<!-- 테이블시작 -->

					<div class="table-responsive" style="margin-top: 30px;">
						<table class="table">
							<thead class="thead-dark"
								style="background-color: #0E515F; color: #fff; font-size: 1.2em; font-weight: 200;">
								<tr>
									<th class="font-medium-1 text-center">번호</th>
									<th class="font-medium-1 text-center">분류</th>
									<th class="font-medium-1 text-center">제목</th>
									<th class="font-medium-1 text-center">날짜</th>
									<th class="font-medium-1 text-center">작성자</th>
									<th class="font-medium-1 text-center">첨부</th>
									<th class="font-medium-1 text-center">액션</th>
									<th class="font-medium-1 text-center">분류</th>
								</tr>
							</thead>
							<tbody>

								<!-- 리스트 없으면 list.size()==0 -->
								<c:if test="${empty list}">
									<tr>
										<td><span class="text-center">공지 글이 없습니다.</span></td>
									</tr>
								</c:if>


								<!-- 레코드반복시작 -->
								<c:if test="${!empty list}">
									<c:forEach var="vo" items="${list}">
										<tr>
											<!-- 공지글 번호 -->
											<td><span class="font-weight-bold">${vo.noticeNo }</span>
											</td>

											<!-- 공지글 카테고리 -->
											<td>${vo.nCtgName }</td>

											<!-- 공지글 제목 -->
											<td>${vo.noticeTitle }</td>

											<!-- 공지글 등록일-->
											<td><fmt:formatDate value="${vo.noticeRegdate }"
													pattern="yyyy-MM-dd" /></td>

											<!-- 작성자 이름 인데 일단 회원번호로 테스트-->
											<td>${vo.memberName}</td>

											<!-- 작성자 이름 인데 일단 회원번호로 테스트-->
											<td>첨부파일아이콘</td>

											<!-- 포인트다 여기서 수정/삭제 가능 -->
											<td>
												<div class="dropdown">
													<button type="button"
														class="btn btn-sm dropdown-toggle hide-arrow"
														data-toggle="dropdown">
														<i data-feather="more-vertical"></i>
													</button>
													<div class="dropdown-menu">
														<a class="dropdown-item"
															href="<c:url value='/admin/adminLiving/adminNoti/adminNotiEdit.do?noticeNo=${vo.noticeNo }'/>">
															<i data-feather="edit-2" class="mr-50"></i> 
															<span>공지수정</span>
														</a> <a class="dropdown-item"
															href="<c:url value='/admin/adminLiving/adminNoti/adminNotiDel.do'/>">
															<i data-feather="trash" class="mr-50"></i> <span>공지삭제</span>
														</a>
													</div>
												</div>
											</td>
										</tr>


									</c:forEach>
								</c:if>
								<!-- 기본공지 리스트 반복 끝 -->


							</tbody>
						</table>
					</div>
					<!-- 테이블 끝 -->



					<!-- 페이저-->
					<div class="center-block" style="clear: both; margin: 0 auto;">
						<nav aria-label="Page navigation example">
							<ul class="pagination">
								<li class="page-item"><a class="page-link" href="#"
									aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
								</a></li>
								<li class="page-item"><a class="page-link" href="#">1</a></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item"><a class="page-link" href="#"
									aria-label="Next"> <span aria-hidden="true">&raquo;</span>
								</a></li>
							</ul>
						</nav>
					</div>
					<!-- 페이저-->

					<!-- Table head options end -->
				</div>
				<!-- content-wrapper -->
			</div>
			<!-- content-wrapper -->
		</div>
		<!-- content-wrapper -->
	</div>
	<!-- content-wrapper -->
</div>
<!-- app-content content -->
<%@ include file="../../adminInc/adminBottom.jsp"%>