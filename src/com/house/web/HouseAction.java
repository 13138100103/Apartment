package com.house.web;

import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.house.domain.House;

import com.house.service.HouseService;

/**
 * Title: HouserAction
 * Description:���ӵĸ���ʵ�ֿ�����
 * @author zhoujiahai
 * @date ����10:57:50
 */
@Controller("houseAction")
@RequestMapping("/house")
public class HouseAction {
	
	@Autowired
	private HouseService HouseService;
	/*
	 * ��ѯ���з���
	 */
	@RequestMapping("/queryAll")
	public String HouseQueryALL(HttpServletRequest request,HttpServletResponse response){
		List<House> list = HouseService.queryAll();
		request.setAttribute("houselist", list);
		return "gallery";
	}
	/*
	 * ��ѯ��������
	 */
	@RequestMapping("/single")
	public String HouseSingle(House house,HttpServletRequest request,HttpServletResponse response){
		house=HouseService.querySingle(house.getId());
		request.getSession().setAttribute("house1", house);
		
		return "single";
	}

}
