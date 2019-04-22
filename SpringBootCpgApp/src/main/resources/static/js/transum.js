$(document).ready(function() {
	var table = $('#transumtable').DataTable({
		"sAjaxSource" : "http://localhost:9898/transummary",
		"sAjaxDataProp" : "",
		pageLength: 100000,
		paging: true,
		destroy: true,
	    searching: true,
	    deferRender: false,
       // scrollY:        400,
        scrollCollapse: true,
		"order" : [ [ 0, "asc" ] ],
		"aoColumns" : [ {
			"mData" : "id"
		}, {
			"mData" : "l3Id"
		}, {
			"mData" : "storeId"
		}, {
			"mData" : "netAmt"
		}, {
			"mData" : "mkdnAmt"
		}, {
			"mData" : "grossAmt"
		}, {
			"mData" : "qty"
		}, {
			"mData" : "gm"
		}, {
			"mData" : "weekId"
		}, {
			"mData" : "l3Name"
		} ]
	})
});