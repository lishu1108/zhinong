package cn.blogss.mapper;/*
 *Created by liqiang on 2018/6/9
 */

import cn.blogss.pojo.User;

public interface UserHomeMapper {
//    用户注册
        public abstract int userRegister(User user);

//    用户登录
        public abstract int userLogin(String loginName,String loginPwd);
}
