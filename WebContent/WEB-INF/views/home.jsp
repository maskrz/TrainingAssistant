<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div id="homeContainer" class="body" ng-app="home"
	ng-controller="HomeCtrl">
	<span class="title">Witaj na stronie!</span>
	<p ng-click="loadRecords()">{{test}}</p>
	<div>
		<img class="construction-picture"
			src="<c:url value='/img/construction.jpg'/>">
	</div>
</div>