package com.iris.get19.pbms.dao.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="DevAttendance")
public class DataEntryOperator {

	@Id
	@GeneratedValue
	@Column(name="id")
	private Integer dataEntryOperatorId;
	
	@Column(name="month")
	private String month;
	
	@Column(name="year")
	private Integer year;

	@Column(name="fullday")
	private Integer fullDay;
	
	@Column(name="halfday")
	private Integer halfDay;
	
	@OneToOne
	@JoinColumn(name="devid")
	 Developer devObj;
	
	
	public Integer getYear() {
		return year;
	}

	public void setYear(Integer year) {
		this.year = year;
	}

	public Integer getdataEntryOperatorId() {
		return dataEntryOperatorId;
	}

	public void setdataEntryOperatorId(Integer dataEntryOperatorId) {
		this.dataEntryOperatorId = dataEntryOperatorId;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public Integer getfullDay() {
		return fullDay;
	}

	public void setfullDay(Integer fullDay) {
		this.fullDay = fullDay;
	}

	public Integer gethalfDay() {
		return halfDay;
	}

	public void sethalfDay(Integer halfDay) {
		this.halfDay = halfDay;
	}

	public Developer getDevObj() {
		return devObj;
	}

	public void setDevObj(Developer devObj) {
		this.devObj = devObj;
	}

}
