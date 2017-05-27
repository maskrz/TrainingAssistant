<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
		<div class="body">
			<div style="text-align: center">
				<h2>
					Hey You..!! This is your 1st Spring MCV Tutorial..<br> <br>
				</h2>
				<h3>
					<a href="welcome.html">Click here to See Welcome Message... </a>(to
					check Spring MVC Controller... @RequestMapping("/welcome"))
				</h3>
			</div>
			<div>
				<a href="hello.html">Hello Spring</a> | <a href="contact.html">Contact</a>
			</div>
		</div>



	</tiles:putAttribute>
</tiles:insertDefinition>