<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<spring:url value="/home" var="homeUrl" htmlEscape="true" />
<spring:url value="/contact" var="contactUrl" htmlEscape="true" />
<spring:url value="/tools/wsr" var="wsrUrl" htmlEscape="true" />
<spring:url value="/tools/pace" var="paceUrl" htmlEscape="true" />
<spring:url value="/tools/are" var="areUrl" htmlEscape="true" />
<spring:url value="/tools/journal" var="journalUrl" htmlEscape="true" />
<div class="menu">
	<div class="menu-element-top">
		<span class="glyphicon glyphicon-home"></span> <a href="${homeUrl}">Strona
			główna</a>
	</div>
	<div class="menu-group">
		<div class="menu-element-top">
			<span class="glyphicon glyphicon-wrench"></span> <span>Narzędzia</span>
		</div>
		<div class="menu-element-nested">
			<span class="glyphicon glyphicon-heart"></span> <a
				href="${wsrUrl}">Kalkulator WSR</a>
		</div>
		<div class="menu-element-nested">
			<span class="glyphicon glyphicon-time"></span> <a
				href="${paceUrl}">Przelicznik tempa</a>
		</div>
		<div class="menu-element-nested">
			<span class="glyphicon glyphicon-dashboard"></span> <a
				href="${areUrl}">Kalkulator wielobojowy</a>
		</div>
		<div class="menu-element-nested">
			<span class="glyphicon glyphicon-book"></span> <a
				href="${journalUrl}">Dzienniczek</a>
		</div>
	</div>
	<div class="menu-element-top">
		<span class="glyphicon glyphicon-envelope"></span> <a
			href="${contactUrl}">Kontakt</a>
	</div>
</div>