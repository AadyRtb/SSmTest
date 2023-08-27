package com.example.service.impl;

import com.example.mapper.EmployeeMapper;
import com.example.model.Employee;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmployeeServiceImpl {


    @Qualifier("employeeMapper")
    @Autowired
    private EmployeeMapper employeeMapper;

    @Select("select * from management")
    public List<Employee> selectAllEmp() {
        return employeeMapper.selectAllEmp();
    }

    @Select("select * from management where eid=#{eid}")
    public Employee selectById(int eid) {
        return employeeMapper.selectById(eid);
    }

    @Delete("delete from management where eid = #{eid}")
    public int delEmpByeid(int eid) {
        return employeeMapper.delEmpByeid(eid);
    }

    @Insert("insert into management(eid,ename,work,salary) value(#{eid},#{ename},#{work},#{salary})")
    public int addEmp(Employee employee) {
        return employeeMapper.addStudent(employee);
    }

    @Update("update management set eid=#{eid},ename=#{ename},work=#{work},salary=#{salary} where eid=#{eid}")
    public int updateSubmit(Employee employee) {
        return employeeMapper.updateSubmit(employee);
    }
}
