package onlyfun.js.dao;

import onlyfun.js.domain.TaskType;

public interface TaskTypeMapper {
    int deleteByPrimaryKey(Long id);

    int insert(TaskType record);

    int insertSelective(TaskType record);

    TaskType selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(TaskType record);

    int updateByPrimaryKey(TaskType record);
}