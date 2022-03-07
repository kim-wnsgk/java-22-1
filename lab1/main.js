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

vitamins.push(makeObject('Biotin', '• Energy storage\n• Protein, carbohydrate, and fat metabolism', '• Avocados\n• Cauliflower\n• Eggs\n• Fruits (e.g., raspberries)\n• Liver\n• Pork\n• Salmon\n• Whole grains', '30 mcg'))
vitamins.push(makeObject('Choline','• Brain development \n• Cell signaling\n• Lipid (fat) transport and metabolism\n• Liver function\n• Muscle movement\n• Nerve function\n• Normal metabolism', '• Beans and peas\n• Egg yolks\n• Fish (e.g., cod and salmon)\n• Liver (e.g., beef and chicken)\n• Milk\n• Nuts\n• Salmon\n• Soy foods\n• Vegetables (e.g., broccoli, cauliflower, spinach)','550 mg'))
vitamins.push(makeObject('Folate/Folic Acid', '• Prevention of birth defects\n• Protein metabolism \n• Red blood cell formation', '• Asparagus\n• Avocados\n• Beans and peas\n• Enriched grain products (e.g., bread, cereal, pasta, rice)\n• Green leafy vegetables (e.g., spinach)\n• Oranges and orange juice', '400 mcg DFE**'))
vitamins.push(makeObject('Niacin'))


alert(vitamins[0].name);