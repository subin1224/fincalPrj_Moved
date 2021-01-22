<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../mainInc/mainTop.jsp"%>

<section id="userBoard" class="userBoard">
	<div class="container">
		<br> <br> <br> <br>
		<div class="text-center">
			<button type="submit" id="btEdit">수정</button>
			<button type="submit" id="btDelete">삭제</button>
			<button type="submit" id="btList">목록</button>
		</div>
		<!-- 게시판 글 상세보기 -->
		<div class="boardDetail">
			<table class="tbUserBoard">
				<tr>
					<th>제목</th>
					<td>제목</td>
				</tr>
				<tr>
					<th>아이디</th>
					<td>아이디</td>
				</tr>
				<tr>
					<th>등록일</th>
					<td>등록일</td>
				</tr>
				<tr>
					<th>조회수</th>
					<td>조회수</td>
				</tr>
				<tr>
					<th>첨부파일</th>
					<td>첨부파일</td>
				</tr>
			</table>
			<div>내용</div>
		</div>
		<!-- 댓글 목록 -->
		<div class="form-group">
			<table width="100%" class="tbComments">
				<colgroup>
					<col width="120">
					<col>
				</colgroup>
				<tr class="vt">
					<td class="tdComments" style="padding: 10px 0 5px 5px"><b>
							<!-- 아이디 -->
					</b><br> <font class="dgr"> <!-- 작성일 -->
					</font><br></td>
					<td class="ln_b" style="padding: 7px 0 7px 5px">
						<dl class="ds2" style="width: 635px; margin-left: 0px">
							<dt class="fl h18 tj" style="width: 572px">
								<!-- 댓글내용 -->
								<span id='reply_14' style='display: none;'></span>
							</dt>
						</dl>
					</td>
				</tr>
			</table>
		</div>
		<!-- 댓글 입력 -->
		<div class="form-group" id="comments">
			<textarea class="form-control" name="message" rows="3"
				data-rule="required" data-msg="Please write something for us"
				placeholder="인터넷은 우리가 함께 만들어가는 소중한 공간입니다. 댓글 작성 시 타인에 대한 배려와 책임을 담아주세요."></textarea>
			<div class="validate"></div>
			<!-- 등록 버튼 -->
			<div class="center">
				<div class="text-center">
					<button type="submit">등록</button>
				</div>
			</div>
		</div>
	</div>
</section>

<%@ include file="../mainInc/mainBottom.jsp"%>