jQuery(function($) {
	var year = {
		'Select Year' : [ 'Select Quarter' ],
		'2017' : [ 'Quarter 1', 'Quarter 2', 'Quarter 3', 'Quarter 4' ],
		'2018' : [ 'Quarter 1', 'Quarter 2', 'Quarter 3', 'Quarter 4' ],
		'2019' : [ 'Quarter 1', 'Quarter 2', 'Quarter 3', 'Quarter 4' ],
		'2020' : [ 'Quarter 1', 'Quarter 2', 'Quarter 3', 'Quarter 4' ],
	}

	var quarter = {
		'Select Quarter' : [ 'Select Period' ],
		'Quarter 1' : [ 'Period 1', 'Period 2', 'Period 3' ],
		'Quarter 2' : [ 'Period 3', 'Period 4', 'Period 5', 'Period 6' ],
		'Quarter 3' : [ 'Period 6', 'Period 7', 'Period 8', 'Period 9', 'Period 10' ],
		'Quarter 4' : [ 'Period 10', 'Period 11', 'Period 12' ],
	}

	var week = {
		'Select Period' : [ 'Select Week' ],
		'Period 1' : [ 'Week 1', 'Week 2', 'Week 3', 'Week 4', 'Week 5' ],
		'Period 2' : [ 'Week 5', 'Week 6', 'Week 7', 'Week 8', 'Week 9' ],
		'Period 3' : [ 'Week 9', 'Week 10', 'Week 11', 'Week 12', 'Week 13', 'Week 14' ],
		'Period 4' : [ 'Week 14', 'Week 15', 'Week 16', 'Week 17', 'Week 18' ],

		'Period 5' : [ 'Week 18', 'Week 19', 'Week 20', 'Week 21', 'Week 22' ],
		'Period 6' : [ 'Week 22', 'Week 23', 'Week 24', 'Week 25', 'Week 26', 'Week 27' ],
		'Period 7' : [ 'Week 27', 'Week 28', 'Week 29', 'Week 30', 'Week 31' ],
		'Period 8' : [ 'Week 31', 'Week 32', 'Week 33', 'Week 34', 'Week 35' ],

		'Period 9' : [ 'Week 35', 'Week 36', 'Week 37', 'Week 38', 'Week 39', 'Week 40' ],
		'Period 10' : [ 'Week 40', 'Week 41', 'Week 42', 'Week 43', 'Week 44' ],
		'Period 11' : [ 'Week 44', 'Week 45', 'Week 46', 'Week 47', 'Week 48' ],
		'Period 12' : [ 'Week 48', 'Week 49', 'Week 50', 'Week 51', 'Week 52', 'Week 53' ],
	}

	var $year = $('#quarter');
	$('#years').change(function() {
		var years = $(this).val(),
			quar = year[years] || [];

		var html = $.map(quar, function(qrt) {
			return '<option value="' + qrt + '">' + qrt + '</option>'
		}).join('');
		$year.html(html)
	});

	var $quarter = $('#period');
	$('#quarter').change(function() {
		var qrt = $(this).val(),
			periods = quarter[qrt] || [];
		var html = $.map(periods, function(perd) {
			return '<option value="' + perd + '">' + perd + '</option>'
		}).join('');
		$quarter.html(html)
	});

	var $period = $('#week');
	$('#period').change(function() {
		var wk = $(this).val(),
			weeks = week[wk] || [];
		var html = $.map(weeks, function(wks) {
			return '<option value="' + wks + '">' + wks + '</option>'
		}).join('');
		$period.html(html)
	});
});



