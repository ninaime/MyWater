package util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class SystemDate {
	//
	public static String systemSimpleTime(){
		Date date = new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMdd");
		String time = sdf.format(date);
		return time;
	}
}
