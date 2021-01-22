<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../adminInc/adminTop.jsp" %>
  <!-- BEGIN: Content-->
    <div class="app-content content ">
        <div class="content-overlay"></div>
        <div class="header-navbar-shadow"></div>
        <div class="content-wrapper">
            <div class="content-header row">
                <div class="content-header-left col-md-9 col-12 mb-2">
                    <div class="row breadcrumbs-top">
                        <div class="col-12">
                            <h2 class="content-header-title float-left mb-0">공지 사항 등록</h2>
                            <div class="breadcrumb-wrapper">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.html">행정관리자 메인</a>
                                    </li>
                                    <li class="breadcrumb-item"><a href="#">일정 및 공지 관리</a>
                                    </li>
                                    <li class="breadcrumb-item active">일정/공지 등록</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="content-header-right text-md-right col-md-3 col-12 d-md-block d-none">
                    <div class="form-group breadcrumb-right">
                        <div class="dropdown">
                            <button class="btn-icon btn btn-primary btn-round btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i data-feather="grid"></i></button>
                            <div class="dropdown-menu dropdown-menu-right"><a class="dropdown-item" href="app-todo.html"><i class="mr-1" data-feather="check-square"></i><span class="align-middle">Todo</span></a><a class="dropdown-item" href="app-chat.html"><i class="mr-1" data-feather="message-square"></i><span class="align-middle">Chat</span></a><a class="dropdown-item" href="app-email.html"><i class="mr-1" data-feather="mail"></i><span class="align-middle">Email</span></a><a class="dropdown-item" href="app-calendar.html"><i class="mr-1" data-feather="calendar"></i><span class="align-middle">Calendar</span></a></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="content-body">
                <!-- Blog Edit -->
                <div class="blog-edit-wrapper">
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="media">
                                        <div class="avatar mr-75">
                                            <img src="${pageContext.request.contextPath}/resources/app-assets/images/portrait/small/avatar-s-9.jpg" width="38" height="38" alt="Avatar" />
                                        </div>
                                        <div class="media-body">
                                            <h6 class="mb-25">행정관리자</h6>
                                            <p class="card-text">오늘 날짜 2021-01-20</p>
                                        </div>
                                    </div>
                                    <!-- Form -->
                                    <form action="javascript:;" class="mt-2">
                                        <div class="row">
											<!-- 공지분류 -->
                                            <div class="col-md-3 col-12">
                                                <div class="form-group mb-2">
                                                    <label for="blog-edit-status">공지 분류</label>
                                                    <select id="blog-edit-status" class="form-control">
                                                        <option value="시설 보수 공지">시설 보수 공지</option>
                                                        <option value="생활 행정 공지">생활 행정 공지</option>
                                                        <option value="관리비 회계 공지">관리비 회계 공지</option>
                                                        <option value="일정 공지">일정 공지</option>
                                                    </select>
                                                </div>
                                            </div>
                                            
                                            <div class="col-md-9 col-12">
                                                <div class="form-group mb-2">
                                                    <label for="blog-edit-title">공지 제목</label>
                                                    <input type="text" id="blog-edit-title" class="form-control" value="" placeholder="부가시설 명을 입력하세요"/>
                                                </div>
                                            </div>
                                            
                                            <!-- 여기다 date picker-->
			                                <div class="col-md-3 col-12 ">
                                                <div class="form-group mb-2">
				                                    <label for="fp-range">일정 선택</label>
				                                    <input type="text" id="fp-range" class="form-control flatpickr-range" placeholder="YYYY-MM-DD to YYYY-MM-DD" />
				                                </div>
			                                </div>
                                            <!-- date picker : 끝-->
                                            
                                            <div class="col-md-9 col-12">
                                                <div class="form-group mb-2">
                                                    <label for="blog-edit-slug">일정 요약</label>
                                                    <input type="text" id="blog-edit-slug" class="form-control" value="" placeholder="위치정보를 입력하세요" />
                                                </div>
                                            </div>
                                            
                                            
                                            <div class="col-12">
                                                <div class="form-group mb-2">
                                                    <label>공지 내용</label>
                                                    <div id="blog-editor-wrapper">
                                                        <div id="blog-editor-container">
                                                            <div class="editor">
                                                                
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            <!-- 파일첨부 시작-->
                                            <div class="col-12 ">
                                                <div class="border rounded p-2">
                                                    <h4 class="mb-1">파일첨부</h4>
                                                      <small class="text-muted">첨부 가능한 용량은 최대 100MB입니다</small>
                                              <!-- 오리지날파일명  -->
                                                            <p class="my-50">
                                                            	첨부된 파일&nbsp;:&nbsp;&nbsp;<a href="javascript:void(0);" id="blog-image-text">C:\fakepath\banner.jpg</a>
                                                            </p>
                                                            
                                      			<!-- 일반 파일첨부 찬-->
												<div class="d-inline-block">
													<div class="form-group">
														<div class="custom-file">
															<input type="file" class="custom-file-input"
																id="customFile1" required /> <label	class="custom-file-label" for="customFile1"></label>
														</div>
													</div>
												</div>
											</div>
                                        </div>
                              			<!-- 일반 파일첨부 끝-->
                                  
                                            <div class="col-5 mt-2" style="text-align: left;">
                                                <button type="button" class="btn btn-outline-danger col-4">공지 삭제</button>
                                            </div>    
                                            <div class="col-7 mt-2" style="text-align: right;">
                                                <button type="reset" class="btn btn-outline-secondary col-3">다시 입력</button>
                                                <button type="submit" class="btn btn-primary col-4">입력 완료</button>
                                            </div>
                                        </div>
                                    </form>
                                    <!--/ Form -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--/ Blog Edit -->

            </div>
        </div>
    </div>
    <!-- END: Content-->


<%@ include file="../../adminInc/adminBottom.jsp"%>