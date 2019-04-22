package com.kigyan.cpg.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kigyan.cpg.model.PredictionMaster;
import com.kigyan.cpg.model.TimeDimension;
import com.kigyan.cpg.model.TranactionSummary;
import com.kigyan.cpg.repository.PredictionMasterRepository;
import com.kigyan.cpg.repository.TimeDimensionRepository;
import com.kigyan.cpg.repository.TransactionSummaryRepository;
import com.kigyan.cpg.service.MessageByLocaleService;

@Controller
public class HomeController {

	public HomeController() {
	}

	private List<TimeDimension> timeDimensionList;

	private List<TranactionSummary> tranactionSummaryList;

	private List<PredictionMaster> predictionMasterList;

	@Autowired
	private TimeDimensionRepository timeDimensionRepository;

	@Autowired
	private TransactionSummaryRepository transactionSummaryRepository;

	@Autowired
	private PredictionMasterRepository predictionMasterRepository;

	@Autowired
	MessageByLocaleService messages;

	public HomeController(TimeDimensionRepository timeDimensionRepository) {
		this.timeDimensionRepository = timeDimensionRepository;
	}

	@SuppressWarnings("deprecation")
	@GetMapping("/dashboard")
	public String showDashboard(@ModelAttribute @Valid TimeDimension timeDimension, BindingResult bindingResult,
			Model model) {
		timeDimensionList = new ArrayList<TimeDimension>();
		tranactionSummaryList = new ArrayList<TranactionSummary>();
		predictionMasterList = new ArrayList<PredictionMaster>();
		Pageable noOfRecords = new PageRequest(0, Integer.parseInt(messages.getMessage("datatable.page.max.records")));
//		List<TranactionSummary> tranactionSummaryList = transactionSummaryRepository.searchByLimit(noOfRecords);

		predictionMasterList = predictionMasterRepository.searchByLimit(noOfRecords);

		// timeDimensionRepository.findAll().forEach(timeDimensionList::add);

		predictionMasterRepository.findAll().forEach(predictionMasterList::add);

		// model.addAttribute("timeDimensionList", timeDimensionList);
//		model.addAttribute("tranactionSummaryStoreList", tranactionSummaryList);
		model.addAttribute("predictionMasterList", predictionMasterList);
		return "dashboard/dashboard";
	}

	@SuppressWarnings("deprecation")
	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public String getSearch(Model model, HttpSession session, HttpServletRequest request,
			HttpServletResponse response) {
		TimeDimension timeDimension = new TimeDimension();
		TranactionSummary tranactionSummary = new TranactionSummary();
		String yearWeek = null;
		Integer storeid = 0, years = 0, quarter = 0, period = 0, week = 0;
		Long productid = (long) 0;

		if (!request.getParameter("storeid").equalsIgnoreCase(messages.getMessage("dashboard.storeid"))) {
			storeid = Integer.parseInt(request.getParameter("storeid"));
			tranactionSummary.setStoreId(storeid);
			System.out.println("HomeController::storeid:::: " + storeid);
		}
		if (!request.getParameter("productid").equalsIgnoreCase(messages.getMessage("dashboard.productid"))) {
			productid = Long.parseLong(request.getParameter("productid"));
			tranactionSummary.setL3Id(productid);
			System.out.println("HomeController::productid:::: " + productid);
		}

		if (!(request.getParameter("years")).contains(messages.getMessage("dashboard.year"))
				|| !request.getParameter("quarter").equalsIgnoreCase(messages.getMessage("dashboard.quarter"))) {

			if (request.getParameter("years").equalsIgnoreCase(messages.getMessage("dashboard.year"))
					|| request.getParameter("quarter").equalsIgnoreCase(messages.getMessage("dashboard.quarter"))
					|| request.getParameter("period").equalsIgnoreCase(messages.getMessage("dashboard.period"))
					|| request.getParameter("week").equalsIgnoreCase(messages.getMessage("dashboard.week"))) {
				model.addAttribute("selectCriteriaError", messages.getMessage("dashboard.select.criteria"));
			}
		}

		if (!request.getParameter("years").equalsIgnoreCase(messages.getMessage("dashboard.year"))) {
			years = Integer.parseInt(request.getParameter("years"));
			timeDimension.setYear(years);
			System.out.println("HomeController::year:::: " + years);
		}
		if ((request.getParameter("quarter")).contains(messages.getMessage("dashboard.quarter"))
				&& !request.getParameter("quarter").equalsIgnoreCase(messages.getMessage("dashboard.quarter"))) {
			quarter = Integer.parseInt(
					request.getParameter("quarter").replace(messages.getMessage("dashboard.quarter"), "").trim());
			timeDimension.setQuarter(quarter);
			System.out.println("HomeController::quarter:::: " + quarter);
		}
		if (request.getParameter("period").contains(messages.getMessage("dashboard.period"))
				&& !request.getParameter("period").equalsIgnoreCase(messages.getMessage("dashboard.period"))) {
			period = Integer.parseInt(
					request.getParameter("period").replace(messages.getMessage("dashboard.period"), "").trim());
			timeDimension.setPeriod(period);
			System.out.println("HomeController::period:::: " + period);
		}
		if (request.getParameter("week").contains(messages.getMessage("dashboard.week"))
				&& !request.getParameter("week").equalsIgnoreCase(messages.getMessage("dashboard.week"))) {
			week = Integer
					.parseInt(request.getParameter("week").replace(messages.getMessage("dashboard.week"), "").trim());
			timeDimension.setWeek(week);
			System.out.println("HomeController::week:::: " + week);
		}

		if (years != 0 && quarter != 0 && period != 0 && week != 0) {
			// print TimeDimension custome query result
			List<TimeDimension> timeDimensionsList = timeDimensionRepository.searchByTimeDimension(years, quarter,
					period, week);
			// System.out.println(timeDimensionsList);
			model.addAttribute("timeDimensionsList", timeDimensionsList);
		}

		if (storeid != 0) {
			// print Trasnaction Summary custome query result based on storeid
			Pageable noOfRecords = new PageRequest(0,
					Integer.parseInt(messages.getMessage("datatable.page.max.records")));
//			List<TranactionSummary> tranactionSummaryList = transactionSummaryRepository.findByStoreId(storeid, noOfRecords);
//			model.addAttribute("tranactionSummaryStoreList", tranactionSummaryList);
			List<PredictionMaster> predictionMasterList = predictionMasterRepository.findByStoreId(storeid,
					noOfRecords);
			model.addAttribute("predictionMasterList", predictionMasterList);
			if (predictionMasterList.size() == 0 || predictionMasterList == null) {
				model.addAttribute("selectCriteriaError", messages.getMessage("dashboard.select.empty.criteria"));
			}
			// System.out.println(predictionMasterList);
		}

		if (productid != (long) 0) {
			// print Trasnaction Summary custome query result based on productid
			Pageable noOfRecords = new PageRequest(0,
					Integer.parseInt(messages.getMessage("datatable.page.max.records")));
//			List<TranactionSummary> tranactionSummaryList = transactionSummaryRepository.searchByL3Id(productid, noOfRecords);
//			model.addAttribute("tranactionSummaryProductList", tranactionSummaryList);
			List<PredictionMaster> predictionMasterList = predictionMasterRepository.searchByL3Id(productid,
					noOfRecords);
			model.addAttribute("predictionMasterList", predictionMasterList);
			if (predictionMasterList.size() == 0 || predictionMasterList == null) {
				model.addAttribute("selectCriteriaError", messages.getMessage("dashboard.select.empty.criteria"));
			}
			// System.out.println(predictionMasterList);
		}

		if (storeid != 0 && !request.getParameter("storeid").equalsIgnoreCase(messages.getMessage("dashboard.storeid"))
				&& !request.getParameter("productid").equalsIgnoreCase(messages.getMessage("dashboard.productid"))) {
			Pageable noOfRecords = new PageRequest(0,
					Integer.parseInt(messages.getMessage("datatable.page.max.records")));
			List<PredictionMaster> predictionMasterList = predictionMasterRepository.searchByStoreIdL3Id(storeid,
					productid, noOfRecords);
			model.addAttribute("predictionMasterList", predictionMasterList);
			if (predictionMasterList.size() == 0 || predictionMasterList == null) {
				model.addAttribute("selectCriteriaError", messages.getMessage("dashboard.select.empty.criteria"));
			}
			// System.out.println(predictionMasterList);
		}

		if (!request.getParameter("years").equalsIgnoreCase(messages.getMessage("dashboard.year"))
				&& !request.getParameter("quarter").equalsIgnoreCase(messages.getMessage("dashboard.quarter"))
				&& !request.getParameter("period").equalsIgnoreCase(messages.getMessage("dashboard.period"))
				&& !request.getParameter("week").equalsIgnoreCase(messages.getMessage("dashboard.week"))) {

			if (week > 0 && week < 10) {
				yearWeek = String.valueOf(years) + "0" + String.valueOf(week);
			} else {
				yearWeek = String.valueOf(years) + String.valueOf(week);
			}
			System.out.println("Inside Year and Week::::::" + yearWeek);
			Pageable noOfRecords = new PageRequest(0,
					Integer.parseInt(messages.getMessage("datatable.page.max.records")));
			List<PredictionMaster> predictionMasterList = predictionMasterRepository.searchByYearWeek(yearWeek,
					noOfRecords);
			model.addAttribute("predictionMasterList", predictionMasterList);

			if (predictionMasterList.size() == 0 || predictionMasterList == null) {
				model.addAttribute("selectCriteriaError", messages.getMessage("dashboard.select.empty.criteria"));
			}

			System.out.println(predictionMasterList);
		}

		if ((!request.getParameter("storeid").equalsIgnoreCase(messages.getMessage("dashboard.storeid"))
				&& !request.getParameter("productid").equalsIgnoreCase(messages.getMessage("dashboard.productid")))
				&& (!request.getParameter("years").equalsIgnoreCase(messages.getMessage("dashboard.year"))
						&& !request.getParameter("quarter").equalsIgnoreCase(messages.getMessage("dashboard.quarter"))
						&& !request.getParameter("period").equalsIgnoreCase(messages.getMessage("dashboard.period"))
						&& !request.getParameter("week").equalsIgnoreCase(messages.getMessage("dashboard.week")))) {
			if (week > 0 && week < 10) {
				yearWeek = String.valueOf(years) + "0" + String.valueOf(week);
			} else {
				yearWeek = String.valueOf(years) + String.valueOf(week);
			}
			Pageable noOfRecords = new PageRequest(0,
					Integer.parseInt(messages.getMessage("datatable.page.max.records")));
			List<PredictionMaster> predictionMasterList = predictionMasterRepository
					.searchByStoreIdL3IdYearWeek(storeid, productid, yearWeek, noOfRecords);
			if (predictionMasterList.size() == 0 || predictionMasterList == null) {
				model.addAttribute("selectCriteriaError", messages.getMessage("dashboard.select.empty.criteria"));
			}
			model.addAttribute("predictionMasterList", predictionMasterList);
			// System.out.println(predictionMasterList);
		}

		if (storeid == 0 && productid == 0 && (years == 0 && quarter == 0 && period == 0 && week == 0) && yearWeek == null) {
			model.addAttribute("selectCriteriaError", messages.getMessage("dashboard.select.all.empty.criteria"));
		}

		return "dashboard/dashboard";
	}

	@GetMapping("/timedimension")
	public String getTimeDimension() {
		return "dashboard/timedimension";
	}

}
