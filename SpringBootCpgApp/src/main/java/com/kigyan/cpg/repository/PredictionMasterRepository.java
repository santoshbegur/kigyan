package com.kigyan.cpg.repository;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.kigyan.cpg.model.PredictionMaster;

public interface PredictionMasterRepository extends JpaRepository<PredictionMaster, Integer> {
	
	@Query("from PredictionMaster")
	public List<PredictionMaster> searchByLimit(Pageable noOfRecords);
	
	@Query(nativeQuery=true, value="select * from prediction_master where store_id = ?1")
	public List<PredictionMaster> findByStoreId(int storeid,Pageable noOfRecords);

	@Query(nativeQuery=true, value="select * from prediction_master where l3_id = ?1")
	public List<PredictionMaster> searchByL3Id(Long productid, Pageable noOfRecords);
	
	@Query(nativeQuery=true, value="select * from prediction_master where store_id = ?1 and l3_id = ?2")
	public List<PredictionMaster> searchByStoreIdL3Id(int storeid,Long productid, Pageable noOfRecords);
	
	@Query(nativeQuery=true, value="select * from prediction_master where store_id = ?1 and l3_id = ?2 and week_id = ?3")
	public List<PredictionMaster> searchByStoreIdL3IdYearWeek(Integer storeid, Long productid, String yearWeek, Pageable noOfRecords);
	
	@Query(nativeQuery=true, value="select * from prediction_master where week_id = ?1")
	public List<PredictionMaster> searchByYearWeek(String yearWeek, Pageable noOfRecords);

}
