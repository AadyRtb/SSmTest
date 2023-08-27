package com.example.service;

import com.example.model.Clazz;
import com.example.model.Student;

import java.util.List;

public interface ClazzService {
    List<Clazz> selectAllClazz();


    List<Student> selectAllStu(String cname);
}
