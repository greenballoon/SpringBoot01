package com.example.jzcx.service;

import com.example.jzcx.dao.CorpRedBlackDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.List;
import java.util.Map;

@Service
public class CorpRedBlackService {

    @Autowired
    private CorpRedBlackDao dao;

    public List getCorpRedInfo(Map map) {
        return dao.getCorpRedInfo(map);
    }

    public List getCorpBlackInfo(Map map) {
        return dao.getCorpBlackInfo(map);
    }

    public Long getRedCount(Map map) {
        return dao.getRedCount(map);
    }

    public Long getBlackCount(Map map) {
        return dao.getBlackCount(map);
    }

}
