package dao;

import java.sql.Connection;
import java.sql.Statement;
import java.util.List;

import dto.FoodBean;
import jdbc.ConnectionProvider;

public class FoodDaoImpl implements FoodDao {

	Connection conn = ConnectionProvider.getConnection();
	Statement stmt = null;
	
	@Override
	public int insert(FoodBean bean) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int edit(FoodBean bean) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public FoodBean select(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<FoodBean> selectList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<FoodBean> selectListByCategory(String category) {
		// TODO Auto-generated method stub
		return null;
	}

}
