package com.example.jzcx.service;

import com.example.jzcx.dao.CorpRedBlackDao;
import com.example.jzcx.dao.CorpTypeCountDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class CorpTypeCountService {

    @Autowired
    private CorpTypeCountDao dao;

    public List getCorpTypeCount(){
        return dao.getCorpTypeCount();
    }



}
