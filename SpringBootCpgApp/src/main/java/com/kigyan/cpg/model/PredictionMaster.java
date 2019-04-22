package com.kigyan.cpg.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "prediction_master", catalog = "upcdatamodel")
public class PredictionMaster {

	@Id
	// @GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private Integer Id;
	
	@Column(name = "s_week_id")
	private Integer sWeekId;
	
	@Column(name = "week_id")
	private Integer weekId;

	@Column(name = "store_id")
	private Integer storeId;
	
	@Column(name = "store_name")
	private String storeName;

	@Column(name = "l3_id")
	private Long l3Id;

	@Column(name = "prod_name")
	private String prodName;

	@Column(name = "pred_qty")
	private Float predQty;

	@Column(name = "actual_qty")
	private Float actualQty;

	@Column(name = "planned_qty")
	private Float plannedQty;
	
	public PredictionMaster() {}

	public PredictionMaster(Integer sWeekId, Integer weekId, Integer storeId, String storeName, Long l3Id,
			String prodName, Float predQty, Float actualQty, Float plannedQty) {
		this.sWeekId = sWeekId;
		this.weekId = weekId;
		this.storeId = storeId;
		this.storeName = storeName;
		this.l3Id = l3Id;
		this.prodName = prodName;
		this.predQty = predQty;
		this.actualQty = actualQty;
		this.plannedQty = plannedQty;
	}

	public Integer getId() {
		return Id;
	}

	public void setId(Integer id) {
		Id = id;
	}

	public Integer getsWeekId() {
		return sWeekId;
	}

	public void setsWeekId(Integer sWeekId) {
		this.sWeekId = sWeekId;
	}

	public Integer getWeekId() {
		return weekId;
	}

	public void setWeekId(Integer weekId) {
		this.weekId = weekId;
	}

	public Integer getStoreId() {
		return storeId;
	}

	public void setStoreId(Integer storeId) {
		this.storeId = storeId;
	}

	public String getStoreName() {
		return storeName;
	}

	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}

	public Long getL3Id() {
		return l3Id;
	}

	public void setL3Id(Long l3Id) {
		this.l3Id = l3Id;
	}

	public String getProdName() {
		return prodName;
	}

	public void setProdName(String prodName) {
		this.prodName = prodName;
	}

	public Float getPredQty() {
		return predQty;
	}

	public void setPredQty(Float predQty) {
		this.predQty = predQty;
	}

	public Float getActualQty() {
		return actualQty;
	}

	public void setActualQty(Float actualQty) {
		this.actualQty = actualQty;
	}

	public Float getPlannedQty() {
		return plannedQty;
	}

	public void setPlannedQty(Float plannedQty) {
		this.plannedQty = plannedQty;
	}

	@Override
	public String toString() {
		return "PredictionMaster [Id=" + Id + ", sWeekId=" + sWeekId + ", weekId=" + weekId + ", storeId=" + storeId
				+ ", storeName=" + storeName + ", l3Id=" + l3Id + ", prodName=" + prodName + ", predQty=" + predQty
				+ ", actualQty=" + actualQty + ", plannedQty=" + plannedQty + ", getId()=" + getId() + ", getsWeekId()="
				+ getsWeekId() + ", getWeekId()=" + getWeekId() + ", getStoreId()=" + getStoreId() + ", getStoreName()="
				+ getStoreName() + ", getL3Id()=" + getL3Id() + ", getProdName()=" + getProdName() + ", getPredQty()="
				+ getPredQty() + ", getActualQty()=" + getActualQty() + ", getPlannedQty()=" + getPlannedQty()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}

	
}
