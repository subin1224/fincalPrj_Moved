<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../mainInc/mainTop.jsp"%>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		var str="<tr><th scope='row'>#</th>";
		str+="<td colspan='3'>납부내역을 선택하세요.</td></tr>";
		$('#mngcostInfoTable').find('tbody').html(str);
		
		$('#mngcostMainCtg').change(function(){
			$('#mngcostSubCtg').html("<option value='0'>관리비 소분류</option>");
			
			if($(this).val()!=0){
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
			}
		});
		
		$('select.form-control').change(function(){
			if($('#mngcostClaimdate').val().length>0){
				ajaxInquiry();
			}else{
				alert("납부 내역을 선택하세요");
				$(this).val(0);
				location.href="#about";
			}
		});
	});
	
	function ajaxInquiry(){
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
						str+="<td>"+formatDate(item.mngcostUsedate)+"</td>";
						str+="<td>"+item.mngcostContent+"</td>";
						str+="<td>"+numFormat(item.mngcostPrice)+"원</td></tr>";
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
	}
	
	function sendDate(date, obj){
		$('#mngcostClaimdate').val(date);
		$('#mngcostSubCtg').val(0);
		$('#mngcostMainCtg').val(0);
		$(obj).parent().children().css("background","");
		$(obj).css("background", "#f4fcee");
		ajaxInquiry();
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
<main id="main">
	<!-- ======= Breadcrumbs ======= -->
	<section class="breadcrumbs">
		<div class="container">
			<div class="d-flex justify-content-between align-items-center">
				<h2>관리비 조회</h2>
				<ol>
					<li><a href="<c:url value='/main/index.do'/>">Home</a></li>
					<li>관리비 조회</li>
				</ol>
			</div>
		</div>
	</section>
	<!-- End Breadcrumbs -->
	<%--
	<section class="inner-page">
		<div class="container">
			<p></p>
		</div>
	</section>
	--%>
</main><!-- End #main -->

<section id="about">
<div class="container">
	<!-- START : 대시보드 박스 -->
	<input type="hidden" id="mngcostClaimdate">
    
	<div class="app-content content"><!-- 바꾸면 안됨 -->
	   	<!-- col-md-12까지가 한계-->
	   	<div class="card-title">
	    	<h4 class="card-title"><i data-feather='list'></i>관리비 내역</h4>
	    </div>
	    <br>
	    
	    <%--
	    <!-- 데이트 피커 -->
	    <div class="content-body">
	    <section id="flatpickr">
		  <div class="card">
		    <div class="card-header">
		      <h4 class="card-title">Flatpickr</h4>
		    </div>
		    <div class="card-body">
				<div class="row">
				    <div class="col-md-6 form-group">
					    <input type="text" id="fp-range" class="form-control flatpickr-range"
					    	placeholder="날짜로 조회" size="25"/>
				    </div>
			    </div>
			</div>
		  </div>
		</section>
		</div>
	    --%>
	    
	   	<div class="col-md-12 float-left" style="background-color:#ffffff;padding:0; margin-right:20px;margin-bottom:50px; box-shadow : 0 3px 10px 0 rgba(34, 41, 47, 0.1);">
	      	<div class="card-body">
	        	<p class="card-text">
	          		청구월 별로 관리비 <code>납부내역</code>을 확인하실 수 있습니다.
	        	</p>
	      	</div>
	    	<table class="table table-hover" style="margin-bottom:0;">
	    		<colgroup>
					<col style="width:10%;" />
					<col style="width:20%;min-width:130px;" />
					<col style="width:35%;" />
					<col style="width:20%;min-width:130px;" />
					<col style="width:15%;max-width:200px;" />		
				</colgroup>
	        	<thead>
	          		<tr>
			            <th scope="col">#</th>
			            <th scope="col">청구일</th>
			            <th scope="col">금액</th>
			            <th scope="col">납부기한</th>
			            <th scope="col">납부</th>
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
				        	<tr onclick="sendDate('${mngcostPayListVo.mngcostClaimdate}', this)"
				        			style = "cursor:pointer;" id="akk">
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
					            		<a href="<c:url value='/mngcost/mngcostPayment.do?mngcostListNo=${mngcostPayListVo.mngcostListNo}'/>">
					            			<button class="btn btn-success">납부</button></a>
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
		<br>
		
	    <div class="card-body">
        	<h4 class="card-title float-left">상세보기</h4>
      	</div>
      	<div class="col-md-8 col-12 mb-4 float-right">
      		<div class="col-md-6 col-6 mb-2 float-right">
		    <select class="form-control" id="mngcostSubCtg" name="mngcostSubCtg">
		    	<option value="0">관리비 소분류</option>
		    </select>
		    </div>
		    <div class="col-md-6 col-6 mb-2 float-right">
		    <select class="form-control" id="mngcostMainCtg" name="mngcostMainCtg">
		        <option value="0">관리비 대분류</option>
		    	<c:forEach var="mngcostMainCtgVo" items="${mngcostMainCtgList}">
		    		<option value="${mngcostMainCtgVo.mngcostMCtgNo}">
		    			${mngcostMainCtgVo.mngcostMCtgName}</option>
		    	</c:forEach>
		    </select>
		    </div>
	    </div>
		<div class="col-md-12 float-left" style="background-color:#ffffff; padding:0;margin-right:20px;box-shadow : 0 3px 10px 0 rgba(34, 41, 47, 0.1);">
		    <table class="table table-striped" id="mngcostInfoTable"  style="margin-bottom:0;">
			    <colgroup>
					<col style="width:5%;" />
					<col style="width:23%;min-width:50px;" />
					<col style="width:40%;" />
					<col style="width:23%;min-width:50px;" />
				</colgroup>
			    <thead>
			       	<tr>
				        <th scope="col">#</th>
				        <th scope="col">지출일자</th>
				        <th scope="col">관리비 내용</th>
				        <th scope="col">금액</th>
			       	</tr>
			    </thead>
			    <tbody class="">
			    	<!-- 조회결과가 올 자리 -->
			    </tbody>
			</table>
		</div>
	</div><!-- 대시보드 박스 : 클래스app-content content -->
<!-- END: 대시보드 박스 -->
</div>
</section>

    
<div class="clearfix"></div>
<section></section>
<!-- ======= End About Section ======= -->
<%@ include file="../mainInc/mainBottom.jsp" %>