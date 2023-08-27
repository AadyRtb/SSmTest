package com.example.service.impl;

import com.example.mapper.StudentMapper;
import com.example.model.Student;
import com.example.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentServiceImpl implements StudentService {
    @Autowired
    private StudentMapper studentMapper;

    @Override
    public List<Student> selectAllStu(){

       return studentMapper.selectAllStu();
    }
    @Override
    public  Student selectById(int idstudent){
        return studentMapper.selectById(idstudent);
    }

    @Override
    public int delStuByIdstudent(int idstudent) {
        return studentMapper.delStuByIdstudent(idstudent);
    }

    @Override
    public int addStu(Student student) {
        return studentMapper.addStudent(student);
    }

    @Override
    public int updateSubmit(Student student) {
        return studentMapper.updateSubmit(student);
    }
}
