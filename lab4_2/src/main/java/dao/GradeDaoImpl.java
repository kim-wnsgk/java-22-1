package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import dto.GradeBean;
import jdbc.ConnectionProvider;

public class GradeDaoImpl implements GradeDao {
	Connection conn = ConnectionProvider.getConnection();
	Statement stmt = null;
	
	public GradeDaoImpl() throws SQLException {
		this.stmt = conn.createStatement();
	}

	@Override
	public int construct() {
		String command = "CREATE TABLE grade (id VARCHAR(20), name VARCHAR(20), major VARCHAR(20), grade DOUBLE, age DOUBLE)";
		int ret = 0;
		try {
			ret = stmt.executeUpdate(command);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ret;
	}
	
	
	@Override
	public int insert(GradeBean bean) {
		String id = bean.getId();
		String name =  bean.getName();
		String major =  bean.getMajor();
		double grade =  bean.getGrade();
		double age =  bean.getAge();
		
		
		String command = "INSERT INTO grade VALUES ('"+id+"', '"+name+"', '"+major+"', '"+grade+"', '"+age+"');\r\n";
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
		String command = "DELETE from grade where id='" + id + "'";
		int ret = 0;
		try {
			ret = stmt.executeUpdate(command);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ret;
	}

	@Override
	public int edit(GradeBean bean) {
		String id = bean.getId();
		String name =  bean.getName();
		String major =  bean.getMajor();
		double grade =  bean.getGrade();
		double age =  bean.getAge();
		
		String command = "UPDATE grade set id='"+id+"', name='"+name+"', major='"+major+"', grade='"+grade+"', age='"+age+"' WHERE id='"+id+"'";
		int ret = 0;
		try {
			ret = stmt.executeUpdate(command);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ret;
	}

	@Override
	public GradeBean select(String id) {
		String sql = "SELECT * FROM grade where id='" + id + "'";
		ResultSet rs;
		GradeBean gb = new GradeBean();
		try {	
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				gb.setId(rs.getString("id"));
				gb.setName(rs.getString("name"));
				gb.setMajor(rs.getString("major"));
				gb.setGrade(rs.getDouble("grade"));
				gb.setAge(rs.getDouble("age"));
				
			}
			
			rs.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}	
		return gb;
	}

	@Override
	public List<GradeBean> selectList() {
		String sql = "SELECT * FROM grade;";
		ResultSet rs;
		List<GradeBean> fbList = new ArrayList<>();
		try {
			rs = stmt.executeQuery(sql);

			while(rs.next()) {
				GradeBean gb = new GradeBean();
				gb.setId(rs.getString("id"));
				gb.setName(rs.getString("name"));
				gb.setMajor(rs.getString("major"));
				gb.setGrade(rs.getDouble("grade"));
				gb.setAge(rs.getDouble("age"));
				
				fbList.add(gb);				
			}
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		};

		return fbList;
	}


}
