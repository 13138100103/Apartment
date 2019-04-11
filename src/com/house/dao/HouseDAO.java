package com.house.dao;

import java.util.List;

import com.house.domain.House;

public interface HouseDAO {

	List<House> queryAll();

	House querySingle(Integer id);

	void DeleteHouse(House house);

	void UpdateHouse(House house);

}
