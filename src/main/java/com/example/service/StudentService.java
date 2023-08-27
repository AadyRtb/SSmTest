package com.example.service;

import com.example.model.Student;

import java.util.List;

public interface StudentService {
    List<Student> selectAllStu();
    Student selectById(int idstudent);


    int delStuByIdstudent(int idstudent);

    int addStu(Student student);

    int updateSubmit(Student student);
}
