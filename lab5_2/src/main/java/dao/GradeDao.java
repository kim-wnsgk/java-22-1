package dao;

import java.util.List;

import dto.GradeBean;

public interface GradeDao {
	int construct();
	int insert(GradeBean bean);
	int delete(String id);
	int edit(GradeBean bean);
	GradeBean select(String id);
	List<GradeBean> selectList();
}
