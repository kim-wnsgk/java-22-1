package action;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.FoodDaoImpl;

public class DeleteFoodAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("sample_id");
		
		FoodDaoImpl fdImpl = null;
		try {
			fdImpl = new FoodDaoImpl();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		fdImpl.delete(id);
	}

}
