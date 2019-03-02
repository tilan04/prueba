<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="WEB-INF/jsp/layout/taglib.jsp" %>
<jsp:include page="WEB-INF/jsp/layout/header.jsp">
	<jsp:param name="title" value="Inicio" />
	<jsp:param name="page" value="index" />
</jsp:include>

<h1>Programa de ejemplo para enviar correo</h1>

<form action="send-email.html" class="form-signin" method="post">
	<div class="alert alert-info">Aplicación en modo prueba.</div>
	<div class="errorMessage alert alert-danger" style="display: none"></div>
	<c:if test="${param.sent eq true}">
		<div class="alert alert-success">Correcto correo-enviado.</div>
	</c:if>
	<c:if test="${param.error == true}">
		<div class="alert alert-danger">Error! no se ha enviado el mensaje</div>
	</c:if>
	<input type="text" name="from" class="form-control from" placeholder="Desde"><br />
	<input type="text" name="to" class="form-control to" placeholder="A"><br />
	<input type="text" name="subject" class="form-control" placeholder="Asunto"><br />
	<textarea rows="5" name="body" class="form-control" placeholder="Correo"></textarea><br />
	<input type="submit" value="Enviar" class="btn btn-lg btn-primary">
</form>

<script type="text/javascript">
// source: http://stackoverflow.com/questions/2855865/jquery-regex-validation-of-e-mail-address
function isValidEmailAddress(emailAddress) {
    var pattern = new RegExp(/^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/i);
    return pattern.test(emailAddress);
};

$(document).ready(function() {
	$(".form-signin").submit(function() {
		var from = $(".from").val();
		var err = $(".errorMessage");
		if(!isValidEmailAddress(from)) {
			err.show();
			err.text("Correo incorrecto");
			$(".from").focus();
			return false;
		}
		var to = $(".to").val();
		if(!isValidEmailAddress(to)) {
			err.show();
			err.text("Correo incorrecto");
			$(".to").focus();
			return false;
		}
		return true;
	});
});
</script>

<jsp:include page="WEB-INF/jsp/layout/footer.jsp" />