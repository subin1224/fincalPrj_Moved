<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../mainInc/mainTop.jsp"%>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		var str="<tr><th scope='row'>#</th>";
		str+="<td colspan='3'>내역이 존재하지 않습니다.</td></tr>";
		$('#mngcostInfoTable').find('tbody').html(str);
		
		$('#mngcostMainCtg').change(function(){
			if($(this).val()==0){
				$('#mngcostSubCtg').html("<option value='0'>관리비 소분류</option>");
			}
			$.ajax({
				url:"<c:url value='/mngcost/showSubCtg.do'/>",
				type:"get",
				data:"mngcostMCtgNo="+$('#mngcostMainCtg').val(),
				dataType:"json",
				success:function(res){
					if(res.length>0){
						var str="<option value='0'>관리비 소분류</option>";
						$.each(res, function(idx, item){
							str+="<option value='"+item.mngcostSCtgNo
								+"'>"+item.mngcostSCtgName+"</option>";
						});
						$('#mngcostSubCtg').html(str);
					}
				},
				error:function(xhr, status, error){
					alert("error : "+error);
				}
			});
		});
		
		$('select.form-control').change(function(){
			if($(this).val()!=0){
				if($('#mngcostClaimdate').val().length>0){
					$.ajax({
						url:"<c:url value='/mngcost/showDetail.do'/>",
						type:"get",
						data:{
							mngcostMCtgNo:$('#mngcostMainCtg').val(),
							mngcostSCtgNo:$('#mngcostSubCtg').val(),
							mngcostClaimdate:$('#mngcostClaimdate').val()
						},
						dataType:"json",
						success:function(res){
							var str="";
							if(res.length>0){
								$.each(res, function(idx, item){
									str+="<tr><th scope='row'>"+item.mngcostNo+"</th>";
									str+="<td>"+item.mngcostContent+"</td>";
									str+="<td>"+numFormat(item.mngcostPrice)+"원</td>";
									str+="<td>"+formatDate(item.mngcostUsedate)+"</td></tr>";
								});
							}else{
								str+="<tr><th scope='row'>#</th>";
								str+="<td colspan='3'>내역이 존재하지 않습니다.</td></tr>";
							}
							$('#mngcostInfoTable').find('tbody').html(str);
						},
						error:function(xhr, status, error){
							alert("error : "+error);
						}
					});
				}else{
					alert("납부 내역을 선택하세요");
					$(this).val(0);
					location.href="#skipTop";
				}
			}
		});
	});
	
	function sendDate(date){
		alert(date);
		$('#mngcostClaimdate').val(date);
	}
	
	//천 단위 넘버포맷
	function numFormat(number){
		return number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")
	}
	
	//날짜 포맷
	function formatDate(date) {
	    var d = new Date(date),
	        month = '' + (d.getMonth() + 1),
	        day = '' + d.getDate(),
	        year = d.getFullYear();
	    if (month.length < 2) month = '0' + month;
	    if (day.length < 2) day = '0' + day;

	    return [year, month, day].join('-');
	};
</script>
<!-- ======= Start About Section ======= -->
<section id="skipTop"></section>
<section id="about">
<div class="container">
	<!-- START : 대시보드 박스 -->
	<input type="text" id="mngcostClaimdate">
	
	<div class="app-content content"><!-- 바꾸면 안됨 -->
	    <!--헤더시작-->
	    <!-- <div class="content-overlay"></div> -->
	    <!-- <div class="header-navbar-shadow"></div> -->
	    <div class="content-wrapper">
	        <div class="content-header row">
	            <div class="content-header-left col-md-9 col-12 mb-2">
	                <div class="row breadcrumbs-top">
	                	<h3 class="content-header-title float-left mb-0">&nbsp;&nbsp;관리비</h3>
	                    <div class="col-12">
	                        <h2 class="content-header-title float-left mb-0"></h2>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>        
	    <!-- 헤더 끝 -->
	
	   	<!-- col-md-12까지가 한계-->
	   	<div class="col-md-12 float-left" style="background-color:#ffffff;padding:0; margin-right:20px;margin-bottom:50px; box-shadow : 0 3px 10px 0 rgba(34, 41, 47, 0.1);">
	    	<table class="table">
	        	<thead>
	          		<tr>
			            <th scope="col">#</th>
			            <th scope="col">청구일자</th>
			            <th scope="col">금액</th>
			            <th scope="col">납부기한</th>
			            <th scope="col">납부날짜</th>
	          		</tr>
	        	</thead>
		        <tbody>
		        	<c:if test="${empty mngcostPayList}">
		        		<tr>
		        			<th scope="row"></th>
		        			<td colspan="4">내역이 존재하지 않습니다.</td>
		        		</tr>
		        	</c:if>
		        	<c:if test="${!empty mngcostPayList}">
			        	<c:forEach var="mngcostPayListVo" items="${mngcostPayList}">
				        	<tr onclick="sendDate('${mngcostPayListVo.mngcostClaimdate}')"
				        			style = "cursor:pointer;">
					            <th scope="row">${mngcostPayListVo.mngcostListNo}</th>
					            <td id="claimDate">
					            	<fmt:formatDate value="${mngcostPayListVo.mngcostClaimdate}"
					            		pattern="yyyy-MM-dd"/>
					            </td>
					            <td>
					            	<fmt:formatNumber value="${mngcostPayListVo.mngcostTotalPrice}"
					            		pattern="#,###"/>원
					            </td>
					            <td>
					            	<fmt:parseDate value="${mngcostPayListVo.mngcostLimitdate}"
					            		var="limitDate" pattern="yyyy-MM-dd"/>
					            	<fmt:formatDate value="${limitDate}"  pattern="yyyy-MM-dd"/>
					            </td>
					            <td>
					            	<c:set var="paydate" value="${mngcostPayListVo.mngcostPaydate}"/>
					            	<c:if test="${empty paydate}">
					            		<a href="#">납부하기</a>
					            	</c:if>
					            	<c:if test="${!empty paydate}">
					            		<fmt:formatDate value="${paydate}" pattern="yyyy-MM-dd"/>
					            	</c:if>
					            </td>
				          	</tr>
			          	</c:forEach>
		          	</c:if>
	        	</tbody>
			</table>
		</div>
		
		<h5>상세보기</h5>
	    <div class="col-md-4 col-6 mb-2 float-left">
		    <select class="form-control" id="mngcostMainCtg" name="mngcostMainCtg">
		        <option value="0">관리비 대분류</option>
		    	<c:forEach var="mngcostMainCtgVo" items="${mngcostMainCtgList}">
		    		<option value="${mngcostMainCtgVo.mngcostMCtgNo}">
		    			${mngcostMainCtgVo.mngcostMCtgName}</option>
		    	</c:forEach>
		    </select>
	    </div>
	    <div class="col-md-4 col-6 mb-2 float-left">
		    <select class="form-control" id="mngcostSubCtg" name="mngcostSubCtg">
		    	<option value="0">관리비 소분류</option>
		    </select>
	    </div>
		<div class="col-md-12 float-left" style="background-color:#ffffff; padding:0;margin-right:20px;box-shadow : 0 3px 10px 0 rgba(34, 41, 47, 0.1);">
		   <table class="table" id="mngcostInfoTable">
		     <thead>
		       <tr>
		         <th scope="col">#</th>
		         <th scope="col">관리비 내용</th>
		         <th scope="col">금액</th>
		         <th scope="col">지출일자</th>
		       </tr>
		     </thead>
		     <tbody>
		       <!-- 조회결과가 올 자리 -->
		     </tbody>
		   </table>
		</div>
		
		<!-- col-md-12  -->
	</div><!-- 대시보드 박스 : 클래스app-content content -->
</div><!-- content-wrapper:e -->
<!-- END: 대시보드 박스 -->
</section>


<div class="clearfix"></div>
<section></section>
<!-- ======= End About Section ======= -->
<%@ include file="../mainInc/mainBottom.jsp" %>