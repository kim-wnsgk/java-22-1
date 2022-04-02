package dao;
import java.util.*;

import dto.FoodBean;

public class FoodParser {
	private List<FoodBean> data = null;

	private static FoodParser instance = new FoodParser();
	public static FoodParser getInstance(){
		return instance;
	}
	
	public FoodParser() {
		this.data = new ArrayList<FoodBean>();
	}
	
	// get
	public FoodBean get(int index){
		return this.data.get(index);
	}
	
	// getList
	public List<FoodBean> getList() {
		return this.data;
	}

	// add 
	public void add(FoodBean food) {
		this.data.add(food);
	}
	
	// addList
	public void addList(List<FoodBean> list) {
		this.data = list;
	}
	
	// insert
	void insert(int index, FoodBean data){
		this.data.add(index, data);
	}	

	// remove 
	public void remove(FoodBean other) {
		Iterator<FoodBean> it = this.data.iterator();
		while (it.hasNext()) {
			FoodBean p = it.next();
		    if (p == other) {
				it.remove();
		    }
		}
	}
	
	// remove all 
	public void removeAll() {
		this.data.clear();
	}
	
	// get (by name)
	public FoodBean find(String name) {
		FoodBean person = null;
		for (FoodBean p : this.data) {
			if (p != null && p.getName().equals(name)) {
				person = p;
				break;
			}
		}
		return person;
	}

	// replace
	public void replace(String name, FoodBean other) {
		int index = this.data.indexOf(find(name));
		this.data.set(index, other);
	}

}
