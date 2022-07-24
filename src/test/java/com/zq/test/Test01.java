package com.zq.test;

import com.zq.bean.Dept;
import com.zq.bean.Emp;
import com.zq.bean.EmpExample;
import com.zq.dao.DeptMapper;
import com.zq.dao.EmpMapper;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;
import java.util.UUID;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class Test01 {

    @Autowired
    DeptMapper deptMapper;

    @Autowired
    EmpMapper empMapper;

    @Autowired
    SqlSession sqlSession;


    /**
     * 测试部门mapper
     */
    @Test
    public void test01() {
//        //创建springIOC容器
//        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
//        //从容器中获取mapper
//        DeptMapper deptMapper = context.getBean(DeptMapper.class);

//        System.out.println(deptMapper);
//
//        Dept dept = new Dept();
//        dept.setDeptName("开发部");
//        System.out.println(dept);
//
//        Dept dept1 = new Dept();
//        dept1.setDeptName("测试部");
//        System.out.println(dept1);
//
//        deptMapper.insertSelective(dept);
//
//        deptMapper.insertSelective(dept1);
    }


    /**
     * 测试 Emp mapper
     */
    @Test
    public void test02() {
//        System.out.println(empMapper);
//
//        Emp emp = new Emp(null, "tom", "m", "10414@qq.com", 1);
//
//        empMapper.insertSelective(emp);
        //批量插入
        EmpMapper mapper = sqlSession.getMapper(EmpMapper.class);
        for (int i = 0; i < 1000; i++) {
            String uuid = UUID.randomUUID().toString().substring(0, 5) + i;

            Emp emp = new Emp(null, uuid, "m", "0929@qq.com", 1);

            empMapper.insertSelective(emp);
        }
//        List<Emp> emps = mapper.selectByExample(null);
//
//        mapper.deleteByExample(null);
    }


    /**
     * 测试 连表查询
     */
    @Test
    public void test03() {
        EmpExample empExample = new EmpExample();
        EmpExample.Criteria criteria = empExample.createCriteria().andDIdBetween(1, 10);

        List<Emp> emps = empMapper.selectByExampleWithDept(empExample);
        for (Emp e : emps) {
            System.out.println(e);
        }
    }

}
