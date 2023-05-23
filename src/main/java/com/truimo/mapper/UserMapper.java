package com.truimo.mapper;

import com.truimo.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface UserMapper {
    @Select("SELECT * FROM user WHERE userCode = #{0}")
    public User getUserByUserCode(String userCode);
}
