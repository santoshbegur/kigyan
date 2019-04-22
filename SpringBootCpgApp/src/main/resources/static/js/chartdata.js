window.onload = function () {
//Better to construct options first and then pass it as a parameter
var options = {
	animationEnabled: true,
	exportEnabled: true,
	title: {
		text: "Employees Salary in a Company"
	},
	axisX: {
		title: "Departments"
	},
	axisY: {
		includeZero: false,
		title: "Salary in USD",
		interval: 10,
		suffix: "k",
		prefix: "$"
	}, 
	data: [{
		type: "rangeBar",
		showInLegend: true,
		yValueFormatString: "$#0.#K",
		indexLabel: "{y[#index]}",
		legendText: "Department wise Min and Max Salary",
		toolTipContent: "<b>{label}</b>: {y[0]} to {y[1]}",
		dataPoints: [
			{ x: 10, y:[105, 160], label: "Data Scientist" },
			{ x: 20, y:[95, 146], label: "Product Manager" },
			{ x: 30, y:[87, 115], label: "Web Developer" },
			{ x: 40, y:[90, 130], label: "Software Engineer" },
			{ x: 50, y:[100,152], label: "Quality Assurance" }
		]
	}]
};

$("#chartContainer").CanvasJSChart(options);
}