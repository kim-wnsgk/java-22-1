<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%!
public class Food{
	String name;
	String kName;
	double energy;
	double water;
	double protein;
	double fat;
	double carbo;
	double sugar;
	double jadang;
	double pododang;
	double gwadang;
	double yudang;
	double mdang;
	double fiber;
	
	public Food(String name, String kName, double energy, double water, double protein, double fat,
			double carbo, double sugar, double jadang, double pododang,
			double gwadang, double yudang, double mdang, double fiber){
		this.name = name;
		this.kName = kName;  // 한글 식품명
		this.energy = energy;  // 에너지(kcal)
		this.water = water;  // 수분(g)
		this.protein = protein;  // 단백질(g)
		this.fat = fat;  // 지방(g)
		this.carbo = carbo;  // 탄수화물(g)
		this.sugar = sugar;  // 총당류(g)
		this.jadang = jadang;  // 자당(g)
		this.pododang = pododang;  // 포도당(g)
		this.gwadang = gwadang;  // 과당(g)
		this.yudang = yudang;  // 유당(g)
		this.mdang = mdang;  // 맥아당(g)
		this.fiber = fiber;  // 총 식이섬유(g)
	}
	
	public String getName(){
		return this.name;
	}
}

public class FoodManager {
	private List<Food> list = new ArrayList<>();
	
	public FoodManager() {
		list.add(new Food("a", "꿩불고기", 368.8, 412.6, 33.5, 8.5, 39.7, 16.9, 7.2, 2.8, 2.8, 0.7, 3.5, 9.8));
		list.add(new Food("b", "닭갈비", 595.61, 276.4, 45.9, 25.8, 44.9, 21.2, 3.6, 5.9, 4.8, 0, 6.9, 11.6));
		list.add(new Food("c", "닭꼬치", 176.7, 35.3, 11.5, 8.5, 13.3, 3.1, 0.1, 0.8, 1.6, 0, 0.5, 2.1));
		list.add(new Food("d", "더덕구이", 184, 8.1, 3.1, 5.2, 31.1, 11.6, 2.2, 2.7, 1.5, 0, 5.1, 6.8));
		list.add(new Food("e", "도미구이", 397, 163.3, 61.1, 16.5, 2.1, 0, 0, 0, 0, 0, 0, 5.9));
		list.add(new Food("f", "돼지갈비", 240.32, 56.3, 19.5, 14.4, 8.1, 4.5, 2.5, 0.6, 0.6, 0, 0.9, 0.3));
		list.add(new Food("g", "병어구이", 488, 157.7, 54.6, 30.8, 0.2, 0, 0, 0, 0, 0, 0, 0.7));
		list.add(new Food("h", "불고기", 395.29, 80.1, 34.4, 25.2, 7.8, 7.9, 7.3, 0.3, 0.3, 0, 0, 1.2));
		list.add(new Food("i", "붕장어 소금구이", 296.54, 44.3, 26, 16.2, 11.6, 0.4, 0, 0, 0.3, 0, 0, 1));
		list.add(new Food("j", "소양념 갈비구이", 989.15, 137, 60.1, 71.6, 26.2, 13.9, 5.8, 1.8, 3.5, 0, 2.8, 7.5));
		list.add(new Food("k", "양념 왕갈비", 480.81, 71.8, 27.1, 35.3, 13.7, 6.8, 5.6, 0, 0.4, 0, 0.7, 1.4));
		list.add(new Food("l", "양념 장어구이", 433.3, 76.6, 30.7, 30.5, 8.8, 4.1, 0.3, 1.1, 1.5, 0, 1.3, 1.3));
		list.add(new Food("m", "임연수 구이", 494, 156.2, 53.8, 29.4, 3.5, 0, 0, 0, 0, 0, 0, 1));
		list.add(new Food("n", "짚불구이 곰장어", 326.21, 135.1, 42.7, 16.2, 2.3, 1.2, 0, 0.2, 1, 0, 0, 8.5));

	}
	
	public List<Food> get() {
		return list;
	}
	
	// get (by name)
	public Food get(String name) {
		Food food = null;
		for (Food p : list) {
			if (p != null && p.name.equals(name)) {
				food = p;
				break;
			}
		}
		return food;
	}

}
FoodManager manager = new FoodManager();

%>

</body>
</html>