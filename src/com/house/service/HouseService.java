package com.house.service;

import java.util.List;

import com.house.domain.House;

public interface HouseService {

	List<House> queryAll();

	House querySingle(Integer id);

}
