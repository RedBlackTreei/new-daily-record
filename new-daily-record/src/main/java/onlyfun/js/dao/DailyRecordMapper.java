package onlyfun.js.dao;

import onlyfun.js.domain.DailyRecord;

public interface DailyRecordMapper {
    int deleteByPrimaryKey(Long id);

    int insert(DailyRecord record);

    int insertSelective(DailyRecord record);

    DailyRecord selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(DailyRecord record);

    int updateByPrimaryKey(DailyRecord record);
}