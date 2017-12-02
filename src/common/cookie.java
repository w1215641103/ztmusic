//Cookie操作
package common;

import javax.servlet.http.*;

public class cookie {

	//写入Cookie
	public static void writeCookie(HttpServletResponse response, String key, String value) {
		Cookie cookie = new Cookie(key, value);	//创建Cookie
		cookie.setMaxAge(60*60*24);				//设置cookie过期时间为24小时
		response.addCookie(cookie); 			//在响应头部添加cookie
	}
	
	//读取Cookie值
	public static String readCookie(HttpServletRequest request, String key) {
		String value = "";
		Cookie[] ck = request.getCookies();		//获取cookies
		if (ck == null) return "";
		for (Cookie c : ck) {
			if (c.getName().equals(key)) {
				value = c.getValue();
				break;
			}
		}
		return value;
	}
}
