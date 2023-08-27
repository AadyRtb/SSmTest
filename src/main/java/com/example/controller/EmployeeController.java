package com.example.controller;

import com.example.model.Employee;
import com.example.service.impl.EmployeeServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/emp")
public class EmployeeController {

    @Autowired
    private EmployeeServiceImpl employeeService;

    @RequestMapping("/selectAll")
    public String getAllEmplo(Model model){
        List<Employee> employeeList = employeeService.selectAllEmp();
        model.addAttribute("emp_info",employeeList);
        return "emp/empInfo";
    }
    @RequestMapping("/selectById")
    public String getEmpById(Model model,int eid){
        Employee employee =employeeService.selectById(eid);
        model.addAttribute("oemp",employee);
        return "emp/oneEmp";
    }
    @RequestMapping("/delEmpByeid")
    public String delEmpByeid(int eid){
        // System.out.println("id="+eid);
        int i= employeeService.delEmpByeid(eid);
        // System.out.println("i="+i);
        return  "redirect:/emp/selectAll";
    }
    @RequestMapping("/addEmp")
    public String addEmp(Employee employee){
        int i=employeeService.addEmp(employee);

        return "redirect:/emp/selectAll";
    }
    @RequestMapping("/updateByeid")
    public String updateByeid(int eid,Model model){
       // System.out.println(eid);
        Employee emp = employeeService.selectById(eid);
        model.addAttribute("emp",emp);
        return "emp/editEmp";
    }
    @RequestMapping("/updateSubmit")
    public String updateSubmit(Employee employee){
       // System.out.println(employee);
        employeeService.updateSubmit(employee);
        return "redirect:selectAll";
    }

}
