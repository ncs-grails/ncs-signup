$(document).ready(function(){
	$("#confidentialityStatement").hide();
	$("#confidentialityTitle").hide();
	
	$("#showConfidentialityStatement").click(function(){
		$("#confidentialityStatement").dialog();
		$("#confidentialityStatement").show();
	});
	
});
