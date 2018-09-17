package com.dao;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import javax.annotation.Resource;

import java.util.List;

public class TestMapperTest2 {

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
    public void deleteByPrimaryKey() {
        testMapper.deleteByPrimaryKey(2);
    }

    @Test
    public void insert() {
        com.entity.Test t=new com.entity.Test();
        t.setId(3);
        t.setUsername("高嘉铭");
        t.setPassword("gaojiaming");
        testMapper.insert(t);
    }

    @Test
    public void selectAll() {
        List<com.entity.Test> list=testMapper.selectAll();
        int t=list.size();
        System.out.println(t);
    }

    @Test
    public void updateByPrimaryKey() {
        com.entity.Test t=testMapper.selectByPrimaryKey(3);
        t.setUsername("gao");
        testMapper.updateByPrimaryKey(t);
    }
}