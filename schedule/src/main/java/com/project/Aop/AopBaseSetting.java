package com.project.Aop;

import java.net.InetAddress;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

@Component
@Aspect
public class AopBaseSetting {
	
    protected Log log = LogFactory.getLog(AopBaseSetting.class);
    static String name = "";
    static String type = "";
	
	@Around("within(com.project.schedule.*Svl)")
	public Object loggeraop(ProceedingJoinPoint joinpoint) throws Throwable{
		HttpServletRequest req = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
		InetAddress local = InetAddress.getLocalHost();
		String ip = local.getHostAddress();
		type = joinpoint.getSignature().getDeclaringTypeName();
		
		//--객체 초기화
		HttpServletResponse res   	  = null;
		Model model 				  = null;
		HttpSession session 		  = null;
		HashMap<String, Object> data  = new HashMap<String, Object>(); // 화면에서 데이터 전달해주는 역활
		HashMap<String, Object> param = new HashMap<String, Object>(); // 사용자의 데이터 전달해주는 역활
		
		//-- NULL였던값들을 joinpoint 배열값으로 받아 해당객체에 넣어주는 구문이다!!( 이것때문에 해결됏다.. )
		for (Object obj : joinpoint.getArgs()) {
			if (obj instanceof Model) { model = (Model) obj; }
			if (obj instanceof HttpServletResponse) { res = (HttpServletResponse) obj; }
			if (obj instanceof HttpSession) { session = (HttpSession) obj; }
		}
		
		Enumeration<?> enumeration =  req.getParameterNames();
		while (enumeration.hasMoreElements()) { String key = enumeration.nextElement().toString(); System.out.println("key : "+key);  data.put(key, req.getParameter(key)); param.put(key, req.getParameter(key)); }
		// 유저 세션체크
		String userid = "";
		try{ userid = (String) session.getAttribute("adminid"); }catch (Exception e) {  }
		
		// Sample 데이터 
		data.put ("DBdata", "SAMPLE DATA");
		param.put("userid", "Sample 데이터 ");
		model.addAttribute("userid", "Sample 데이터 ");

		System.out.println("[ IP : "+ip+"] call : "+type+"." +joinpoint.getSignature().getName()+"()");
		Object resultObj = joinpoint.proceed( new Object[] { data, param, model});
		
		//변수 초기화
		res 		= null;
		model 		= null;
		data 		= null;
		param 		= null;
		
		return resultObj; 
	}


}
