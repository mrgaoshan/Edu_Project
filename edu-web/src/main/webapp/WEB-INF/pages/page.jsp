<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test page</title>
<link rel="stylesheet" href="resources/css/jquery.dataTables.css">
<link rel="stylesheet" href="resources/css/ace.css">
<script type="text/javascript" src="resources/js/jquery/jquery-1.10.2.js"></script>
<script type="text/javascript" src="resources/js/jquery/jquery.dataTables.js"></script>
</head>
<script type="text/javascript">
$(function () {

getData();


});

function getData(){
	
	$("#mytable").dataTable({
	    "sAjaxSource": "/pageNation.do",
	    "bProcessing": true,
	    "bFilter": false,
	    "bServerSide": true,
	    "bAutoWidth": true,
	    "aoColumns": [     
			{ "sWidth": "8%", "sTitle": "navid", "sClass": "center", "mData": "navid", "bSortable": false },
	        { "sWidth": "8%", "sTitle": "navname", "sClass": "center", "mData": "navname", "bSortable": false },
	        { "sWidth": "8%", "sTitle": "navlink", "sClass": "center", "mData": "navlink", "bSortable": false }
	    ],
	    "aLengthMenu": [ 10, 20, 30 ],
	    "aaSorting": [],
	    "fnRowCallback": function (nRow, aData, iDisplayIndex, iDisplayIndexFull) {
	    	
		
	    },
	     "fnServerParams": function (aoData) {
	    	
	    },
	    "fnInitComplete": function () {
	    	
	    } 
	});
}
</script>
<body>
	<table id="mytable" class="table table-striped table-bordered table-hover dataTable">
	</table>
</body>
</html>