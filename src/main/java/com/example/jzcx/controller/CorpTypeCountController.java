package com.example.jzcx.controller;

import com.example.jzcx.entity.CorpTypeCountEntity;
import com.example.jzcx.service.CorpRedBlackService;
import com.example.jzcx.service.CorpTypeCountService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.*;

@Controller
@RequestMapping(value = "/Jzcx/corpTypeCount/")
public class CorpTypeCountController {
    @Resource
    private CorpTypeCountService service;

    @ResponseBody
    @CrossOrigin
    @RequestMapping(value = "second")
    public Object second(Model model) throws JsonProcessingException {
        Map mapTmp = new HashMap();
        ObjectMapper objectMapper = new ObjectMapper();
        List list = service.getCorpTypeCount();

        model.addAttribute("data",objectMapper.writeValueAsString(service.getCorpTypeCount()));

        mapTmp.put("data", service.getCorpTypeCount());

        Collections.sort(list, new Comparator<CorpTypeCountEntity>() {
            @Override
            public int compare(CorpTypeCountEntity u1, CorpTypeCountEntity u2) {
                int diff =   Integer.parseInt(u2.getValue())-Integer.parseInt(u1.getValue());
                if (diff > 0) {
                    return 1;
                } else if (diff < 0) {
                    return -1;
                }
                return 0;
            }});
        model.addAttribute("dataTable",list);

        mapTmp.put("dataTable", list);

        return mapTmp;
    }
}
