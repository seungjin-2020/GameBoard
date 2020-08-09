package com.example.demo.Util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class CUtil {

	public static String getNowDateStr() {
		SimpleDateFormat dateTimeFormat = new SimpleDateFormat("YYYY-MM-dd HH:mm:ss");
		Date nowDate = new Date();
		String nowDateStr = dateTimeFormat.format(nowDate);
		System.out.println(nowDateStr);
		return null;
	}

}
