package dao;

import java.util.List;

public interface Parser<FoodBean> {
	abstract dto.FoodBean parse(List<String> list);  // String으로만 이루어져 있는 리스트들의 데이터 타입을 파싱
}
