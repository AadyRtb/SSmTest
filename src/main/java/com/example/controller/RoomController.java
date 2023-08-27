package com.example.controller;

import com.example.model.Room;
import com.example.model.compoundtype.Comtype2;
import com.example.service.RoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/room")
public class RoomController {
    @Autowired
    private RoomService roomService;

    @RequestMapping("/selectAll")
    public String getAllRoom(Model model){
        List<Room> roomList = roomService.selectAllRoom();
        model.addAttribute("room_info",roomList);
        //  System.out.println(studentList);
        return "room/roomInfo";
    }

    @RequestMapping("/selectByRid")
    public String getRoomById(Model model,int rid){
       Room room = roomService.selectByRid(rid);
        model.addAttribute("oroom",room);
        // System.out.println(student);
        return "room/oneRoom";
    }
    @RequestMapping("/delRoomByRid")
    public String delRoomByRid(int rid){
        // System.out.println("id="+idstudent);
        int i= roomService.delRoomByRid(rid);
        // System.out.println("i="+i);
        return  "redirect:/room/selectAll";
    }
    @RequestMapping("/addRoom")
    public String addRoom(Room room){
        // System.out.println(student);
        int i=roomService.addRoom(room);

        return "redirect:/room/selectAll";
    }
    @RequestMapping("/updateByRid")
    public String updateByRid(int rid,Model model){
       // System.out.println(rid);
        Room room  = roomService.selectByRid(rid);
        model.addAttribute("room",room);
        return "room/editRoom";
    }
    @RequestMapping("/updateSubmit")
    public String updateSubmit(Room room){
       // System.out.println(student);
       roomService.updateSubmit(room);
        return "redirect:selectAll";
    }
    @RequestMapping("/selectByRid2")
    public String getByRid(Model model,int rid){
        Comtype2 comtype2 = roomService.selectByRid2(rid);
        model.addAttribute("res_2",comtype2);
        return "room/res2";
    }

}
