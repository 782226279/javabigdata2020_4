package com.controller;

import com.common.myenum.SupplierSign;
import com.domain.Bid;
import com.domain.Bidfile;
import com.domain.Projectbidding;
import com.domain.Supplier;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.service.BidService;
import com.service.BidfileService;
import com.service.ProjectbiddingService;
import com.service.SupplierService;
import com.sun.org.apache.regexp.internal.RE;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Random;

/**
 * 供应商相关存在
 */
@Controller
public class SupplierController {

    @Resource(name = "supplierServiceImpl")
    SupplierService supplierService;//供应商service接口

    @Resource(name = "projectbiddingServiceImpl")
    ProjectbiddingService projectbiddingService;

    @Resource(name = "bidServiceImpl")
    BidService bidService;//投标service接口

    @Resource(name = "bidfileServiceImpl")
    BidfileService bidfileService;//投标附件service接口

    /**
     * 待审核供应商、审核不通过供应商
     *
     * @return
     */
    @RequestMapping("/supplierReviewed")
    public String supplierReviewed(HttpServletRequest request, Supplier supplier, Integer page) {

        PageHelper.startPage(page, 4);
        List<Supplier> suppliers = supplierService.selectSupplier(supplier);
        PageInfo pageInfo = new PageInfo(suppliers);

        request.setAttribute("suppliers", suppliers);
        request.setAttribute("pageInfo", pageInfo);
        return "supplierreviewed";
    }

    /**
     * 审核供应商
     *
     * @return
     */
    @RequestMapping("/supplierReviewedSub")
    public String supplierReviewedSub(HttpServletRequest request, Supplier supplier) {
        //根据供应商的id查询出供应商的信息及资质文件等...
        Supplier supplier2 = supplierService.selectSupplierQualifications(supplier);

        request.setAttribute("supplier2", supplier2);
        return "supplierreviewedsub";
    }

    /**
     * 审核供应商提交操作（审核通过或不通过）
     *
     * @return
     */
    @RequestMapping("/supplierReviewedSubmit")
    public String supplierReviewedSubmit(HttpServletRequest request, Supplier supplier, String bzint) {
        if ("0".equals(bzint)) {//审核通过
            supplier.setSign(2);
        } else if ("1".equals(bzint)) {//审核不通过
            supplier.setSign(1);
        }

        supplierService.updateByPrimaryKeySelective(supplier);

        // return "redirect:/supplierReviewed?sign=0&page=1";
        request.setAttribute("href", "/supplierReviewed?sign=0&page=1");
        return "forward:/jsp/commonmessage.jsp";
    }

    /**
     * 供应商注册
     *
     * @return
     */
    @RequestMapping("/supplierRegisterWeb")
    public String supplierRegisterWeb(Supplier supplier) {
        supplier.setSign(0);
        supplierService.insert(supplier);
        return "/web/supplierlogin";
    }

    /**
     * 供应商登陆
     */
    @RequestMapping("/supplierLoginWeb")
    public String supplierLoginWeb(Supplier supplier, HttpServletRequest request, String inimgr) {
        //1、首先验证验证码输入的是否正确
        //获取输入的验证码    获取前面生成保存在session里面的的验证码
        String imgr = request.getSession().getAttribute("imgr").toString();//获取到前面生成保存在session里面的验证码
        if (!imgr.equals(inimgr)) {//输入的验证码和保存在session里面的验证码不一致
            request.setAttribute("href", "/jsp/web/supplierlogin.jsp");
            request.setAttribute("message", "    验证码输入错误，无法登陆");
            return "commonmessage";
        }

        //根据用户名和密码查询返回这个供应商对象
        Supplier supplier1 = supplierService.selectSupplier2(supplier);
        String sing = "";
        if (supplier1 == null) {//没有查询到用户名密码对应的供应商对象（还没有注册的）
            sing = "没有注册的用户";
        } else {//已经注册过的供应商，但是不一定审核通过的
            if (supplier1.getSign() == 4) {//已经是供应商了 登陆成功
                request.getSession().setAttribute("loginsupplier",supplier1);
                return "redirect:/jsp/supplierweb/suppliermain.jsp";
            } else {
                sing = SupplierSign.getSing(supplier1.getSign());//供应商状态的描述信息
            }

        }
        System.out.println(sing + "===");
        request.setAttribute("href", "/jsp/web/supplierlogin.jsp");
        request.setAttribute("message", sing + "    无法登陆");
        return "commonmessage";
    }

    /**
     * 供应商登陆时候的验证码图片生成
     */
    @RequestMapping("/supplierLoginImg")
    public void supplierLoginImg(HttpServletResponse response, HttpServletRequest request) {
        BufferedImage bufferedImage = new BufferedImage(58, 30, BufferedImage.TYPE_INT_RGB);//创建一个内存图片缓冲流
        Graphics graphics = bufferedImage.getGraphics();//获取图片流的画布对象
        graphics.setColor(Color.red);
        graphics.setFont(new Font("", Font.LAYOUT_LEFT_TO_RIGHT, 20));

        graphics.setColor(Color.blue);
        graphics.draw3DRect(22, 22, 22, 2, true);

        graphics.setColor(Color.cyan);
        graphics.draw3DRect(12, 12, 12, 2, true);

        //随机生成一个4位的数字
        int r = new Random().nextInt(9000) + 1000;//(0-8999)+1000
        graphics.drawString(r + "", 6, 22);

        //把生成的随机数字保存到session里面
        request.getSession().setAttribute("imgr", r + "");

        try {
            ImageIO.write(bufferedImage, "jpg", response.getOutputStream());//把图片流出到客户端的浏览器
        } catch (IOException e) {
            e.printStackTrace();
        }


    }


    /**
     * (供应商后台》我要投标)
     *
     * @return
     */
    @RequestMapping("/supplierbidselect")
    public String supplierBidSelect(HttpServletRequest request) {
        //查询出正在招标的项目
        Projectbidding projectbidding = new Projectbidding();//招标项目对象
        projectbidding.setBz("1");

        List<Projectbidding> projectbiddings = projectbiddingService.selectAll2(projectbidding);//查询所有的正在招标的项目
        request.setAttribute("projectbiddings", projectbiddings);
        return "/supplierweb/supplierbidselect";
    }

    /**
     * 进行投标前的查询
     *
     * @return
     */
    @RequestMapping("/bidselectbyid/{id}")
    public String bidSelectById(@PathVariable("id") int id, HttpServletRequest request) {

        Projectbidding projectbidding = projectbiddingService.selectByPrimaryKey(id);//根据id查询到这个招标项目对象
        request.setAttribute("projectbidding", projectbidding);

        return "/supplierweb/bidmain";
    }

    /**
     * 进行投标
     *
     * @return
     */
    @RequestMapping("/bidsubmit")
    public String bidSubmit(HttpServletRequest request, Bid bid,@RequestParam("file") MultipartFile[] file) throws IOException {
        Supplier loginsupplier = (Supplier)request.getSession().getAttribute("loginsupplier");//获取当前登陆的供应商对象
        bid.setSupplierid(loginsupplier.getId());//设置供应商的id
        bidService.insert(bid);//保存投标对象,并且会回写主键id的值

        for (MultipartFile multipartFile : file) {
            Bidfile bidfile=new Bidfile();
            bidfile.setBidid(bid.getId());//设置文件关联的投标id
            bidfile.setFilepath(multipartFile.getOriginalFilename());

            multipartFile.transferTo(new File("d://test//"+multipartFile.getOriginalFilename()));//保存这个文件
            bidfileService.insert(bidfile);//保存投标文件信息到数据库里面

        }

        request.setAttribute("href", "/supplierbidselect");
        request.setAttribute("message", "投标成功");
        return "commonmessage";
    }

}
