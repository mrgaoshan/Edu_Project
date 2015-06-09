package com.edu.web.action;

import com.edu.constant.Constant;
import com.edu.model.bean.Major;
import com.edu.model.bean.Newsdetail;
import com.edu.model.bean.Picture;
import com.edu.model.bean.School;
import com.edu.model.service.MajorService;
import com.edu.model.service.NewsdetailService;
import com.edu.model.service.PictureService;
import com.edu.model.service.SchoolService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;


@Controller
@RequestMapping("/school")
public class SchoolAction {

    @Autowired
    private SchoolService schoolService;
    @Autowired
    private MajorService majorService;
    @Autowired
    private PictureService pictureService;
    @Autowired
    private NewsdetailService newsdetailService;


    /**
     * 学院首页
     * @param model
     * @param id
     * @return
     */
    @RequestMapping("/home/{id}")
    public String home(Model model, @PathVariable Integer id){

        School school = (School) schoolService.selectByPrimaryKey(id);
        if(school == null){
            return "error/404";
        }
//        List<Major> majorList= majorService.listBySchool(id);
        List<Picture> zszsList = pictureService.listByTypeAndSchool(Constant.PictureCategory.ZSZS, id);
        List<Picture> xyfgList = pictureService.listByTypeAndSchool(Constant.PictureCategory.XYFG, id);

        model.addAttribute("sch", school);
        model.addAttribute("schId", school.getId());
//        model.addAttribute("majorList", majorList);
        model.addAttribute("zszsList", zszsList);
        model.addAttribute("xyfgList", xyfgList);
        return "college-index";
    }

    /**
     * 专业列表
     * @param model
     * @param id
     * @return
     */
    @RequestMapping("/major/{id}")
    public String majorList(Model model, @PathVariable Integer id){

        List<Major> majorList= majorService.listBySchool(id);

        model.addAttribute("majorList", majorList);
        return "college-zhuanye";
    }

    /**
     * 专业详情
     * @param model
     * @param id
     * @return
     */
    @RequestMapping("/majorInfo/{id}")
    public String majorInfo(Model model, @PathVariable Integer id){

        Major major= (Major) majorService.selectByPrimaryKey(id);
        if(major == null){
            return "error/404";
        }
        model.addAttribute("major", major);
        return "";
    }

    /**
     * 新闻列表
     * @param model
     * @param id
     * @return
     */
    @RequestMapping("/news/{id}")
    public String newsList(Model model, @PathVariable Integer id){

        List<Newsdetail> newsList = newsdetailService.findBySchoolAndCate(id, Constant.NewsCategory.XYXW);

        model.addAttribute("newsList", newsList);
        return "college-news";
    }

    /**
     * 新闻详情
     * @param model
     * @param id
     * @return
     */
    @RequestMapping("/newsInfo/{id}")
    public String newsInfo(Model model, @PathVariable Integer id){
        Newsdetail newsdetail= newsdetailService.updateAndView(id);
        if(newsdetail == null){
            return "error/404";
        }
        model.addAttribute("newsdetail", newsdetail);
        return "college-page";
    }

    /**
     * 校园风光
     * @param model
     * @param id
     * @return
     */
    @RequestMapping("/scenery")
    public String sceneryList(Model model, Integer id){
        List<Picture> xyfgList = pictureService.listByTypeAndSchool(Constant.PictureCategory.XYFG, id);

        model.addAttribute("xyfgList", xyfgList);
        return "college-cp";
    }

}
