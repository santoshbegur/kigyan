$(document).ready(function() {
	var table = $('#timedimensiontable').DataTable({
		"sAjaxSource" : "http://localhost:9898/td",
		"sAjaxDataProp" : "",
		pageLength: 1000000,
		paging: true,
		destroy: true,
	    searching: true,
		"order" : [ [ 0, "asc" ] ],
		"aoColumns" : [ {
			"mData" : "weekId"
		}, {
			"mData" : "dbDate"
		}, {
			"mData" : "year"
		}, {
			"mData" : "quarter"
		}, {
			"mData" : "period"
		}, {
			"mData" : "month"
		}, {
			"mData" : "week"
		}, {
			"mData" : "monthName"
		}, {
			"mData" : "day"
		}, {
			"mData" : "dayName"
		}, {
			"mData" : "id"
		} ]
	})
});