package com.example.service.impl;


import com.example.mapper.RoomMapper;
import com.example.model.Room;
import com.example.model.compoundtype.Comtype2;
import com.example.service.RoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoomServiceImpl implements RoomService {
    @Autowired
    private RoomMapper roomMapper;

    @Override
    public List<Room> selectAllRoom(){

        return roomMapper.selectAllRoom();
    }
    @Override
    public  Room selectByRid(int rid){
        return roomMapper.selectByRId(rid);
    }

    @Override
    public int delRoomByRid(int rid) {
        return roomMapper.delRoomByRid(rid);
    }

    @Override
    public int addRoom(Room room) {
        return roomMapper.addRoom(room);
    }

    @Override
    public int updateSubmit(Room room) {
        return roomMapper.updateSubmit(room);
    }

    @Override
    public Comtype2 selectByRid2(int rid) {return roomMapper.selectByRid2(rid);}
}
