<%
	ui.decorateWith("kenyaemr", "standardPage", [ patient: currentPatient, closeChartUrl: ui.pageLink("kenyaemr", "home") ])
%>
<div class="ke-page-content">
	<% apps.eachWithIndex { app, i ->
		def onClick = "ui.navigate('/" + contextPath + "/" + app.homepageUrl + (currentPatient ? ("?patientId=" + currentPatient.id) : "") + "')"
		def iconUrlTokens = app.iconUrl.split(":")
		def iconProvider, icon
		if (iconUrlTokens.length == 2) {
			iconProvider = iconUrlTokens[0]
			icon = iconUrlTokens[1]
		}
	%>
	<div style="float: left; margin: 5px;" >
		${ ui.includeFragment("kenyaui", "widget/appButton", [ label: app.label, iconProvider: iconProvider, icon: icon, onClick: onClick ]) }
	</div>
	<% } %>
</div>