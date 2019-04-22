function drawChart(chartType) {
	var ctx = document.getElementById(chartType);
	var myChart = new Chart(ctx, {
		type : chartType,
		data : {
			labels : [ "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday",
					"Friday", "Saturday" ],
			datasets : [ {
				data : [ 15339, 21345, 18483, 24003, 23489, 24092, 12034 ],
				lineTension : 0,
				backgroundColor : 'transparent',
				borderColor : '#007bff',
				borderWidth : 4,
				pointBackgroundColor : '#007bff'
			} ]
		},
		options : {
			scales : {
				yAxes : [ {
					ticks : {
						beginAtZero : false
					}
				} ]
			},
			legend : {
				display : false,
			}
		}
	});
}

function drawTrendChart(chartType) {
	var d1 = new Date(2017, 10, 15);
	var options = {
		animationEnabled : true,
		theme : "light2",
		title : {
			text : "Actual vs Projected Sales"
		},
		axisX : {
			valueFormatString : "DD MMM"
		},
		axisY : {
			title : "Number of Sales",
			suffix : "K",
			minimum : 30
		},
		toolTip : {
			shared : true
		},
		legend : {
			cursor : "pointer",
			verticalAlign : "bottom",
			horizontalAlign : "left",
			dockInsidePlotArea : true,
			itemclick : toogleDataSeries
		},
		data : [ {
			type : chartType,
			showInLegend : true,
			name : "Projected Sales",
			markerType : "square",
			xValueFormatString : "DD MMM, YYYY",
			color : "#F08080",
			yValueFormatString : "#,##0K",
			dataPoints : [ {
				x : new Date(2017, 10, 1),
				y : 63
			}, {
				x : new Date(2017, 10, 2),
				y : 69
			}, {
				x : new Date(2017, 10, 3),
				y : 65
			}, {
				x : new Date(2017, 10, 4),
				y : 70
			}, {
				x : new Date(2017, 10, 5),
				y : 71
			}, {
				x : new Date(2017, 10, 6),
				y : 65
			}, {
				x : new Date(2017, 10, 7),
				y : 73
			}, {
				x : new Date(2017, 10, 8),
				y : 96
			}, {
				x : new Date(2017, 10, 9),
				y : 84
			}, {
				x : new Date(2017, 10, 10),
				y : 85
			}, {
				x : new Date(2017, 10, 11),
				y : 86
			}, {
				x : new Date(2017, 10, 12),
				y : 94
			}, {
				x : new Date(2017, 10, 13),
				y : 97
			}, {
				x : new Date(2017, 10, 14),
				y : 86
			}, {
				x : d1,
				y : 89
			} ]
		}, {
			type : chartType,
			showInLegend : true,
			name : "Actual Sales",
			lineDashType : "dash",
			yValueFormatString : "#,##0K",
			dataPoints : [ {
				x : new Date(2017, 10, 1),
				y : 60
			}, {
				x : new Date(2017, 10, 2),
				y : 57
			}, {
				x : new Date(2017, 10, 3),
				y : 51
			}, {
				x : new Date(2017, 10, 4),
				y : 56
			}, {
				x : new Date(2017, 10, 5),
				y : 54
			}, {
				x : new Date(2017, 10, 6),
				y : 55
			}, {
				x : new Date(2017, 10, 7),
				y : 54
			}, {
				x : new Date(2017, 10, 8),
				y : 69
			}, {
				x : new Date(2017, 10, 9),
				y : 65
			}, {
				x : new Date(2017, 10, 10),
				y : 66
			}, {
				x : new Date(2017, 10, 11),
				y : 63
			}, {
				x : new Date(2017, 10, 12),
				y : 67
			}, {
				x : new Date(2017, 10, 13),
				y : 66
			}, {
				x : new Date(2017, 10, 14),
				y : 56
			}, {
				x : new Date(2017, 10, 15),
				y : 64
			} ]
		} ]
	};
	$("#chartContainer").CanvasJSChart(options);

	function toogleDataSeries(e) {
		if (typeof (e.dataSeries.visible) === "undefined"
				|| e.dataSeries.visible) {
			e.dataSeries.visible = false;
		} else {
			e.dataSeries.visible = true;
		}
		e.chart.render();
	}

}
function fnExportExcelReport(id) {
	// var tab_text = "<table border='2px'><tr bgcolor='#87AFC6'>";
	var tab_text = "<table border='2px'><tr bgcolor='white'>";
	var textRange;
	var j = 0;
	tab = document.getElementById(id); // id of table

	for (j = 0; j < tab.rows.length; j++) {
		tab_text = tab_text + tab.rows[j].innerHTML + "</tr>";
		tab_text = tab_text + "</tr>";
	}

	tab_text = tab_text + "</table>";
	tab_text = tab_text.replace(/<A[^>]*>|<\/A>/g, ""); // remove if u want
	// links in your table
	tab_text = tab_text.replace(/<img[^>]*>/gi, ""); // remove if u want
	// images in your table
	tab_text = tab_text.replace(/<input[^>]*>|<\/input>/gi, ""); // reomves
																	// input
																	// params

	var ua = window.navigator.userAgent;
	var msie = ua.indexOf("MSIE ");

	if (msie > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./)) // If
																		// Internet
																		// Explorer
	{
		txtArea1.document.open("txt/html", "replace");
		txtArea1.document.write(tab_text);
		txtArea1.document.close();
		txtArea1.focus();
		sa = txtArea1.document.execCommand("SaveAs", true, "headerData.xls");
	} else
		// other browser not tested on IE 11
		sa = window.open('data:application/vnd.ms-excel,'
				+ encodeURIComponent(tab_text));
	return (sa);
}

function drawChartUsingTableRecords(chartType, id) {
	var ctx = document.getElementById(chartType);
	var week_id = [] 		// X-Axis
	var predicted_qty = [] 	// Y-Axis
	$('#' + id + ' tr').each(function(row, tr) {
		if (row != 0) {
			week_id[row] = $(tr).find('td:eq(1)').text() // Week_ID
			predicted_qty[row] = $(tr).find('td:eq(6)').text() // Predicted_Qty
		}
	});
	var myChart = new Chart(ctx, {
		type : chartType,
		data : {
			labels : week_id,
			datasets : [ {
				data : predicted_qty,
				lineTension : 0,
				backgroundColor : 'transparent',
				borderColor : '#007bff',
				borderWidth : 4,
				pointBackgroundColor : '#007bff'
			} ]
		},
		options : {
			scales : {
				yAxes : [ {
					ticks : {
						beginAtZero : false
					}
				} ]
			},
			legend : {
				display : false,
			}
		}
	});
}

function fnPrintReport(id) {
	var divToPrint = document.getElementById(id);
	newWin = window.open("");
	newWin.document.write("Assortment AI Data Table");
	newWin.document.write(divToPrint.outerHTML);
	newWin.print();
	newWin.close();
}

function fnChangeQuarter(parentId, childId, arrayName) {
	var pid = document.getElementById(parentId).toString();
	var cid = document.getElementById(childId).toString();
	// alert("pid: " + parentId + " cid: " + childId + " arrayname: " +
	// arrayName);
	var yearArray = {
		'Select Year' : [ 'Select Quarter' ],
		'2017' : [ 'Quarter 1', 'Quarter 2', 'Quarter 3', 'Quarter 4' ],
		'2018' : [ 'Quarter 1', 'Quarter 2', 'Quarter 3', 'Quarter 4' ],
		'2019' : [ 'Quarter 1', 'Quarter 2', 'Quarter 3', 'Quarter 4' ],
		'2020' : [ 'Quarter 1', 'Quarter 2', 'Quarter 3', 'Quarter 4' ],
	}

	var quarterArray = {
		'Select Quarter' : [ 'Select Period' ],
		'Quarter 1' : [ 'Period 1', 'Period 2', 'Period 3', 'Period 4' ],
		'Quarter 2' : [ 'Period 5', 'Period 6', 'Period 7', 'Period 8' ],
		'Quarter 3' : [ 'Period 9', 'Period 10', 'Period 11', 'Period 12' ],
		'Quarter 4' : [ 'Period 13', 'Period 14', 'Period 15', 'Period 16' ],
	}

	var weekArray = {
		'Select Period' : [ 'Select Week' ],
		'Period 1' : [ 'Week 1', 'Week 2', 'Week 3', 'Week 4', 'Week 5' ],
		'Period 2' : [ 'Week 5', 'Week 6', 'Week 7', 'Week 8', 'Week 9' ],
		'Period 3' : [ 'Week 9', 'Week 10', 'Week 11', 'Week 12', 'Week 13',
				'Week 14' ],
		'Period 4' : [ 'Week 14', 'Week 15', 'Week 16', 'Week 17', 'Week 18' ],

		'Period 5' : [ 'Week 18', 'Week 19', 'Week 20', 'Week 21', 'Week 22' ],
		'Period 6' : [ 'Week 22', 'Week 23', 'Week 24', 'Week 25', 'Week 26',
				'Week 27' ],
		'Period 7' : [ 'Week 27', 'Week 28', 'Week 29', 'Week 30', 'Week 31' ],
		'Period 8' : [ 'Week 31', 'Week 32', 'Week 33', 'Week 34', 'Week 35' ],

		'Period 9' : [ 'Week 35', 'Week 36', 'Week 37', 'Week 38', 'Week 39',
				'Week 40' ],
		'Period 10' : [ 'Week 40', 'Week 41', 'Week 42', 'Week 43', 'Week 44' ],
		'Period 11' : [ 'Week 44', 'Week 45', 'Week 46', 'Week 47', 'Week 48' ],
		'Period 12' : [ 'Week 48', 'Week 49', 'Week 50', 'Week 51', 'Week 52',
				'Week 53' ],
	}

	var $parentId = $('#childId');
	$('#' + parentId).change(function() {
		var years = $(this).val(), quar = year[years] || [];

		var html = $.map(quar, function(qrt) {
			return '<option value="' + qrt + '">' + qrt + '</option>'
		}).join('');
		$year.html(html)
	});

	var $parentId = $cid;
	$pid.change(function() {
		var v1 = $(this).val(), v2 = arrayName[v1] || [];
		var html = $.map(v1, function(v3) {
			return '<option value="' + v3 + '">' + v3 + '</option>'
		}).join('');
		$pid.html(html);
	});
};

function pagination() {
	jQuery(function($) {
		var items = $("#transumtable1 tbody tr");

		var numItems = items.length;
		var perPage = 10;

		// Only show the first 2 (or first `per_page`) items initially.
		items.slice(perPage).hide();

		// Now setup the pagination using the `#pagination` div.
		$("#pagination").pagination({
			items : numItems,
			itemsOnPage : perPage,
			cssStyle : "light-theme",

			// This is the actual page changing functionality.
			onPageClick : function(pageNumber) {
				// We need to show and hide `tr`s appropriately.
				var showFrom = perPage * (pageNumber - 1);
				var showTo = showFrom + perPage;

				// We'll first hide everything...
				items.hide()
				// ... and then only show the appropriate rows.
				.slice(showFrom, showTo).show();
			}
		});
	});
}
