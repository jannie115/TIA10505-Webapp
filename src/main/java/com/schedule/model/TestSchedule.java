package com.schedule.model;


import java.sql.Date;
import java.text.SimpleDateFormat;

public class TestSchedule {
	public static void main(String[] args) {
		ScheduleJDBCDAO scheduleTest = new ScheduleJDBCDAO();

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		java.util.Date dateU = null;

		String dateStr = "2025-2-28"; // 輸入要測的加入日期

//		文字轉java.date
		try {
			dateU = sdf.parse(dateStr);
		} catch (Exception e) {
			e.printStackTrace();
		}
//		java.date轉sql.date
		Date date = new Date(dateU.getTime());

		ScheduleService ss = new ScheduleService();
		

		ss.addSchedule(1, "000000000011100000000000", date);
	}
}
