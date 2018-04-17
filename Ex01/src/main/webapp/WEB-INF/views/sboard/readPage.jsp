<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp" %>

<%-- <form method="post" role="form">
	<input type="hidden" name="bno" value="${boardVO.bno }">
</form> --%>
	<div class="box-ody">
		<div class="form-group">
			<label for="exampleInputEmail1">Title</label>
			<input type="text" name="title" class="form-control" value="${boardVO.title }" readonly="readonly">
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">Content</label>
			<textarea class="form-control" name="content" rows="3" readonly="readonly">${boardVO.content }</textarea>
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">Writer</label>
			<input type="text" name="writer" class="form-control" value="${boardVO.writer }" readonly="readonly">
		</div>
	</div>
	
	<div class="box-footer">
		<button type="submit" class="btn btn-warning modifyBtn">Modify</button>
		<button type="submit" class="btn btn-danger removeBtn">REMOVE</button>
		<button type="submit" class="btn btn-primary goListBtn">LIST ALL</button>
	</div>

<form method="post" role="form" action="modifyPage">
	<input type="hidden" name="bno" value="${boardVO.bno }">
	<input type="hidden" name="page" value="${cri.page }">
	<input type="hidden" name="perPageNum" value="${cri.perPageNum }">
	<input type="hidden" name="searchType" value="${cri.searchType }">
	<input type="hidden" name="keyword" value="${cri.keyword }">
	
</form>	

<%@ include file="../include/footer.jsp"%>

<script type="text/javascript">
	$(document).ready(function() {
		
		var formObj = $("form[role='form']");
		
		console.log(formObj);
		
/* 		$(".btn-warning").on("click", function () {
			formObj.attr("action", "/board/modify");
			formObj.attr("method", "get");
			formObj.submit();
		});
		
		$(".btn-danger").on("click", function () {
			formObj.attr("action", "/board/remove");
			formObj.submit();
		});
		
		$(".btn-primary").on("click", function () {
			self.location = "/board/listAll";
		}); */
		
		$(".btn-primary").on("click", function () {
			formObj.attr("method", "get");
			formObj.attr("action", "/sboard/list");
			formObj.submit();
		});
		
		$(".btn-danger").on("click", function () {
			formObj.attr("action", "/sboard/removePage");
			formObj.submit();
		});
		
		$(".btn-warning").on("click", function () {
			formObj.attr("action", "/sboard/modifyPage");
			formObj.attr("method", "get");
			formObj.submit();
		});
	});
</script>
