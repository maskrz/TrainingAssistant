<%@ page contentType="text/html; charset=utf-8"%> 
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<div class="toolContent-common">
	<div class="toolTitle">
		<tiles:insertAttribute name="toolTitle" />
	</div>
	<div class="toolContent">
		<tiles:insertAttribute name="tool" />
	</div>
</div>