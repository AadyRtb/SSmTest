package com.example.mapper;

import com.example.model.User;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

public interface UserMapper {



    @Select("select * from user where username=#{username} and password=${password}")
    User log(@Param("username") String username,@Param("password") String password);
}
