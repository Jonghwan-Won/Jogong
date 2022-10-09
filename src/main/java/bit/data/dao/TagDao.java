package bit.data.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bit.data.dto.TagDto;

@Repository
public class TagDao implements TagDaoInter {

    @Autowired
    SqlSession session;
    String ns = "bit.data.dao.TagDao.";
    
    @Override
    public List<TagDto> selectTag() {
        return session.selectList(ns+"selectTag");
    }

}
