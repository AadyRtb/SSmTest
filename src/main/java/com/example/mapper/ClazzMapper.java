package com.example.mapper;

import com.example.model.Clazz;
import com.example.model.Student;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface ClazzMapper {
    @Select("select * from clazz")
    List<Clazz> selectAllClazz();

    @Select("select idstudent,studentname,iddormitory,classroom FROM student, clazz where classroom=cname and cname=#{cname}")
    List<Student> selectAllStu(String cname);

}
