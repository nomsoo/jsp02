package common;

import javax.servlet.http.Cookie;

//useCookie의 코드를 따로 메소드화해서 공용으로 사용
public class Util {
	public static String getCookie(Cookie[] cookies, String name)
	{
		String result="";
		if(cookies!=null){
			for(int i=0; i<cookies.length; i++){
				if(cookies[i].getName().equals(name)){
					result=cookies[i].getValue();
					break;
				}//if
			}//for
		}//if
		return result;
	}//getCookie
}