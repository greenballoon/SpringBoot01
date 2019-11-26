package com.example.jzcx.dao;

import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface CorpRedBlackDao{

     List getCorpRedInfo(Map map);
     List getCorpBlackInfo(Map map);
     Long getRedCount(Map map);
     Long getBlackCount(Map map);
}
