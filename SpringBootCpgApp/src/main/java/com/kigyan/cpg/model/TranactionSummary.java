package com.kigyan.cpg.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
//@Table(name = "transum", catalog = "cpgaigainteagle")
@Table(name = "transum", catalog = "upcdatamodel")
public class TranactionSummary {

	@Id
	// @GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private Integer Id;

	@Column(name = "l3_id")
	private Long l3Id;

	@Column(name = "store_id")
	private Integer storeId;

	@Column(name = "net_amt")
	private Float netAmt;

	@Column(name = "mkdn_amt")
	private Float mkdnAmt;

	@Column(name = "gross_amt")
	private Float grossAmt;

	@Column(name = "Qty")
	private Double qty;

	@Column(name = "GM")
	private Float gm;

	@Column(name = "week_id")
	private Integer weekId;

	@Column(name = "l3_name")
	private String l3Name;

	public Integer getStoreId() {
		return storeId;
	}

	public void setStoreId(Integer storeId) {
		this.storeId = storeId;
	}

	public Float getNetAmt() {
		return netAmt;
	}

	public void setNetAmt(Float netAmt) {
		this.netAmt = netAmt;
	}

	public Float getMkdnAmt() {
		return mkdnAmt;
	}

	public void setMkdnAmt(Float mkdnAmt) {
		this.mkdnAmt = mkdnAmt;
	}

	public Float getGrossAmt() {
		return grossAmt;
	}

	public void setGrossAmt(Float grossAmt) {
		this.grossAmt = grossAmt;
	}

	public Double getQty() {
		return qty;
	}

	public void setQty(Double qty) {
		this.qty = qty;
	}

	public Float getGm() {
		return gm;
	}

	public void setGm(Float gm) {
		this.gm = gm;
	}

	public Integer getWeekId() {
		return weekId;
	}

	public void setWeekId(Integer weekId) {
		this.weekId = weekId;
	}

	public Integer getId() {
		return Id;
	}

	public void setId(Integer id) {
		Id = id;
	}

	public Long getL3Id() {
		return l3Id;
	}

	public void setL3Id(Long l3Id) {
		this.l3Id = l3Id;
	}

	public String getL3Name() {
		return l3Name;
	}

	public void setL3Name(String l3Name) {
		this.l3Name = l3Name;
	}

	@Override
	public String toString() {
		return "TranactionSummary [Id=" + Id + ", l3Id=" + l3Id + ", storeId=" + storeId + ", netAmt=" + netAmt
				+ ", mkdnAmt=" + mkdnAmt + ", grossAmt=" + grossAmt + ", qty=" + qty + ", gm=" + gm + ", weekId="
				+ weekId + ", l3Name=" + l3Name + "]";
	}

	

//	@SuppressWarnings("unchecked")
//	@Override
//	public String toString() {
//
//		try {
//			// creating JSONObject
//			JSONObject jo = new JSONObject();
//
//			// putting data to JSONObject
//			jo.put("Id", Id);
//			jo.put("l3Id", l3Id);
//			jo.put("storeId", storeId);
//
//			jo.put("netAmt", netAmt);
//			jo.put("mkdnAmt", mkdnAmt);
//			jo.put("grossAmt", grossAmt);
//
//			jo.put("qty", qty);
//			jo.put("gm", gm);
//			jo.put("weekId", weekId);
//			jo.put("l3Name", l3Name);
//
//			// for phone numbers, first create JSONArray
//			JSONArray ja = new JSONArray();
//
//			PrintWriter pw;
//			pw = new PrintWriter(
//					"D:\\eclipse-workspace\\SpringBootCpgApp\\src\\main\\resources\\static\\json\\JSONExample.json");
//			pw.write(jo.toJSONString());
//
//			pw.flush();
//			pw.close();
//		} catch (FileNotFoundException e) {
//			e.printStackTrace();
//		}
//
//		return "[Id=" + Id + ", l3Id=" + l3Id + ", storeId=" + storeId + ", netAmt=" + netAmt + ", mkdnAmt=" + mkdnAmt
//				+ ", grossAmt=" + grossAmt + ", qty=" + qty + ", gm=" + gm + ", weekId=" + weekId + ", l3Name=" + l3Name
//				+ "]";
//	}

}
