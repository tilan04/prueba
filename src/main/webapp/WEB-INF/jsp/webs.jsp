<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="layout/taglib.jsp"%>
<jsp:include page="layout/header.jsp">
	<jsp:param name="title" value="Webs" />
	<jsp:param name="page" value="webs" />
</jsp:include>

<h1>Enviar web</h1>

<table class="table table-striped table-bordered table-hover">
	<thead>
		<tr>
			<th>Dirección</th>
			<th>Descripción</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${webs}" var="web">
			<tr>
				<td><c:out value="${web.direc}" /></td>
				<td><c:out value="${web.descrip}" /></td>
			</tr>
		</c:forEach>
	</tbody>
</table>

<jsp:include page="layout/footer.jsp" />