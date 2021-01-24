<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../adminInc/adminTop.jsp" %>

<script type="text/javascript">
	$(function() {
		//'일정공지' 선택했을 경우에만  -> 일정피커, 일정요약 div나타나게
		$('#nCtgNo').change(function(){
			var category = $('#nCtgNo option:selected').val();
			if(category == 1){
				$('.aptSchedule').show();
			}else{
				$('.aptSchedule').hide();
			}
		});
		
		/* text-area 글자수 카운터
	
		$(function() {
		      $('#content').keyup(function (e){
		          var content = $(this).val();
		          $(this).height(((content.split('\n').length + 1) * 1.5) + 'em');
		          $('#counter').html(content.length + '/300');
		      });
		      $('#content').keyup();
		});
		 */
		
		
		//공지등록 이벤트
		$('#noticeOK').on('click', function(){
			
/* 			var noticeContent = $('#blog-editor-container').find('.editor').html();	//에디터안에서
			$('#noticeContent').val(noticeContent); */
		
			
			//데이트피커로 받아온 날짜 str
			var scdStr =  $('#scdDate').val();//"2021-02-09 to 2021-05-06"
												  //"012345678901234567890123"
												  
			//시작일 종료일 각각 찢어서 히든에 값 넣기												  
			var startDateStr = scdStr.substr(0,10);
			var endDateStr = scdStr.substr(14,24);
	
			$('#startDateStr').val(startDateStr);
			$('#endDateStr').val(endDateStr);
							
				
			$('form[name=frmNotice]').submit(function(){
				location.href="<c:url value='/admin/adminLiving/adminNoti/adminNotiRegister.do'/>";
			});
			
			
		});
		
	
	});
</script>
<style>
/* 처음에는 일정피커 안보이게  */
.aptSchedule{
	display:none;
}

#noticeContent{
	min-height: 16rem;
	line-height:2;
	font-size: 1.2em;
}

</style>

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
                                    <form name="frmNotice" id="frmNotice" method="post" class="mt-2">
                                    
                                    <!-- 데이트피커로 받은날짜 > script에서 substr > 히든에 넣고 넘기기 -->
                                    <input type="hidden" id="startDateStr" name="startDateStr">
                                    <input type="hidden" id="endDateStr" name="endDateStr">
                                    <input type="hidden" id="noticeContent" name="noticeContent">
                                    
                                        <div class="row">
											<!-- 공지분류 -->
                                            <div class="col-md-3 col-12">
                                                <div class="form-group mb-2">
                                                    <label for="nCtgNo">공지 분류</label>
                                                    <select id="nCtgNo" name="nCtgNo" class="form-control">
                                                        <option value="2">시설보수 공지</option>
                                                        <option value="3">생활 공지</option>
                                                        <option value="4">관리비 공지</option>
                                                        <option value="1">일정 공지</option>
                                                    </select>
                                                </div>
                                            </div>
                                            
                                            <div class="col-md-9 col-12">
                                                <div class="form-group mb-2">
                                                    <label for="noticeTitle">공지 제목</label>
                                                    <input type="text" id="noticeTitle" name="noticeTitle" class="form-control" placeholder="부가시설 명을 입력하세요"/>
                                                </div>
                                            </div>
                                            
                       	         <!-- 일정공지용 입력폼  :  초기로딩시  안보임 , 일정 카테고리 선택시 보임-->
                                            <!-- date picker -->
			                                <div class="col-md-3 col-12 aptSchedule">
                                                <div class="form-group mb-2">
				                                    <label for="fp-range">일정 선택</label>
				                                    <input type="text" id="scdDate" class="form-control flatpickr-range" placeholder="YYYY-MM-DD to YYYY-MM-DD" />
				                                </div>
			                                </div>
                                            <!-- date picker : 끝-->
                                            
                                            <div class="col-md-9 col-12 aptSchedule">
                                                <div class="form-group mb-2">
                                                    <label for="scdContent">일정 요약</label>
                                                    <input type="text" id="scdContent" name="scdContent" class="form-control" placeholder="일정 요약을 입력하세요" />
                                                </div>
                                            </div>

                                   <!-- 일정공지용 입력폼 끝 :  초기로딩시  안보임 , 일정 카테고리 선택시 보임-->


										<div class="col-12">
											<div class="form-group mb-2">
												

												<div id="blog-editor-wrapper">
													<label for="noticeContent">공지 내용</label>
													<div id="blog-editor-container" >
													<textarea id="noticeContent" name="noticeContent" class="form-control"></textarea>
													<!-- 	<div class="editor" style="min-height:600px;" id="livingEditor">
															에디터에 공지 내용 넣을 것  noticeContent
													</div> -->
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
																id="customFile1" /> <label	class="custom-file-label" for="customFile1"></label>
														</div>
													</div>
												</div>
											</div>
                                        </div>
                              			<!-- 일반 파일첨부 끝-->
                                  
                                           <!--  <div class="col-5 mt-2" style="text-align: left;">
                                                <button type="button" class="btn btn-outline-danger col-4">공지 삭제</button>
                                            </div>  -->   
                                            <div class="col-6 col-12 mt-2" style="text-align: right;">
                                                <button type="reset" class="btn btn-outline-secondary col-3" id="noticeCLEAR">다시 입력</button>
                                                <button type="submit" class="btn btn-primary col-4" id="noticeOK">입력 완료</button>
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