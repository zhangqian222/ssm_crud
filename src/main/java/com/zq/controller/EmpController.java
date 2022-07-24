package com.zq.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zq.bean.Emp;
import com.zq.bean.Msg;
import com.zq.service.EmpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.xml.ws.RequestWrapper;
import java.util.List;

/**
 * 处理员工crud请求
 */
@Controller
public class EmpController {

    @Autowired
    EmpService empService;

//    @RequestMapping("/emps")
//    public String getEmps(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model) {
//        //引入PageHelper分页插件
//        //传入页码，及每页显示数据
//        PageHelper.startPage(pn, 7);
//        //startPage后边紧跟的查询就是分页查询
//        List<Emp> emps = empService.getAll();
//        System.out.println(emps.size());
//
//        //使用PageInfo包装查询结果
//        //PageInfo包装了分页的详细信息
//        PageInfo page = new PageInfo(emps, 5);
//
//        model.addAttribute("pageInfo", page);
//
//
//        //测试PageInfo全部属性
//        //PageInfo包含了非常全面的分页属性
////        assertEquals(1, page.getPageNum());
////        assertEquals(10, page.getPageSize());
////        assertEquals(1, page.getStartRow());
////        assertEquals(10, page.getEndRow());
////        assertEquals(183, page.getTotal());
////        assertEquals(19, page.getPages());
////        assertEquals(1, page.getFirstPage());
////        assertEquals(8, page.getLastPage());
////        assertEquals(true, page.isFirstPage());
////        assertEquals(false, page.isLastPage());
////        assertEquals(false, page.isHasPreviousPage());
////        assertEquals(true, page.isHasNextPage());
//        return "list";
//    }

    @ResponseBody
    @RequestMapping("/emps")
    public Msg getEmpWithPageInfo(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model) {
        //引入PageHelper分页插件
        //传入页码，及每页显示数据
        PageHelper.startPage(pn, 7);
        //startPage后边紧跟的查询就是分页查询
        List<Emp> emps = empService.getAll();
        System.out.println(emps.size());
        //使用PageInfo包装查询结果
        //PageInfo包装了分页的详细信息
        PageInfo page = new PageInfo(emps, 5);
        return Msg.success().add("pageInfo", page);
    }
}
