package com.edu.serviceTest;

import com.edu.constant.Constant;
import com.edu.model.bean.Picture;
import com.edu.model.service.PictureService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class PictureTest extends AbstractServiceForTesting{


    @Autowired
    private PictureService pictureService;

    @Test
    public void test(){

        List<Picture> list = pictureService.listByTypeAndSchool(Constant.PictureCategory.XYFG, 1);

        System.out.println(list.size());

    }
}
