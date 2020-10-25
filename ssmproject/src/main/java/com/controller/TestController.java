package com.controller;

import com.domain.Test;
import com.github.pagehelper.PageHelper;
import com.service.TestService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class TestController {
    @Resource(name = "testServiceImpl")
    TestService testService;

    @RequestMapping("/testa")
    public String testa(Test test,int page) {
        testService.insert(test);

        PageHelper.startPage(page,1);

        List<Test> tests = testService.selectAllTest();
        for (Test test1 : tests) {
            System.out.println(test1.getN());
        }

        return "a";
    }
}
