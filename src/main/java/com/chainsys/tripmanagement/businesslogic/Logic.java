package com.chainsys.tripmanagement.businesslogic;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Calendar;

public class Logic {
		public static double paymentAmountCalculation(int noOftickets,double amountPerticket) {
			return noOftickets*amountPerticket;
		}
		public static Date getInstanceDate() {
	        Calendar vcalendar=Calendar.getInstance();
	        String dates =  vcalendar.get(Calendar.DATE) + "/" + (vcalendar.get(Calendar.MONTH)+1) + "/" + vcalendar.get(Calendar.YEAR);
	        SimpleDateFormat dateFormat=new SimpleDateFormat("dd/MM/yyyy");
	        Date date=null;
	        try {
	            date=new java.sql.Date(dateFormat.parse(dates).getTime());
	            System.out.println(date);
	        } catch (ParseException e) {
	            e.printStackTrace();
	        }
	        return date;
	    }
	}

