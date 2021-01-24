<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../adminInc/adminTop.jsp"%>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('#mngcostMainCtg').change(function(){
			$('#mngcostSubCtg').html("<option value='0'>관리비 소분류</option>");
			alert($('#mngcostMainCtg').val());
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
			ajaxInquiry();
		});
	});
	
	function ajaxInquiry(){
		$.ajax({
			url:"<c:url value='/admin/adminMngcost/showDetail.do'/>",
			type:"get",
			data:{
				mngcostMCtgNo:$('#mngcostMainCtg').val(),
				mngcostSCtgNo:$('#mngcostSubCtg').val(),
				currentdate:$('#currentdate').val()
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
	<div class="app-content content"><!-- 바꾸면 안됨 -->
	    <div class="card-body">
        	<h4 class="card-title float-left">상세보기</h4>
      	</div>
      	
      	<input type="text" id="currentdate">
      	<section id="flatpickr">
		  <div class="card">
		    <div class="card-header">
		      <h4 class="card-title">Flatpickr</h4>
		    </div>
		    <div class="card-body">
		      <div class="row">
		        <div class="col-md-6 form-group">
		          <label for="fp-human-friendly">Human Friendly</label>
		          <input
		            type="text"
		            id="fp-human-friendly"
		            id="currentdate"
		            class="form-control flatpickr-human-friendly"
		            placeholder="날짜 입력"
		          />
		        </div>
		      </div>
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
		  </div>
		</section>
      	
      	
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
			    <tbody>
			    	<!-- 조회결과가 올 자리 -->
			    	<c:forEach var="mngcostInfoVo" items="${mngcostInfoList}">
			    	<tr>
			    		<th scope='row'>${mngcostInfoVo.mngcostNo}</th>
						<td>${mngcostInfoVo.mngcostUsedate}</td>
						<td>${mngcostInfoVo.mngcostContent}</td>
						<td>${mngcostInfoVo.mngcostPrice}원</td>
					</tr>
					</c:forEach>
			    </tbody>
			</table>
		</div>
	</div><!-- 대시보드 박스 : 클래스app-content content -->
<!-- END: 대시보드 박스 -->
</div>
</section>

    
<div class="clearfix"></div>
<section></section>
<section></section>
<!-- ======= End About Section ======= -->
<%@ include file="../adminInc/adminBottom.jsp" %>