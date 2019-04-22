package com.kigyan.cpg.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "time_dimension", catalog = "upcdatamodel")
public class TimeDimension {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private Integer Id;
	
	@Column(name = "week_id")
	private Integer weekId;
	
	@Column(name = "db_date")
	private String dbDate;
	
	@Column(name = "year")
	private Integer year;
	
	@Column(name = "quarter")
	private Integer quarter;
	
	@Column(name = "period")
	private Integer period;
	
	@Column(name = "month")
	private Integer month;
	
	@Column(name = "week")
	private Integer week;
	
	@Column(name = "month_name")
	private String monthName;	
	
	@Column(name = "day")
	private Integer day;

	@Column(name = "day_name")
	private String dayName;

	public Integer getId() {
		return Id;
	}

	public void setId(Integer id) {
		Id = id;
	}

	public Integer getWeekId() {
		return weekId;
	}

	public void setWeekId(Integer weekId) {
		this.weekId = weekId;
	}

	public Integer getYear() {
		return year;
	}

	public void setYear(Integer year) {
		this.year = year;
	}

	public Integer getMonth() {
		return month;
	}

	public void setMonth(Integer month) {
		this.month = month;
	}

	public Integer getDay() {
		return day;
	}

	public void setDay(Integer day) {
		this.day = day;
	}

	public Integer getQuarter() {
		return quarter;
	}

	public void setQuarter(Integer quarter) {
		this.quarter = quarter;
	}

	public Integer getWeek() {
		return week;
	}

	public void setWeek(Integer week) {
		this.week = week;
	}

	public String getDbDate() {
		return dbDate;
	}

	public void setDbDate(String dbDate) {
		this.dbDate = dbDate;
	}

	public String getMonthName() {
		return monthName;
	}

	public void setMonthName(String monthName) {
		this.monthName = monthName;
	}

	public String getDayName() {
		return dayName;
	}

	public void setDayName(String dayName) {
		this.dayName = dayName;
	}

	public Integer getPeriod() {
		return period;
	}

	public void setPeriod(Integer period) {
		this.period = period;
	}

	@Override
	public String toString() {
		return "TimeDimension [Id=" + Id + ", weekId=" + weekId + ", dbDate=" + dbDate + ", year=" + year + ", quarter="
				+ quarter + ", period=" + period + ", month=" + month + ", week=" + week + ", monthName=" + monthName
				+ ", day=" + day + ", dayName=" + dayName + "]";
	}	
		
}
