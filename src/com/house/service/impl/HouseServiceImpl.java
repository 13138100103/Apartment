package com.house.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.house.dao.HouseDAO;
import com.house.domain.House;
import com.house.service.HouseService;
@Service("houseService")
public class HouseServiceImpl implements HouseService{

	@Autowired
	private HouseDAO HouseDAO;
	/*
	 * 查找所有房子。
	 */
	@Override
	public List<House> queryAll() {
		return HouseDAO.queryAll();	
	}
	/*
	 * 显示指定房子
	 */
	@Override
	public House querySingle(Integer id) {
		// TODO Auto-generated method stub
		return HouseDAO.querySingle(id);
	}
	

}
