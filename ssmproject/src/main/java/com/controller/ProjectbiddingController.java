package com.controller;

import com.domain.Bid;
import com.domain.Projectbidding;
import com.domain.Projectbiddingfile;
import com.domain.Users;
import com.service.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

/**
 * 招标项目相关
 */
@Controller
public class ProjectbiddingController {

    @Resource(name = "projectbiddingServiceImpl")
    ProjectbiddingService projectbiddingService;

    @Resource(name = "projectbiddingfileServiceImpl")
    ProjectbiddingfileService projectbiddingfileService;

    @Resource(name = "bidServiceImpl")
    BidService bidService;

    /**
     * 增加一个招标项目
     *
     * @return
     */
    @RequestMapping("/insertProjectbidding")
    public String insertProjectbidding(HttpServletRequest request, Projectbidding projectbidding, @RequestParam("file") MultipartFile[] file) throws IOException {
        Users user = (Users) request.getSession().getAttribute("user");//获取当前登陆的用户对象

        projectbidding.setOwner(user.getId());
        projectbidding.setBz("0");
        projectbiddingService.insert(projectbidding);//保存招标项目,并回写主键id的值

        // System.out.println(projectbidding.getId());

        for (MultipartFile multipartFile : file) {
            //保存文件信息
            Projectbiddingfile projectbiddingfile = new Projectbiddingfile();
            projectbiddingfile.setProjectbiddingid(projectbidding.getId());
            projectbiddingfile.setFilepath(multipartFile.getOriginalFilename());
            projectbiddingfileService.insert(projectbiddingfile);
            multipartFile.transferTo(new File("d:/test/" + multipartFile.getOriginalFilename()));
        }

        request.setAttribute("href", "/jsp/insertprojectbidding.jsp");
        return "commonmessage";
    }

    /**
     * 查询用户增加的招标项目，待发布的招标项目
     *
     * @return
     */
    @RequestMapping("/selectProjectbidding")
    public String selectProjectbidding(HttpServletRequest request) {
        Users user = (Users) request.getSession().getAttribute("user");//获取当前登陆的用户对象

        Projectbidding projectbidding = new Projectbidding();
        projectbidding.setOwner(user.getId());
        projectbidding.setBz("0");
        List<Projectbidding> projectbiddings = projectbiddingService.selectAll2(projectbidding);
        request.setAttribute("projectbiddings", projectbiddings);

        return "selectprojectbidding";
    }


    /**
     * 查询正在进行的招标项目，发布成功的项目
     *
     * @return
     */
    @RequestMapping("/selectNowProjectbidding")
    public String selectNowProjectbidding(HttpServletRequest request) {
        Users user = (Users) request.getSession().getAttribute("user");//获取当前登陆的用户对象

        Projectbidding projectbidding = new Projectbidding();
        projectbidding.setOwner(user.getId());
        projectbidding.setBz("1");
        List<Projectbidding> projectbiddings = projectbiddingService.selectAll2(projectbidding);
        request.setAttribute("projectbiddings", projectbiddings);

        return "selectnowprojectbidding";
    }

    /**
     * 确认发布招标
     */
    @RequestMapping("/okProjectbidding")
    public String okProjectbidding(HttpServletRequest request, Projectbidding projectbidding) {
        projectbidding.setBz("1");

        Calendar calendar = new GregorianCalendar();
        projectbidding.setReleasetime(calendar.get(Calendar.YEAR) + "-" + (calendar.get(Calendar.MONTH) + 1) + "-" + calendar.get(Calendar.DATE));//设置发布时间

        projectbiddingService.updateByPrimaryKeySelective(projectbidding);

        request.setAttribute("href", "/selectProjectbidding");
        return "commonmessage";

    }


    /**
     * 首页查询正在进行的招标项目（与用户没有关系）
     *
     * @return
     */
    @RequestMapping("/selectNowProjectbiddingWeb")
    public String selectNowProjectbiddingWeb(HttpServletRequest request) {

        Projectbidding projectbidding = new Projectbidding();
        projectbidding.setBz("1");

        List<Projectbidding> projectbiddings = projectbiddingService.selectAll(projectbidding);
        request.setAttribute("projectbiddings", projectbiddings);
        return "web/selectnowprojectbiddingweb";
    }

    /**
     * 后台查询开标项目(把可以开标的项目查询处理)
     */
    @RequestMapping("/selectProjectbiddingIsOpen")
    public String selectProjectbiddingIsOpen(HttpServletRequest request) {
        Projectbidding projectbidding = new Projectbidding();
        projectbidding.setBz("1");//已经发布的，正在进行中的招标项目

        List<Projectbidding> projectbiddings = projectbiddingService.selectAll3(projectbidding);//获取开标的项目

        request.setAttribute("projectbiddings", projectbiddings);

        return "selectprojectbiddingssopen";
    }

    /**
     * 开始开标项目（把开标的项目信息及相关投标的供应商信息显示）
     */
    @RequestMapping("/projectbiddingIsOpen")
    public String ProjectbiddingIsOpen(HttpServletRequest request, Projectbidding projectbidding) {

        //1、根据招标项目的id获取这个招标项目相关信息
        List<Projectbidding> projectbiddings = projectbiddingService.selectAll2(projectbidding);

        //2、获取到参加这个招标项目的投标的相关供应商信息及投标信息
        List<Bid> bids = bidService.selectByProjectbiddingid(projectbidding.getId());


        request.setAttribute("projectbiddings", projectbiddings);//把当前的这个招标项目信息显示

        request.setAttribute("bids", bids);//把当前的这个投标项目信息显示
        return "projectbiddingisopen";
    }

    /**
     * 确认中标的供应商
     *
     * @return
     */
    @RequestMapping("/setBidwinner")
    public String setBidwinner(int supplierid,int projectbiddingid,HttpServletRequest request) {
        Projectbidding projectbidding=new Projectbidding();
        projectbidding.setId(projectbiddingid);
        projectbidding.setBidwinner(supplierid);
        projectbidding.setBz("2");//结束的招标项目

        projectbiddingService.updateByPrimaryKeySelective(projectbidding);//修改招标项目表里面招标项目的中标供应商

        request.setAttribute("href", "/selectProjectbiddingIsOpen");
        return "commonmessage";
    }


}
