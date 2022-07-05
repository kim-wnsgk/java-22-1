package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import dto.FoodBean;
import jdbc.ConnectionProvider;

public class FoodDaoImpl implements FoodDao {
	Connection conn = ConnectionProvider.getConnection();
	Statement stmt = null;
	
	public FoodDaoImpl() throws SQLException {
		this.stmt = conn.createStatement();
	}

	
	@Override
	public int insert(FoodBean bean) {
		PreparedStatement pstmt = null;
		try {
			String sql = "insert into mfdsfood values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bean.getSample_id());
			pstmt.setString(2, bean.getName());
			pstmt.setString(3, bean.getCategory());
			pstmt.setDouble(4, bean.getCalorie());
			pstmt.setDouble(5, bean.getServing_size());
			pstmt.setDouble(6, bean.getWater());
			pstmt.setDouble(7, bean.getProtein());
			pstmt.setDouble(8, bean.getFat());
			pstmt.setDouble(9, bean.getCarbohydrate());
			pstmt.setDouble(10, bean.getSugars());
			pstmt.setDouble(11, bean.getFiber());
			pstmt.setDouble(12, bean.getCalcium());
			pstmt.setDouble(13, bean.getIron());
			pstmt.setDouble(14, bean.getMagnesium());
			pstmt.setDouble(15, bean.getPhosphorus());
			pstmt.setDouble(16, bean.getPotassium());
			pstmt.setDouble(17, bean.getSodium());
			pstmt.setDouble(18, bean.getZinc());
			pstmt.setDouble(19, bean.getCopper());
			pstmt.setDouble(20, bean.getManganese());
			pstmt.setDouble(21, bean.getSelenium());

			return pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return 0;
	}

	@Override
	public int delete(String id) {
		PreparedStatement pstmt = null;
		try {
			String sql = "delete from mfdsfood where sample_id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			return pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return 0;
	}

	@Override
	public int edit(FoodBean bean) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			String sql = "update pet set owner=?, species=?, gender=?, birth=?, death=? where name=?";
			String command = "UPDATE mfdsfood set sample_id=?', name=?, category=?, calorie=?, serving_size=?, water=?, protein=?, fat=?, carbohydrate=?, sugars=?, fiber=?, calcium=?, iron=?, magnesium=?, phosphorus=?, potassium=?, sodium=?, magnesium=?, zinc=?, copper=?, manganese=?, selenium=? where sample_id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bean.getSample_id());
			pstmt.setString(2, bean.getName());
			pstmt.setString(3, bean.getCategory());
			pstmt.setDouble(4, bean.getCalorie());
			pstmt.setDouble(5, bean.getServing_size());
			pstmt.setDouble(6, bean.getWater());
			pstmt.setDouble(7, bean.getProtein());
			pstmt.setDouble(8, bean.getFat());
			pstmt.setDouble(9, bean.getCarbohydrate());
			pstmt.setDouble(10, bean.getSugars());
			pstmt.setDouble(11, bean.getFiber());
			pstmt.setDouble(12, bean.getCalcium());
			pstmt.setDouble(13, bean.getIron());
			pstmt.setDouble(14, bean.getMagnesium());
			pstmt.setDouble(15, bean.getPhosphorus());
			pstmt.setDouble(16, bean.getPotassium());
			pstmt.setDouble(17, bean.getSodium());
			pstmt.setDouble(18, bean.getZinc());
			pstmt.setDouble(19, bean.getCopper());
			pstmt.setDouble(20, bean.getManganese());
			pstmt.setDouble(21, bean.getSelenium());
			return pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return 0;
	}

	@Override
	public FoodBean select(String id) {
		String sql = "SELECT * FROM mfdsfood where sample_id='" + id + "'";
		ResultSet rs;
		FoodBean fb = new FoodBean();
		try {	
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				fb.setSample_id(rs.getString("sample_id"));
				fb.setName(rs.getString("name"));
				fb.setCategory(rs.getString("category"));
				fb.setCalorie(rs.getDouble("calorie"));
				fb.setServing_size(rs.getDouble("serving_size"));
				fb.setWater(rs.getDouble("water"));
				fb.setProtein(rs.getDouble("protein"));
				fb.setFat(rs.getDouble("fat"));
				fb.setCarbohydrate(rs.getDouble("carbohydrate"));
				fb.setSugars(rs.getDouble("sugars"));
				fb.setFiber(rs.getDouble("fiber"));
				fb.setCalcium(rs.getDouble("calcium"));
				fb.setIron(rs.getDouble("iron"));
				fb.setMagnesium(rs.getDouble("magnesium"));
				fb.setPhosphorus(rs.getDouble("phosphorus"));
				fb.setPotassium(rs.getDouble("potassium"));
				fb.setSodium(rs.getDouble("sodium"));
				fb.setZinc(rs.getDouble("zinc"));
				fb.setCopper(rs.getDouble("copper"));
				fb.setManganese(rs.getDouble("manganese"));
				fb.setSelenium(rs.getDouble("selenium"));
			}
			
			rs.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}	
		return fb;
	}

	@Override
	public List<FoodBean> selectList() {
		String sql = "SELECT * FROM mfdsfood;";
		ResultSet rs;
		List<FoodBean> fbList = new ArrayList<>();
		try {
			rs = stmt.executeQuery(sql);

			while(rs.next()) {
				FoodBean fb = new FoodBean();
				fb.setSample_id(rs.getString("sample_id"));
				fb.setName(rs.getString("name"));
				fb.setCategory(rs.getString("category"));
				fb.setCalorie(rs.getDouble("calorie"));
				fb.setServing_size(rs.getDouble("serving_size"));
				fb.setWater(rs.getDouble("water"));
				fb.setProtein(rs.getDouble("protein"));
				fb.setFat(rs.getDouble("fat"));
				fb.setCarbohydrate(rs.getDouble("carbohydrate"));
				fb.setSugars(rs.getDouble("sugars"));
				fb.setFiber(rs.getDouble("fiber"));
				fb.setCalcium(rs.getDouble("calcium"));
				fb.setIron(rs.getDouble("iron"));
				fb.setMagnesium(rs.getDouble("magnesium"));
				fb.setPhosphorus(rs.getDouble("phosphorus"));
				fb.setPotassium(rs.getDouble("potassium"));
				fb.setSodium(rs.getDouble("sodium"));
				fb.setZinc(rs.getDouble("zinc"));
				fb.setCopper(rs.getDouble("copper"));
				fb.setManganese(rs.getDouble("manganese"));
				fb.setSelenium(rs.getDouble("selenium"));

				fbList.add(fb);
			}
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		};

		return fbList;
	}

	@Override
	public List<FoodBean> selectListByCategory(String category) {
		String sql = "SELECT * FROM mfdsfood WHERE category='" + category + "'";
		ResultSet rs;
		List<FoodBean> fbList = new ArrayList<>();

		try {	
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				FoodBean fb = new FoodBean();
				fb.setSample_id(rs.getString("sample_id"));
				fb.setName(rs.getString("name"));
				fb.setCategory(rs.getString("category"));
				fb.setCalorie(rs.getDouble("calorie"));
				fb.setServing_size(rs.getDouble("serving_size"));
				fb.setWater(rs.getDouble("water"));
				fb.setProtein(rs.getDouble("protein"));
				fb.setFat(rs.getDouble("fat"));
				fb.setCarbohydrate(rs.getDouble("carbohydrate"));
				fb.setSugars(rs.getDouble("sugars"));
				fb.setFiber(rs.getDouble("fiber"));
				fb.setCalcium(rs.getDouble("calcium"));
				fb.setIron(rs.getDouble("iron"));
				fb.setMagnesium(rs.getDouble("magnesium"));
				fb.setPhosphorus(rs.getDouble("phosphorus"));
				fb.setPotassium(rs.getDouble("potassium"));
				fb.setSodium(rs.getDouble("sodium"));
				fb.setZinc(rs.getDouble("zinc"));
				fb.setCopper(rs.getDouble("copper"));
				fb.setManganese(rs.getDouble("manganese"));
				fb.setSelenium(rs.getDouble("selenium"));
				
				fbList.add(fb);
			}
			rs.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}	
		return fbList;
	}

}
