package com.example.service;

import com.example.model.Room;
import com.example.model.compoundtype.Comtype2;

import java.util.List;

public interface RoomService {
    List<Room> selectAllRoom();

    Room selectByRid(int rid);

    int delRoomByRid(int rid);

    int addRoom(Room room);

    int updateSubmit(Room room);

    Comtype2 selectByRid2(int rid);
}
