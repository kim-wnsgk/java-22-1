function makeObject(name, does, found, value) {
    var object = {
        'name' : name,
        'does' : does,
        'found' : found,
        'value' : value
    };
    return object;
}

const vitamins = [];
const minerals = [];

vitamins.push(makeObject('Biotin', ['Energy storage', 'Protein, carbohygrate, and fat metabolism'], ['Avocados','Avocados','Cauliflower','Eggs','Fruits (e.g., raspberries)','Liver','Pork','Salmon','Whole grains'], '30 mcg'))

alert(vitamins[0].name);