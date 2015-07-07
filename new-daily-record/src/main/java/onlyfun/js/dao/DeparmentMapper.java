package onlyfun.js.dao;

import onlyfun.js.domain.Deparment;

public interface DeparmentMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Deparment record);

    int insertSelective(Deparment record);

    Deparment selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Deparment record);

    int updateByPrimaryKey(Deparment record);
}