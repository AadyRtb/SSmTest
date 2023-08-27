package com.example.controller;

import com.example.model.Building;
import com.example.model.compoundtype.Comtype1;
import com.example.service.impl.BuildingServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/bu")
public class BuildingController {

    @Autowired
    private BuildingServiceImpl buildingService ;

    @RequestMapping("/selectAll")
    public String getAllBuilding(Model model){
        List<Building> buildingList = buildingService.selectAllBu();
        model.addAttribute("bu_info",buildingList);
        return "/bu/buildingInfo";
    }
    @RequestMapping("/selectByBname")
    public String getByBname(Model model,String bname) {

        Comtype1 comtype1 = buildingService.selectByBname(bname);
        model.addAttribute("res_1",comtype1);
        // System.out.println(student);
        return "bu/res1";
    }
    @RequestMapping("/selectById")
    public String getBUById(Model model,int bid){
        Building building =buildingService.selectById(bid);
        model.addAttribute("obu",building);
        return "bu/oneBuilding";
    }
    @RequestMapping("/delBuBybid")
    public String delBuBybid(int bid){
        // System.out.println("id="+eid);
        int i= buildingService.delBuBybid(bid);
        // System.out.println("i="+i);
        return  "redirect:/bu/selectAll";
    }
    @RequestMapping("/addBuilding")
    public String addBuilding(Building building){
        int i=buildingService.addBuilding(building);

        return "redirect:/bu/selectAll";
    }
    @RequestMapping("/updateBybid")
    public String updateBybid(int bid,Model model){
       // System.out.println(bid);
        Building bu = buildingService.selectById(bid);
        model.addAttribute("bu",bu);
        return  "bu/editBu";
    }
    @RequestMapping("/updateSubmit")
    public String updateSubmit(Building building){
       // System.out.println(building);
        buildingService.updateSubmit(building);
       // System.out.println(building);
        return "redirect:selectAll";
    }

}
