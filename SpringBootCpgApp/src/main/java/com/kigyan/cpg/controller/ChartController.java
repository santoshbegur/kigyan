package com.kigyan.cpg.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ChartController {
	
	@GetMapping("/Line-Chart")
	public String getLineChart() {
		return "charts/Line-Chart";
	}

	@GetMapping("/Spline-Chart")
	public String getSplineChart() {
		return "charts/Spline-Chart";
	}

	@GetMapping("/Step-Line-Chart")
	public String getStepLineChart() {
		return "charts/Step-Line-Chart";
	}

	@GetMapping("/countryfilter")
	public String getCountryFilter() {
		return "charts/countryfilter";
	}

	@GetMapping("/dailysalesdata")
	public String getDailySalesData() {
		return "charts/dailysalesdata";
	}
	
}
