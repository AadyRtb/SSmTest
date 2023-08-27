package com.example.service;

import com.example.model.Building;
import com.example.model.compoundtype.Comtype1;

import java.util.List;

public interface BuildingService {
    List<Building> selectAllBu();

    Comtype1 selectByBname(String bname);

    Building selectById(int bid);

    int delBuBybid(int bid);

    int addBuilding(Building building);

    int updateSubmit(Building building);
}
