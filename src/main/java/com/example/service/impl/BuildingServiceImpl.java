package com.example.service.impl;

import com.example.mapper.BuildingMapper;
import com.example.model.Building;
import com.example.model.compoundtype.Comtype1;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BuildingServiceImpl {

    @Qualifier("buildingMapper")
    @Autowired
    private BuildingMapper buildingMapper;

    @Select("select * from dormitorybuilding")
    public List<Building> selectAllBu() {
        return buildingMapper.selectAllBu();
    }

    @Select("select * from dormitorybuilding where bid=#{bid}")
    public Building selectById(int bid) {
        return buildingMapper.selectById(bid);
    }

    @Delete("delete from dormitorybuilding where bid = #{bid}")
    public int delBuBybid(int bid) {
        return buildingMapper.delBuBybid(bid);
    }

    @Insert("insert into dormitorybuilding(bid,bname,fname) value(#{bid},#{bname},#{fid})")
    public int addBuilding(Building building) {
        return buildingMapper.addBuilding(building);
    }

    @Update("update dormitorybuilding set bid=#{bid},bname=#{bname},fid=#{fid} where bid=#{bid}")
    public int updateSubmit(Building building) {
        return buildingMapper.updateSubmit(building);
    }

    @Select("SELECT bname ,fname,fphone, rmname,rmphone " +
            "FROM fireman,housemaster,dormitorybuilding " +
            "where fireman.fid=dormitorybuilding.fid " +
            "AND housemaster.bid=dormitorybuilding.bid " +
            "AND dormitorybuilding.bname=#{bname};")
    public Comtype1 selectByBname(String bname) {
        return buildingMapper.selectByBname(bname);
    }
}
