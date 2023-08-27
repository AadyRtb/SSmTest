package com.example.service;

import com.example.model.Employee;

import java.util.List;

public interface EmployeeService {

    List<Employee> selectAllEmp();

    Employee selectById(int eid);

    int delEmpByeid(int eid);

    int addEmp(Employee employee);

    int updateSubmit(Employee employee);
}
