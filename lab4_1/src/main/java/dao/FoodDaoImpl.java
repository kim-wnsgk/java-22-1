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
		String sample_id = bean.getSample_id();
		String name =  bean.getName();
		String category =  bean.getCategory();
		double calorie =  bean.getCalorie();
		double serving_size =  bean.getServing_size();
		double water =  bean.getWater();
		double protein =  bean.getProtein();
		double fat =  bean.getFat();
		double carbohydrate =  bean.getCarbohydrate();
		double sugars =  bean.getSugars();
		double fiber =  bean.getFiber();
		double calcium =  bean.getCalcium();
		double iron =  bean.getIron();
		double magnesium =  bean.getMagnesium();
		double phosphorus =  bean.getPhosphorus();
		double potassium =  bean.getPotassium();
		double sodium =  bean.getSodium();
		double zinc =  bean.getZinc();
		double copper =  bean.getCopper();
		double manganese =  bean.getManganese();
		double selenium =  bean.getSelenium();
		
		String command = "INSERT INTO mfdsfood VALUES ('"+sample_id+"', '"+name+"', '"+category+"', '"+calorie+"', '"+serving_size+"', '"+water+"', '"+protein+"', '"+fat+"', '"+carbohydrate+"', '"+sugars+"', '"+fiber+"', '"+calcium+"', '"+iron+"', '"+magnesium+"', '"+phosphorus+"', '"+potassium+"', '"+sodium+"', '"+zinc+"', '"+copper+"', '"+manganese+"', '"+selenium+"');\r\n";
		int ret = 0;
		try {
			ret = stmt.executeUpdate(command);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ret;
	}

	@Override
	public int delete(String id) {
		String command = "DELETE from mfdsfood where sample_id='" + id + "'";
		int ret = 0;
		try {
			ret = stmt.executeUpdate(command);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ret;
	}

	@Override
	public int edit(FoodBean bean) {
		String sample_id = bean.getSample_id();
		String name =  bean.getName();
		String category =  bean.getCategory();
		double calorie =  bean.getCalorie();
		double serving_size =  bean.getServing_size();
		double water =  bean.getWater();
		double protein =  bean.getProtein();
		double fat =  bean.getFat();
		double carbohydrate =  bean.getCarbohydrate();
		double sugars =  bean.getSugars();
		double fiber =  bean.getFiber();
		double calcium =  bean.getCalcium();
		double iron =  bean.getIron();
		double magnesium =  bean.getMagnesium();
		double phosphorus =  bean.getPhosphorus();
		double potassium =  bean.getPotassium();
		double sodium =  bean.getSodium();
		double zinc =  bean.getZinc();
		double copper =  bean.getCopper();
		double manganese =  bean.getManganese();
		double selenium =  bean.getSelenium();
		
		String command = "UPDATE mfdsfood set sample_id='"+sample_id+"', name='"+name+"', category='"+category+"', calorie='"+calorie+"', serving_size='"+serving_size+"', water='"+water+"', protein='"+protein+"', fat='"+fat+"', carbohydrate='"+carbohydrate+"', sugars='"+sugars+"', fiber='"+fiber+"', calcium='"+calcium+"', iron='"+iron+"', magnesium='"+magnesium+"', phosphorus='"+phosphorus+"', potassium='"+potassium+"', sodium='"+sodium+"', magnesium='"+magnesium+"', zinc='"+zinc+"', copper='"+copper+"', manganese='"+manganese+"', selenium='"+selenium+"' where sample_id='"+sample_id+"'";
		int ret = 0;
		try {
			ret = stmt.executeUpdate(command);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ret;
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
