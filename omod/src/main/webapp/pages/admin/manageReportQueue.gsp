<%
	ui.decorateWith("kenyaemr", "standardPage", [ layout: "sidebar" ])
%>
<div class="ke-page-sidebar">
	${ ui.includeFragment("kenyaui", "widget/panelMenu", [
			items: [
					[ iconProvider: "kenyaui", icon: "buttons/back.png", label: "Back", href: ui.pageLink("kenyaemr", "admin/adminHome") ]
			]
	]) }
</div>

<div class="ke-page-content" ng-app="kenyaemr" ng-controller="ReportController" ng-init="init('${ currentApp.id }', null)">
	${ ui.includeFragment("kenyaemr", "report/reportQueue") }
</div>