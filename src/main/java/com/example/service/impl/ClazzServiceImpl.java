package com.example.service.impl;

import com.example.mapper.ClazzMapper;
import com.example.model.Clazz;
import com.example.model.Student;
import com.example.service.ClazzService;
import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ClazzServiceImpl implements ClazzService {

    @Autowired
    private ClazzMapper clazzMapper;

    @Override
    public List<Student> selectAllStu(String cname) {
        return clazzMapper.selectAllStu(cname);
    }


    @Override
    @Select("select * from clazz")
    public List<Clazz> selectAllClazz() {
        return clazzMapper.selectAllClazz();
    }

}
