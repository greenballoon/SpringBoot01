package com.example.jzcx.controller;

import com.example.jzcx.service.CorpRedBlackService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "/Jzcx/redOrBlack/")
public class CorpRedBlackController {
    @Resource
    private CorpRedBlackService service;


   /* @ResponseBody
    @CrossOrigin*/
    @RequestMapping(value = "second")
    public Object second(Model model, @RequestParam(value = "page", defaultValue = "0") String page, String limit, String redOrBlack, String corpName) {
        Map map = new HashMap<>();
        Map mapTmp = new HashMap();
        map.put("page", page);
        map.put("limit", limit);
        if (corpName != null && !corpName.equals("")) {
            map.put("corpName",corpName);
            List blackList = service.getCorpBlackInfo(map);
            if(blackList.size() == 0){
                model.addAttribute("dataList", service.getCorpRedInfo(map));
                model.addAttribute("count", service.getRedCount(map));

                mapTmp.put("dataList",service.getCorpRedInfo(map));
                mapTmp.put("count",service.getRedCount(map));
            }else {
                model.addAttribute("dataList", blackList);
                model.addAttribute("count", service.getBlackCount(map));

                mapTmp.put("dataList",blackList);
                mapTmp.put("count",service.getBlackCount(map));

            }
            model.addAttribute("corpName", corpName);

            mapTmp.put("corpName",corpName);
        } else if (redOrBlack != null && redOrBlack.equals("red")) {
            model.addAttribute("dataList", service.getCorpRedInfo(map));
            model.addAttribute("count", service.getRedCount(map));

            mapTmp.put("dataList",service.getCorpRedInfo(map));
            mapTmp.put("count",service.getRedCount(map));
        } else {
            model.addAttribute("dataList", service.getCorpBlackInfo(map));
            model.addAttribute("count", service.getBlackCount(map));

            mapTmp.put("dataList",service.getCorpBlackInfo(map));
            mapTmp.put("count",service.getBlackCount(map));
        }
        model.addAttribute("page", page);
        model.addAttribute("redOrBlack", redOrBlack);

        mapTmp.put("page",page);
        mapTmp.put("redOrBlack",redOrBlack);
        return "jzcx/redOrBlack/second";
    }
}
