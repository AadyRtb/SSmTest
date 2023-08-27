package com.example.mapper;

import com.example.model.Student;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface StudentMapper {
    @Select("select * from student")
    List<Student> selectAllStu();

    @Select("select * from student where idstudent=#{idstudent}")
    Student selectById(@Param("idstudent") int idstudent);


    @Delete("delete from student where idstudent = #{idstudent}")
    int delStuByIdstudent(@Param("idstudent") int idstudent);

    @Insert("insert into student(idstudent,studentname,iddormitory,classroom) " +
            "value(#{idstudent},#{studentname},#{iddormitory},#{classroom})")
    int addStudent(Student student);

    @Update("update student set idstudent=#{idstudent},studentname=#{studentname},iddormitory=#{iddormitory},classroom=#{classroom} where idstudent=#{idstudent}")
    int updateSubmit(Student student);
}
