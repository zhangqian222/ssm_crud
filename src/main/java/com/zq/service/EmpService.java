package com.zq.service;

import com.zq.bean.Dept;
import com.zq.bean.Emp;
import com.zq.dao.DeptMapper;
import com.zq.dao.EmpMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmpService {

    @Autowired
    EmpMapper empMapper;

    public List<Emp> getAll() {
        List<Emp> emps = empMapper.selectByExampleWithDept(null);
        return emps;
    }
}
