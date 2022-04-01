package dao;

import java.util.List;

import dto.FoodBean;

public interface FoodDao {
	int insert(FoodBean bean);
	int delete(String id);
	int edit(FoodBean bean);
	FoodBean select(String id);
	List<FoodBean> selectList();
	List<FoodBean> selectListByCategory(String category);
}
