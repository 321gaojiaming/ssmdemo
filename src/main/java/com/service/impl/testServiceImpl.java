package com.service.impl;

import com.dao.TestMapper;
import com.entity.Test;
import com.service.TestService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class testServiceImpl implements TestService {

    @Resource
    TestMapper testMapper;

    @Override
    public Test findId(int id) {
        Test test=testMapper.selectByPrimaryKey(id);
        System.out.println("根据id查询"+test.getUsername());
        return test;
    }

    @Override
    public Test login(Test test) {
        System.out.println("service");
        Test user=testMapper.selectUserByUsernameAndPassword(test);
        System.out.println("获取id"+user.getId());
        return user;
    }
}
