package com.example.mapper;

import com.example.model.Room;
import com.example.model.compoundtype.Comtype2;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface RoomMapper {
    @Select("select * from dormitory")
    List<Room> selectAllRoom();

    @Select("select * from dormitory where rid=#{rid}")
    Room selectByRId(@Param("rid") int rid);


    @Delete("delete from dormitory where rid = #{rid}")
    int delRoomByRid(@Param("rid") int rid);

    @Insert("insert into dormitory(rid,rfloor,bid) value(#{rid},#{rfloor},#{bid})")
    int addRoom(Room room);

    @Update("update dormitory set rid=#{rid},rfloor=#{rfloor},bid=#{bid} where rid=#{rid}")
    int updateSubmit(Room room);

    @Select("SELECT rid ,cleanname,cphone,mname,mphone " +
            "FROM cleaner,maintenance,dormitory " +
            "where  maintenance.floor=dormitory.rfloor " +
            "AND    cleaner.floor=dormitory.rfloor " +
            "AND    dormitory.rid=#{rid};")
    Comtype2 selectByRid2(int rid);

}
