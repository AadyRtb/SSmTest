package com.example.mapper;

import com.example.model.Employee;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface EmployeeMapper {
    @Select("select * from management")
    List<Employee> selectAllEmp();

    @Select("select * from management where eid=#{eid}")
    Employee selectById(@Param("eid") int eid);

    @Delete("delete from management where eid = #{eid}")
    int delEmpByeid(@Param("eid") int eid);

    @Insert("insert into management(eid,ename,work,salary) value(#{eid},#{ename},#{work},#{salary})")
    int addStudent(Employee employee);

    @Update("update management set eid=#{eid},ename=#{ename},work=#{work},salary=#{salary} where eid=#{eid}")
    int updateSubmit(Employee employee);
}
