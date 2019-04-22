package com.kigyan.cpg.repository;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.kigyan.cpg.model.TranactionSummary;

public interface TransactionSummaryRepository extends JpaRepository<TranactionSummary, Long> {

//	@Query("from TranactionSummary limit 100;")
//	public List<TranactionSummary> searchByLimit();
	
	@Query("from TranactionSummary")
	public List<TranactionSummary> searchByLimit(Pageable noOfRecords);
	
	@Query(nativeQuery=true, value="select * from transum where store_id = ?1")
	public List<TranactionSummary> findByStoreId(int storeid,Pageable noOfRecords);

	@Query(nativeQuery=true, value="select * from transum where l3_id = ?1")
	public List<TranactionSummary> searchByL3Id(Long productid, Pageable noOfRecords);

}
