package dao;

import java.util.List;

public interface Parser<FoodBean> {
	abstract dto.FoodBean parse(List<String> list);  // String���θ� �̷���� �ִ� ����Ʈ���� ������ Ÿ���� �Ľ�
}
