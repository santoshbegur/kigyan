package com.kigyan.cpg.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.kigyan.cpg.model.PredictionMaster;
import com.kigyan.cpg.model.TimeDimension;
import com.kigyan.cpg.model.TranactionSummary;
import com.kigyan.cpg.repository.PredictionMasterRepository;
import com.kigyan.cpg.repository.TimeDimensionRepository;
import com.kigyan.cpg.repository.TransactionSummaryRepository;
import com.kigyan.cpg.service.MessageByLocaleService;

@RestController
public class CpgRestController {

	@Autowired
	private TimeDimensionRepository timeDimensionRepository;

	@Autowired
	private TransactionSummaryRepository transactionSummaryRepository;
	
	@Autowired
	private PredictionMasterRepository predictionMasterRepository;

	@Autowired
	MessageByLocaleService messages;

	// Get Time dimension Records
	@GetMapping("/td")
	public List<TimeDimension> getAllTimeDimension() {
		return timeDimensionRepository.findAll();
	}

	@SuppressWarnings("deprecation")
	@GetMapping("/transummary")
	public List<TranactionSummary> findTsByTopTen() {
		Pageable noOfRecords = new PageRequest(0, Integer.parseInt(messages.getMessage("datatable.page.max.records")));
		List<TranactionSummary> tranactionSummaryList = transactionSummaryRepository.searchByLimit(noOfRecords);
		return tranactionSummaryList;
	}
	
	@SuppressWarnings("deprecation")
	@GetMapping("/predictionmaster")
	public List<PredictionMaster> findPredictionMasterByTopTen() {
		Pageable noOfRecords = new PageRequest(0, Integer.parseInt(messages.getMessage("datatable.page.max.records")));
		List<PredictionMaster> predictionMasterList = predictionMasterRepository.searchByLimit(noOfRecords);
		return predictionMasterList;
	}


//	@SuppressWarnings("deprecation")
//	@RequestMapping("/transummary")
//	public List<TranactionSummary> findTransactionSummary(Integer storeid) {
//		TranactionSummary tranactionSummary = new TranactionSummary();
//		List<TranactionSummary> tranactionSummaryList = null;
//		Integer storeId = 0;
////		System.out.println("request::" + request.getAuthType());
//		storeId=storeid;
////		storeId = Integer.parseInt(storeid);
//
////		if (!storeid.equalsIgnoreCase(messages.getMessage("dashboard.storeid"))) {
////			storeId = Integer.parseInt(storeid);
////			tranactionSummary.setStoreId(storeId);
////			System.out.println("storeId-----> " + storeId);
////		}
//		Pageable noOfRecords = new PageRequest(0,
//				Integer.parseInt(messages.getMessage("datatable.page.max.records")));
//		if (storeId == 0) {
//			tranactionSummaryList = transactionSummaryRepository.searchByLimit(noOfRecords);
//		} else if (storeId > 0) {
//			tranactionSummaryList = transactionSummaryRepository.findByStoreId(storeId,noOfRecords);
//			// tranactionSummaryList.stream().filter(x ->
//			// x.getStoreId().compareTo((Integer)storeId).collect(Collectors.toList()));
//		}
//		return tranactionSummaryList;
//	}
	
}
