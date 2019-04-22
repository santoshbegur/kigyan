package com.kigyan.cpg.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.kigyan.cpg.model.TimeDimension;

public interface TimeDimensionRepository extends JpaRepository<TimeDimension, Integer> {
	
	@Query(nativeQuery=true,value="select * from time_dimension where year = ?1 and quarter = ?2 and period = ?3 and week = ?4")
	//@Query(value="SELECT t FROM time_dimension t WHERE t.year = :years and t.quarter = :quarter and t.period = :period and t.week = :week", nativeQuery=true)
	public List<TimeDimension> searchByTimeDimension(int years, int quarter,int period,int week);

}
