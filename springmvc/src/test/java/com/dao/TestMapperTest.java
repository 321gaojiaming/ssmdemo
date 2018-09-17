package com.dao;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import javax.annotation.Resource;


public class TestMapperTest {


    private ApplicationContext applicationContext;

    @Autowired
    private  TestMapper testMapper;

    @Resource
    private com.entity.Test test;


    @Before
    public void setUp() throws Exception {
        // 加载spring配置文件
        applicationContext = new ClassPathXmlApplicationContext("classpath:spring/spring-*.xml");

        // 导入需要测试的
        testMapper = applicationContext.getBean(TestMapper.class);
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void selectByPrimaryKey() {
        test=testMapper.selectByPrimaryKey(3);
        System.out.println(test.getId());
        System.out.println(test.getPassword());
        System.out.println(test.getUsername());
    }


}