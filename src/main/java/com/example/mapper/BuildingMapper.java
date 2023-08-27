package com.example.mapper;

import com.example.model.Building;
import com.example.model.compoundtype.Comtype1;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface BuildingMapper {
    @Select("select * from dormitorybuilding")
    List<Building> selectAllBu();

    @Select("select * from dormitorybuilding where bid=#{bid}")
    Building selectById(@Param("bid") int bid);

    @Delete("delete from dormitorybuilding where bid = #{bid}")
    int delBuBybid(@Param("bid") int bid);

    @Insert("insert into dormitorybuilding(bid,bname,fid) value(#{bid},#{bname},#{fid})")
    int addBuilding(Building building);

    @Update("update dormitorybuilding set bid=#{bid},bname=#{bname},fid=#{fid} where bid=#{bid}")
    int updateSubmit(Building building);
    @Select("SELECT bname ,fname,fphone, rmname,rmphone " +
            "FROM fireman,housemaster,dormitorybuilding " +
            "where fireman.fid=dormitorybuilding.fid " +
            "AND housemaster.bid=dormitorybuilding.bid " +
            "AND dormitorybuilding.bname=#{bname};")
    Comtype1 selectByBname(String bname);
}
