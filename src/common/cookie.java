//Cookie����
package common;

import javax.servlet.http.*;

public class cookie {

	//д��Cookie
	public static void writeCookie(HttpServletResponse response, String key, String value) {
		Cookie cookie = new Cookie(key, value);	//����Cookie
		cookie.setMaxAge(60*60*24);				//����cookie����ʱ��Ϊ24Сʱ
		response.addCookie(cookie); 			//����Ӧͷ�����cookie
	}
	
	//��ȡCookieֵ
	public static String readCookie(HttpServletRequest request, String key) {
		String value = "";
		Cookie[] ck = request.getCookies();		//��ȡcookies
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
