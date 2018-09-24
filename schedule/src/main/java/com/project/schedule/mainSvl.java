package com.project.schedule;

import java.util.HashMap;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class mainSvl {
	
	/*
	 * 2018.09.18
	 * 추후에 각기능별로 따로 나눠서 서블릿을 분리한다.
	 */
	
	
	@RequestMapping(value = "/main")
	public String homeSvl(@RequestParam HashMap<String, Object> data , HashMap<String, Object> param, Model model) {
		System.out.println("Main IN");
		
		return "./page/main/main";
	}
	
	@RequestMapping(value = "/userProfile")
	public String userProfileSvl(@RequestParam HashMap<String, Object> data , HashMap<String, Object> param, Model model) {
		System.out.println("userProfile IN");
		
		return "./page/userprofile/userProfile";
	}
	
	@RequestMapping(value = "/icons")
	public String iconsSvl(@RequestParam HashMap<String, Object> data , HashMap<String, Object> param, Model model) {
		System.out.println("icons IN");
		
		return "./page/icons/icons";
	}
	
	@RequestMapping(value = "/table")
	public String tableSvl(@RequestParam HashMap<String, Object> data , HashMap<String, Object> param, Model model) {
		System.out.println("table IN");
		
		return "./page/table/table";
	}
	
	@RequestMapping(value = "/typography")
	public String typographySvl(@RequestParam HashMap<String, Object> data , HashMap<String, Object> param, Model model) {
		System.out.println("typography IN");
		
		
		return "./page/typography/typoGraphy";
	}
	
	@RequestMapping(value = "/maps")
	public String mapsSvl(@RequestParam HashMap<String, Object> data , HashMap<String, Object> param, Model model) {
		System.out.println("maps IN");
		
		return "./page/maps/maps";
	}
	
	@RequestMapping(value = "/notifications")
	public String notificationsSvl(@RequestParam HashMap<String, Object> data , HashMap<String, Object> param, Model model) {
		System.out.println("notifications IN");
		
		return "./page/notifications/notifiCations";
	}
	
	@RequestMapping(value = "/login")
	public String loginSvl(@RequestParam HashMap<String, Object> data , HashMap<String, Object> param, Model model) {
		
		return "./page/login/login";
	}
	
	@RequestMapping(value = "/loginproc")
	public String loginprocSvl(@RequestParam HashMap<String, Object> data , HashMap<String, Object> param, Model model) {
		
		return "./page/main/main";
	}

}
