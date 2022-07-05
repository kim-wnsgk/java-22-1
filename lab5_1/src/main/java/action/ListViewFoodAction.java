package action;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.FoodDaoImpl;
import dto.FoodBean;

public class ListViewFoodAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String mode = request.getParameter("mode");

		FoodDaoImpl dao = null;
		try {
			dao = new FoodDaoImpl();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}       
        List<FoodBean> fbList = dao.selectList();      		
        request.setAttribute("bmiList", fbList);		
        request.setAttribute("mode", mode);		


	}
}
