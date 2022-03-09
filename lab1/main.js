function makeObject(name, does, found, value) {
    var object = {
        'name' : name,
        'does' : does,
        'found' : found,
        'value' : value
    };
    return object;
}

const vitamins = []; // vitamins object
const minerals = [];  // minerals object

vitamins.push(makeObject('Biotin', '• Energy storage<br/>• Protein, carbohydrate, and fat metabolism', '• Avocados<br/>• Cauliflower<br/>• Eggs<br/>• Fruits (e.g., raspberries)<br/>• Liver<br/>• Pork<br/>• Salmon<br/>• Whole grains', '30 mcg'));
vitamins.push(makeObject('Choline','• Brain development <br/>• Cell signaling<br/>• Lipid (fat) transport and metabolism<br/>• Liver function<br/>• Muscle movement<br/>• Nerve function<br/>• Normal metabolism', '• Beans and peas<br/>• Egg yolks<br/>• Fish (e.g., cod and salmon)<br/>• Liver (e.g., beef and chicken)<br/>• Milk<br/>• Nuts<br/>• Salmon<br/>• Soy foods<br/>• Vegetables (e.g., broccoli, cauliflower, spinach)','550 mg'));
vitamins.push(makeObject('Folate/Folic Acid', '• Prevention of birth defects<br/>• Protein metabolism <br/>• Red blood cell formation', '• Asparagus<br/>• Avocados<br/>• Beans and peas<br/>• Enriched grain products (e.g., bread, cereal, pasta, rice)<br/>• Green leafy vegetables (e.g., spinach)<br/>• Oranges and orange juice', '400 mcg DFE**'));
vitamins.push(makeObject('Niacin', '• Cholesterol production<br/>• Conversio<br/>n of food into energy<br/>• Digestion<br/>• Nervous system function','• Beans<br/>• Beef <br/>• Enriched grain products (e.g., bread, cereal, pasta, rice)<br/>• Nuts<br/>• Pork<br/>• Poultry<br/>• Seafood<br/>• Whole grains','16 mg**'));
vitamins.push(makeObject('Pantothenic Acid','• Conversion of food into energy• Fat metabolism<br/>• Hormone production<br/>• Nervous system function <br/>• Red blood cell formation','• Avocados<br/>• Beans and peas<br/>• Broccoli <br/>• Eggs<br/>• Milk<br/>• Mushrooms<br/>• Poultry<br/>• Seafood<br/>• Sweet potatoes<br/>• Whole grains<br/>• Yogurt','5 mg'));
vitamins.push(makeObject('Riboflavin','• Conversion of food into energy<br/>• Growth and development<br/>• Red blood cell formation','• Eggs<br/>• Enriched grain products (e.g., bread, cereal, pasta, rice)<br/>• Meat<br/>• Milk<br/>• Mushrooms<br/>• Poultry <br/>• Seafood (e.g., oysters)<br/>• Spinach','1.3 mg'));
vitamins.push(makeObject('Thiamin','• Conversion of food into energy<br/>• Nervous system function','• Beans and peas<br/>• Enriched grain products (e.g., bread, cereal, pasta, rice)<br/>• Nuts <br/>• Pork<br/>• Sunflower seeds<br/>• Whole grains','1.2 mg'));
vitamins.push(makeObject('Vitamin A','• Growth and development<br/>• Immune function<br/>• Red blood cell formation<br/>• Reproduction<br/>• Skin and bone formation<br/>• Vision','• Cantaloupe<br/>• Carrots<br/>• Dairy products<br/>• Eggs<br/>• Fortified cereals <br/>• Green leafy vegetables (e.g., spinach and broccoli)<br/>• Pumpkin<br/>• Red peppers <br/>• Sweet potatoes','900 mcg**'));
vitamins.push(makeObject('Vitamin B6','• Immune function<br/>• Nervous system function<br/>• Protein, carbohydrate, and fat metabolism<br/>• Red blood cell formation','• Chickpeas<br/>• Fruits (other than citrus)<br/>• Potatoes<br/>• Salmon<br/>• Tuna','1.7 mg'));
vitamins.push(makeObject('Vitamin B12','• Conversion of food into energy<br/>• Nervous system function <br/>• Red blood cell formation','• Dairy products<br/>• Eggs<br/>• Fortified cereals<br/>• Meat<br/>• Poultry <br/>• Seafood (e.g., clams, trout, salmon, haddock, tuna)','2.4 mcg'));
vitamins.push(makeObject('Vitamin C','• Antioxidant<br/>• Collagen and connective tissue formation <br/>• Immune function<br/>• Wound healing','• Fruit (e.g., cantaloupe, citrus fruits, kiwifruit, and strawberries)<br/>• Juices (e.g., oranges, grapefruit, and tomato) <br/>• Vegetables (e.g., broccoli, Brussels sprouts, peppers, and tomatoes)','90 mg'));
vitamins.push(makeObject('Vitamin D','• Blood pressure regulation <br/>• Bone growth<br/>• Calcium balance <br/>• Hormone production<br/>• Immune function <br/>• Nervous system function','• Eggs <br/>• Fish (e.g., herring, mackerel, salmon, trout, and tuna) <br/>• Fish oil and cod liver oil<br/>• Fortified dairy products<br/>• Fortified margarine<br/>• Fortified orange juice <br/>• Fortified plant-based beverages (e.g., soy, rice, and almond)<br/>• Fortified ready-to-eat cereals <br/>• Mushrooms<br/>• Pork','20 mcg**'));
vitamins.push(makeObject('Vitamin E','• Antioxidant <br/>• Formation of blood vessels<br/>• Immune function','• Antioxidant <br/>• Formation of blood <br/>vessels<br/>• Immune function','15 mg**'));
vitamins.push(makeObject('Vitamin K','• Blood clotting <br/>• Strong bones','• Green vegetables (e.g., broccoli, kale, spinach, turnip greens, collard greens, Swiss chard, mustard greens)','120 mcg'));

minerals.push(makeObject('Calcium','• Blood clotting <br/>• Bone and teeth formation<br/>• Constriction and relaxation of blood vessels <br/>• Hormone secretion<br/>• Muscle contraction <br/>• Nervous system function','• Blood clotting <br/>• Bone and teeth formation<br/>• Constriction and relaxation of blood vessels <br/>• Hormone secretion<br/>• Muscle contraction <br/>• Nervous system function','1,300 mg'));
minerals.push(makeObject('Chloride','• Acid-base balance<br/>• Conversion of food into energy<br/>• Digestion<br/>• Fluid balance<br/>• Nervous system function','• Olives<br/>• Rye <br/>• Salt substitutes<br/>• Seaweeds (e.g., dulse and kelp) <br/>• Table salt and sea salt<br/>• Vegetables (e.g., celery, lettuce, and tomatoes)','2,300 mg'));
minerals.push(makeObject('Chromium','• Insulin function<br/>• Protein, carbohydrate, and fat metabolism','• Broccoli<br/>• Fruits (e.g., apples and bananas)<br/>• Juices (e.g., grape and orange)<br/>• Meat <br/>• Spices (e.g., garlic and basil)<br/>• Turkey<br/>• Whole grains','35 mcg'));
minerals.push(makeObject('Copper','• Antioxidant <br/>• Bone formation<br/>• Collagen and connective tissue formation <br/>• Energy production<br/>• Iron metabolism<br/>• Nervous system function','• Chocolate and cocoa<br/>• Crustaceans and shellfish<br/>• Lentils<br/>• Nuts and seeds <br/>• Organ meats (e.g., liver)<br/>• Whole grains','0.9 mg'));
minerals.push(makeObject('Iodine','• Growth and development<br/>• Metabolism<br/>• Reproduction<br/>• Thyroid hormone production','• Breads and cereals<br/>• Dairy products<br/>• Iodized salt<br/>• Potatoes<br/>• Seafood<br/>• Seaweed<br/>• Turkey','150 mcg'));
minerals.push(makeObject('Iron','• Energy production<br/>• Growth and development<br/>• Immune function<br/>• Red blood cell formation<br/>• Reproduction<br/>• Wound healing','• Beans<br/>• Eggs<br/>• Fruits (e.g., raisins and prunes) <br/>• Green vegetables (e.g., spinach, kale, broccoli, and collard greens) <br/>• Meat<br/>• Nuts<br/>• Organ meats (e.g., liver)<br/>• Peas<br/>• Poultry<br/>• Seafood (e.g., tuna, sardines, haddock, shrimp, and oysters)<br/>• Seeds<br/>• Soy products (e.g., tofu)<br/>• Whole grain, enriched, and fortified breads, cereals, pasta, and rice','18 mg'));
minerals.push(makeObject('Magnesium','• Blood pressure regulation<br/>• Blood sugar regulation<br/>• Bone formation<br/>• Energy production <br/>• Hormone secretion<br/>• Immune function<br/>• Muscle contraction<br/>• Nervous system function <br/>• Normal heart rhythm<br/>• Protein formation','• Avocados<br/>• Beans and peas<br/>• Dairy products<br/>• Fruits (e.g., bananas and raisins)<br/>• Green leafy vegetables (e.g.,spinach)<br/>• Nuts and pumpkin seeds<br/>• Potatoes<br/>• Whole grains','420 mg'));
minerals.push(makeObject('Manganese','• Carbohydrate, protein, and cholesterol metabolism\m• Cartilage and bone formation\m• Wound healing ','• Beans<br/>• Nuts<br/>• Pineapple<br/>• Spinach<br/>• Sweet potato<br/>• Whole grains','2.3 mg'));
minerals.push(makeObject('Molybdenum','• Enzyme production','• Beans and peas<br/>• Nuts<br/>• Whole grains','45 mcg'));
minerals.push(makeObject('Phosphorus','• Acid-base balance<br/>• Bone formation<br/>• Energy production and storage<br/>• Hormone activation','• Beans and peas<br/>• Dairy products<br/>• Meat<br/>• Nuts and seeds<br/>• Poultry<br/>• Seafood<br/>• Whole grain, enriched, and fortified cereals and breads','1,250 mg'));
minerals.push(makeObject('Potassium','• Blood pressure regulation<br/>• Carbohydrate metabolism<br/>• Fluid balance<br/>• Growth and development<br/>• Heart function<br/>• Muscle contraction<br/>• Nervous system function<br/>• Protein formation','• Beans<br/>• Dairy products (e.g., milk and yogurt)<br/>• Fruits (e.g., bananas, dried apricots, and stewed prunes) <br/>• Juices (e.g., carrot and other vegetable juices, orange, pomegranate, and prune) <br/>• Seafood (e.g., clams and salmon)<br/>• Tomato products<br/>• Vegetables (e.g., potatoes, sweet potatoes, beet greens, and spinach)','4,700 mg'));
minerals.push(makeObject('Selenium','• Antioxidant<br/>• Immune function<br/>• Reproduction<br/>• Thyroid function','• Eggs <br/>• Enriched pasta and rice<br/>• Meat<br/>• Nuts (e.g., Brazil nuts) and seeds<br/>• Poultry<br/>• Seafood<br/>• Whole grains','55 mcg'));
minerals.push(makeObject('Sodium','• Acid-base balance<br/>• Blood pressure regulation<br/>• Fluid balance<br/>• Muscle contraction<br/>• Nervous system function','• Breads and rolls <br/>• Burritos and tacos<br/>• Cheese<br/>• Chicken<br/>• Cold cuts and cured meats <br/>• Egg dishes and omelets<br/>• Pizza<br/>• Sandwiches (e.g., hamburgers, hot dogs, and submarine sandwiches)<br/>• Snack foods (e.g., chips, crackers, microwave popcorn, and pretzels)<br/>• Soups','2,300 mg'));
minerals.push(makeObject('Zinc','• Growth and development <br/>• Immune function <br/>• Nervous system function<br/>• Protein formation <br/>• Reproduction<br/>• Taste and smell<br/>• Wound healing','• Beans and peas<br/>• Beef<br/>• Dairy products<br/>• Fortified cereals <br/>• Nuts<br/>• Poultry <br/>• Shellfish <br/>• Whole grains','11 mg'));


const vitaminsButton = document.querySelector("#vitamins-button");
const mineralsButton = document.querySelector("#minerals-button");


const content0 = document.querySelector(".zero");
const content1 = document.querySelector(".one");
const content2 = document.querySelector(".two");
const content3 = document.querySelector(".three");
const content4 = document.querySelector(".four");
const content5 = document.querySelector(".five");
const content6 = document.querySelector(".six");
const content7 = document.querySelector(".seven");
const content8 = document.querySelector(".eight");
const content9 = document.querySelector(".nine");
const content10 = document.querySelector(".ten");
const content11 = document.querySelector(".eleven");
const content12 = document.querySelector(".twelve");
const content13 = document.querySelector(".thirteen");

const select = document.querySelector("#select");
const contents = document.querySelector("#contents");

let selectedContent;
let selectedName; // 선택될 것의 이름.

vitaminsButton.addEventListener("click", function(){  // vitamins 버튼 눌렸을 시
    select.style.display = "block";  // 보이게
    selectedContent = vitamins;
    mineralsButton.style.textDecoration = 'none';
    vitaminsButton.style.textDecoration = 'underline';

    content0.innerHTML = selectedContent[0].name; content1.innerHTML = selectedContent[1].name; 
    content2.innerHTML = selectedContent[2].name; content3.innerHTML = selectedContent[3].name; 
    content4.innerHTML = selectedContent[4].name; content5.innerHTML = selectedContent[5].name;
    content6.innerHTML = selectedContent[6].name; content7.innerHTML = selectedContent[7].name; 
    content8.innerHTML = selectedContent[8].name; content9.innerHTML = selectedContent[9].name; 
    content10.innerHTML = selectedContent[10].name; content11.innerHTML = selectedContent[11].name;
    content12.innerHTML = selectedContent[12].name; content13.innerHTML = selectedContent[13].name;
});  
mineralsButton.addEventListener("click", function(){  // minerals 버튼 눌렸을 시
    select.style.display = "block";  // 보이게
    selectedContent = minerals;
    vitaminsButton.style.textDecoration = 'none';
    mineralsButton.style.textDecoration = 'underline';

    content0.innerHTML = selectedContent[0].name; content1.innerHTML = selectedContent[1].name; 
    content2.innerHTML = selectedContent[2].name; content3.innerHTML = selectedContent[3].name; 
    content4.innerHTML = selectedContent[4].name; content5.innerHTML = selectedContent[5].name;
    content6.innerHTML = selectedContent[6].name; content7.innerHTML = selectedContent[7].name; 
    content8.innerHTML = selectedContent[8].name; content9.innerHTML = selectedContent[9].name; 
    content10.innerHTML = selectedContent[10].name; content11.innerHTML = selectedContent[11].name;
    content12.innerHTML = selectedContent[12].name; content13.innerHTML = selectedContent[13].name;
});

const names = document.querySelector('.name');
const doess = document.querySelector('.does');
const founds = document.querySelector('.found');
const values = document.querySelector('.value');

content0.addEventListener("click", function(){
    contents.style.display = "block";  // 보이게
    names.innerHTML = selectedContent[0].name;
    doess.innerHTML = selectedContent[0].does;
    founds.innerHTML = selectedContent[0].found;
    values.innerHTML = selectedContent[0].value;
});
content1.addEventListener("click", function(){
    contents.style.display = "block";  // 보이게
    names.innerHTML = selectedContent[1].name;
    doess.innerHTML = selectedContent[1].does;
    founds.innerHTML = selectedContent[1].found;
    values.innerHTML = selectedContent[1].value;
});
content2.addEventListener("click", function(){
    contents.style.display = "block";  // 보이게
    names.innerHTML = selectedContent[2].name;
    doess.innerHTML = selectedContent[2].does;
    founds.innerHTML = selectedContent[2].found;
    values.innerHTML = selectedContent[2].value;
});
content3.addEventListener("click", function(){
    contents.style.display = "block";  // 보이게
    names.innerHTML = selectedContent[3].name;
    doess.innerHTML = selectedContent[3].does;
    founds.innerHTML = selectedContent[3].found;
    values.innerHTML = selectedContent[3].value;
});
content4.addEventListener("click", function(){
    contents.style.display = "block";  // 보이게
    names.innerHTML = selectedContent[4].name;
    doess.innerHTML = selectedContent[4].does;
    founds.innerHTML = selectedContent[4].found;
    values.innerHTML = selectedContent[4].value;
});
content5.addEventListener("click", function(){
    contents.style.display = "block";  // 보이게
    names.innerHTML = selectedContent[5].name;
    doess.innerHTML = selectedContent[5].does;
    founds.innerHTML = selectedContent[5].found;
    values.innerHTML = selectedContent[5].value;
});
content6.addEventListener("click", function(){
    contents.style.display = "block";  // 보이게
    names.innerHTML = selectedContent[6].name;
    doess.innerHTML = selectedContent[6].does;
    founds.innerHTML = selectedContent[6].found;
    values.innerHTML = selectedContent[6].value;
});
content7.addEventListener("click", function(){
    contents.style.display = "block";  // 보이게
    names.innerHTML = selectedContent[7].name;
    doess.innerHTML = selectedContent[7].does;
    founds.innerHTML = selectedContent[7].found;
    values.innerHTML = selectedContent[7].value;
});
content8.addEventListener("click", function(){
    contents.style.display = "block";  // 보이게
    names.innerHTML = selectedContent[8].name;
    doess.innerHTML = selectedContent[8].does;
    founds.innerHTML = selectedContent[8].found;
    values.innerHTML = selectedContent[8].value;
});
content9.addEventListener("click", function(){
    contents.style.display = "block";  // 보이게
    names.innerHTML = selectedContent[9].name;
    doess.innerHTML = selectedContent[9].does;
    founds.innerHTML = selectedContent[9].found;
    values.innerHTML = selectedContent[9].value;
});
content10.addEventListener("click", function(){
    contents.style.display = "block";  // 보이게
    names.innerHTML = selectedContent[10].name;
    doess.innerHTML = selectedContent[10].does;
    founds.innerHTML = selectedContent[10].found;
    values.innerHTML = selectedContent[10].value;
});
content11.addEventListener("click", function(){
    contents.style.display = "block";  // 보이게
    names.innerHTML = selectedContent[11].name;
    doess.innerHTML = selectedContent[11].does;
    founds.innerHTML = selectedContent[11].found;
    values.innerHTML = selectedContent[11].value;
});
content12.addEventListener("click", function(){
    contents.style.display = "block";  // 보이게
    names.innerHTML = selectedContent[12].name;
    doess.innerHTML = selectedContent[12].does;
    founds.innerHTML = selectedContent[12].found;
    values.innerHTML = selectedContent[12].value;
});
content13.addEventListener("click", function(){
    contents.style.display = "block";  // 보이게
    names.innerHTML = selectedContent[13].name;
    doess.innerHTML = selectedContent[13].does;
    founds.innerHTML = selectedContent[13].found;
    values.innerHTML = selectedContent[13].value;
});


