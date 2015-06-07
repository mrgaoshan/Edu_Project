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
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;


@Controller
@RequestMapping("/schoolpage")
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
     * 学校首页
     * @param model
     * @param id
     * @return
     */
    @RequestMapping("/home")
    public String home(Model model, Integer id){

        School school = (School) schoolService.selectByPrimaryKey(id);
        if(school == null){
            return "error/404";
        }
//        List<Major> majorList= majorService.listBySchool(id);
        List<Picture> zszsList = pictureService.listByTypeAndSchool(Constant.PictureCategory.ZSZS, id);
        List<Picture> xyfgList = pictureService.listByTypeAndSchool(Constant.PictureCategory.XYFG, id);

        model.addAttribute("sch", school);
//        model.addAttribute("majorList", majorList);
        model.addAttribute("zszsList", zszsList);
        model.addAttribute("xyfgList", xyfgList);
        return "";
    }

    /**
     * 专业列表
     * @param model
     * @param id
     * @return
     */
    @RequestMapping("/major")
    public String majorList(Model model, Integer id){

        List<Major> majorList= majorService.listBySchool(id);

        model.addAttribute("majorList", majorList);
        return "";
    }

    @RequestMapping("/majorInfo")
    public String majorInfo(Model model, Integer id){

        Major major= (Major) majorService.selectByPrimaryKey(id);
        if(major == null){
            return "error/404";
        }
        model.addAttribute("major", major);
        return "";
    }

    @RequestMapping("/news")
    public String newsList(Model model, Integer id){

        List<Newsdetail> newsList = newsdetailService.findBySchoolAndCate(id, Constant.NewsCategory.XYXW);

        model.addAttribute("newsList", newsList);
        return "";
    }

    @RequestMapping("/scenery")
    public String sceneryList(Model model, Integer id){
        List<Picture> xyfgList = pictureService.listByTypeAndSchool(Constant.PictureCategory.XYFG, id);

        model.addAttribute("xyfgList", xyfgList);
        return "";
    }

    @RequestMapping("/newsInfo")
    public String newsInfo(Model model, Integer id){
        Newsdetail newsdetail= newsdetailService.updateAndView(id);
        if(newsdetail == null){
            return "error/404";
        }
        model.addAttribute("newsdetail", newsdetail);
        return "";
    }
}
