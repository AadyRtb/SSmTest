package com.example.controller;


import com.example.model.Student;
import com.example.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/stu")
public class StuController {
    @Autowired
    private StudentService studentService;
    @RequestMapping("/selectAll")
    public String getAllStu(Model model){
        List<Student> studentList = studentService.selectAllStu();
        model.addAttribute("stu_info",studentList);
      //  System.out.println(studentList);
        return "stu/stuInfo";
    }

    @RequestMapping("/selectById")
    public String getStuById(Model model,int idstudent){
        Student student = studentService.selectById(idstudent);
        model.addAttribute("ostu",student);
       // System.out.println(student);
        return "stu/oneStu";
    }
    @RequestMapping("/delStuByIdstudent")
    public String delStuByIdstudent(int idstudent){
       // System.out.println("id="+idstudent);
        int i= studentService.delStuByIdstudent(idstudent);
       // System.out.println("i="+i);
        return  "redirect:/stu/selectAll";
    }
    @RequestMapping("/addStu")
    public String addStu(Student student){
       // System.out.println(student);
        int i=studentService.addStu(student);

        return "redirect:/stu/selectAll";
    }
    @RequestMapping("/updateByIdstudent")
    public String updateByIdstudent(int idstudent,Model model){
        //System.out.println(idstudent);
        Student stu = studentService.selectById(idstudent);
        model.addAttribute("stu",stu);
        return "stu/editStu";
    }
    @RequestMapping("/updateSubmit")
    public String updateSubmit(Student student){
       // System.out.println("修改提交="+student);
        studentService.updateSubmit(student);
        return "redirect:selectAll";
    }
}
