package com.example.controller;

import com.example.model.Clazz;
import com.example.model.Student;
import com.example.service.ClazzService;
import com.example.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/clazz")
public class ClazzController {
        @Autowired
        private ClazzService clazzService;

        @Autowired
        private StudentService studentService;

            @RequestMapping("/selectAll")
        public String getAllClazz(Model model){
            List<Clazz> clazzList = clazzService.selectAllClazz();
            model.addAttribute("cla_info",clazzList);
           //   System.out.println(clazzList);
            return "cla/classInfo";
        }
        @RequestMapping("/selectStu")
        public String getAllStu(Model model,String cname){
            List<Student> studentList =clazzService.selectAllStu(cname);
            model.addAttribute("clas_info",studentList);
           //  System.out.println(studentList);
            return "cla/clasInfo";
        }






    @RequestMapping("/delStuByIdstudent")
    public String delStuByIdstudent(int idstudent){
        // System.out.println("id="+idstudent);
        int i= studentService.delStuByIdstudent(idstudent);
        // System.out.println("i="+i);
        return  "redirect:/clazz/selectAll";
    }
    @RequestMapping("/addStu")
    public String addStu(Student student){
        // System.out.println(student);
        int i=studentService.addStu(student);

        return "redirect:/clazz/selectAll";
    }
    @RequestMapping("/updateByIdstudent")
    public String updateByIdstudent(int idstudent,Model model){
        //System.out.println(idstudent);
        Student stu = studentService.selectById(idstudent);
        model.addAttribute("stu",stu);
        return "cla/editCla";
    }
    @RequestMapping("/updateSubmit")
    public String updateSubmit(Student student){
       // System.out.println("修改提交="+student);
        studentService.updateSubmit(student);
        return "redirect:selectAll";
    }


    }