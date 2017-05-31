<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Training assistant</title>
<tiles:importAttribute name="javascripts" />
<c:forEach var="js" items="${javascripts}">
	<c:url var="jsSrc" value="${js}" />
	<script type="text/javascript" src="${jsSrc}">
		<jsp:text></jsp:text>
	</script>
</c:forEach>
<tiles:importAttribute name="stylesheets" />
<c:forEach var="css" items="${stylesheets}">
	<c:url var="cssHref" value="${css}" />
	<link rel="stylesheet" type="text/css" href="${cssHref}" />
</c:forEach>
</head>

<body class="page-content">
	<header id="header">
		<tiles:insertAttribute name="header" />
	</header>

	<div class="row main-content">
		<section id="sidemenu" class="col-md-3">
			<tiles:insertAttribute name="menu" />
		</section>

		<section id="site-content" class="col-md-9">
			<tiles:insertAttribute name="content" />
		</section>
	</div>
</body>
</html>