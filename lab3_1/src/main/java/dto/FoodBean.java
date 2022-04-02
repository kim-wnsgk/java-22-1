package dto;

public class FoodBean {
	public String sampleId;
	protected String name;  // ½ÄÇ°¸í
	protected String category;  // ½ÄÇ°»ó¼¼ºÐ·ù
	protected int serving_size;  // Á¦°ø »çÀÌÁî
	protected double calorie;  // ¿¡³ÊÁö(kcal)
	protected double water;  // ¼öºÐ(g)
	protected double protein;  // ´Ü¹éÁú(g)
	protected double fat;  // Áö¹æ(g)
	protected double carbohydrate;  // Åº¼öÈ­¹°(g)
	protected double sugars;  // ÃÑ´ç·ù(g)
	protected double fiber;  // ÃÑ ½ÄÀÌ¼¶À¯(g)
	protected double calcium;  // Ä®½·(mg)
	protected double iron;  // Ã¶(mg)
	protected double magnesium;  // ¸¶±×³×½·(mg)
	protected double phosphorus;  // ÀÎ(mg)
	protected double potassium;  // Ä®·ý(mg)
	protected double sodium;  // ³ªÆ®·ý(mg)
	protected double zinc;  // ¾Æ¿¬(mg)
	protected double copper;  // ±¸¸®(mg)
	protected double manganese;  // ¸Á°£(mg)
	protected double selenium;  // ¼¿·¹´½(ug)
	
	
	// constructor
	public FoodBean(String sampleId, String name, String category, double calorie, double water, double protein,
			double fat, double carbohydrate, double sugars, double fiber, double calcium, double iron, double magnesium,
			double phosphorus, double potassium, double sodium, double zinc, double copper, double manganese,
			double selenium) {
		super();
		this.sampleId = sampleId;
		this.name = name;
		this.category = category;
		this.calorie = calorie;
		this.water = water;
		this.protein = protein;
		this.fat = fat;
		this.carbohydrate = carbohydrate;
		this.sugars = sugars;
		this.fiber = fiber;
		this.calcium = calcium;
		this.iron = iron;
		this.magnesium = magnesium;
		this.phosphorus = phosphorus;
		this.potassium = potassium;
		this.sodium = sodium;
		this.zinc = zinc;
		this.copper = copper;
		this.manganese = manganese;
		this.selenium = selenium;
	}
	
	
	public FoodBean() {
		// TODO Auto-generated constructor stub
	}


	// getter, setter
	public String getSampleId() {
		return sampleId;
	}
	public void setSampleId(String sampleId) {
		this.sampleId = sampleId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getServing_size() {
		return serving_size;
	}
	public void setServing_size(int serving_size) {
		this.serving_size = serving_size;
	}
	public double getCalorie() {
		return calorie;
	}
	public void setCalorie(double calorie) {
		this.calorie = calorie;
	}
	public double getWater() {
		return water;
	}
	public void setWater(double water) {
		this.water = water;
	}
	public double getProtein() {
		return protein;
	}
	public void setProtein(double protein) {
		this.protein = protein;
	}
	public double getFat() {
		return fat;
	}
	public void setFat(double fat) {
		this.fat = fat;
	}
	public double getCarbohydrate() {
		return carbohydrate;
	}
	public void setCarbohydrate(double carbohydrate) {
		this.carbohydrate = carbohydrate;
	}
	public double getSugars() {
		return sugars;
	}
	public void setSugars(double sugars) {
		this.sugars = sugars;
	}
	public double getFiber() {
		return fiber;
	}
	public void setFiber(double fiber) {
		this.fiber = fiber;
	}
	public double getCalcium() {
		return calcium;
	}
	public void setCalcium(double calcium) {
		this.calcium = calcium;
	}
	public double getIron() {
		return iron;
	}
	public void setIron(double iron) {
		this.iron = iron;
	}
	public double getMagnesium() {
		return magnesium;
	}
	public void setMagnesium(double magnesium) {
		this.magnesium = magnesium;
	}
	public double getPhosphorus() {
		return phosphorus;
	}
	public void setPhosphorus(double phosphorus) {
		this.phosphorus = phosphorus;
	}
	public double getPotassium() {
		return potassium;
	}
	public void setPotassium(double potassium) {
		this.potassium = potassium;
	}
	public double getSodium() {
		return sodium;
	}
	public void setSodium(double sodium) {
		this.sodium = sodium;
	}
	public double getZinc() {
		return zinc;
	}
	public void setZinc(double zinc) {
		this.zinc = zinc;
	}
	public double getCopper() {
		return copper;
	}
	public void setCopper(double copper) {
		this.copper = copper;
	}
	public double getManganese() {
		return manganese;
	}
	public void setManganese(double manganese) {
		this.manganese = manganese;
	}
	public double getSelenium() {
		return selenium;
	}
	public void setSelenium(double selenium) {
		this.selenium = selenium;
	}
	
	
}
