package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import dto.FoodBean;
import jdbc.ConnectionProvider;

public class FoodDaoImpl implements FoodDao {

	Connection conn = ConnectionProvider.getConnection();
	Statement stmt = null;
	
	@Override
	public int insert(FoodBean bean) {
		String command = "INSERT INTO mfdsfood VALUES ('getSampleId()', 'getName()', 'getCategory()', 'getCalorie()', 'getWater()', 'getProtein()', 'getFat()', 'getCarbohydrate()', 'getSugars()', 'getFiber()', 'getCalcium()', 'getIron()', 'getMagnesium()', 'getPhosphorus()', 'getPotassium()', 'getSodium()', 'getZinc()', 'getCopper()', 'getManganese()', 'getSelenium()');\r\n";
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
		String command = "DELETE from mfdsfood where sampleId='" + id + "'";
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
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public FoodBean select(String id) {
		String sql = "SELECT * FROM mfdsfood WHERE sampleId='" + id + "'";
		ResultSet rs;
		try {
			FoodBean fb = new FoodBean();
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				//Retrieve by column name
				String name  = rs.getString("name");
				String owner  = rs.getString("owner");
				String species  = rs.getString("species");
				String gender = rs.getString("gender");
				Date birth = rs.getDate("birth");
				Date death = rs.getDate("death");

				//Display values
				System.out.print("name: " + name);
				System.out.print(", owner: " + owner);
				System.out.print(", species: " + species);
				System.out.print(", sex: " + gender);
				System.out.print(", birth: " + birth);
				System.out.println(", death: " + death);
			}
			System.out.println("end of rs..");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
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
