const searchList = [
  'A paper towel',
  'A toothpick',
  'mop',
  'cloth',
  'Disposable chopsticks',
  'ceramic',
  'waste',
  'Slag and Waste Removal',
  'Soil ceramic',
  'dishes',
  'Large bone',
  'shell',
  'Plastic bags',
  'Plastic wrap',
  'A4 paper',
  'paper',
  'Packaging bags',
  'Snack bag',
  'Express bag',
  'Hot lid',
  'The lid of a coffee cup',
  'The button',
  'Dry battery (mercury free)',
  'The mask',
  'Meat bones',
  'diapers',
  'pads',
  'The toilet paper',
  'The outer layer of sanitary napkin is thin plastic paper',
  'Wet paper towels',
  'The old bath crock',
  'basin',
  'Old sink',
  'condoms',
  'Ice sticks',
  'Ice bag',
  'Pen bag',
  'The bone',
  'shell',
  'Anti-condensation agent',
  'firecrackers',
  'Post-it notes',
  'The label',
  'Ice cream bag',
  'Ice stick',
  'The nasal stick',
  'The cup',
  'toilet paper',
  'Woven bag',
  'Cutting board',
  'Tea bag',
  'Vinegar package',
  'tape',
  'The draft paper',
  'ruler',
  'kitchen paper',
  'The teapot',
  'The tea bag',
  'Plant ash',
  'colored clay',
  'Porcelain pieces',
  'Hamster sand mat',
  'Broken ceramics',
  'mat',
  'Catering Takeaway Paper',
  'Cake bags',
  'The cake box',
  'straw',
  'Tag',
  'Staples',
  'pin',
  'CD',
  'card',
  'sponge',
  'Hair spray',
  'Discarded paper',
  'dry ice',
  'hay',
  'pen',
  'Solid glue',
  'sponge',
  'Flower mud',
  'Activated carbon',
  'wig',
  'Chicken feathers',
  'Capsule coffee',
  'metal',
  'Paper roll',
  'mirror',
  'Lipstick',
  'chewing gum',
  'basketball',
  'Durian Shell',
  'Cereals and processed foods',
  'Meat, eggs and processed foods',
  'Aquatic products and processed foods',
  'vegetables',
  'Sauce',
  'Leftovers',
  'Hot pot soup base',
  'fish bone',
  'Broken bones',
  'Tea dregs',
  'Coffee grounds',
  'Chinese medicine dregs',
  'expired food',
  'cake',
  'candy',
  'Air-dried food',
  'Powdered food',
  'Pet feed',
  'Melon peel and core',
  'Fruit pulp',
  'Fruit peel',
  'Fruit stems',
  'fruit',
  'Flower plant',
  'Domestic green plants',
  'flowers',
  'petal',
  'branches and leaves',
  'Porridge',
  'White tea',
  'pineapple',
  'Barbecued pork',
  'herb',
  'insect',
  'Vegetable leaf',
  'Vegetable leaves',
  'leftovers',
  'peels',
  'egg shells',
  'egg shells',
  'bones',
  'animal organs',
  'fish scales',
  'leaves',
  'weeds',
  'Food waste',
  'Cereals and processed foods',
  'Rice',
  'noodles',
  'bread',
  'beans',
  'Chicken',
  'duck',
  'pig',
  'lamb',
  'egg',
  'animal offal',
  'bacon',
  'luncheon meat',
  'eggshell',
  'aquatic products',
  'processed foods',
  'fish',
  'fish scales',
  'shrimp,',
  'shrimp shells',
  'squid',
  'vegetables',
  'green leafy vegetables',
  'root vegetables',
  'Mushrooms',
  'seasonings',
  'sauces',
  'Leftovers leftovers',
  'fish bones',
  'broken bones',
  'tea grounds',
  'coffee grounds',
  'Expired foods',
  'Expired foods',
  'pastries',
  'candies',
  'dried foods',
  'Flower plants',
  'domestic green plants',
  'flowers, petals',
  'branches and leaves',
  'Chinese medicine dregs',
  'domestic green plants',
  'flowers',
  'petals',
  'Cucumber peel',
  'Dragon fruit',
  'peanut',
  'sweet potato',
  'Red dates',
  'ravioli',
  'chicken',
  'Enoki mushroom',
  'Bitter gourd',
  'mouse',
  'Plum',
  'newspaper',
  'Copy paper',
  'leaflets',
  'envelope',
  'cardboard',
  'Wrapping paper',
  'Kraft paper',
  'carton',
  'Tissue box',
  'Snack box',
  'milk carton',
  'Drink box',
  'Ice cream box',
  'Plastic bottles',
  'bottles',
  'Water bottles',
  'yogurt cup',
  'Soft bucket',
  'Plastic bags',
  'Plastic wrap',
  'Plastic foam',
  'Plastic stationery',
  'Plastic toys',
  'glass',
  'Glass bottle',
  'Glass products',
  'metal',
  'cans',
  'Metal bottle',
  'Metal cup',
  'Metal products',
  'Metal cabinet',
  'sofa',
  'table',
  'belt',
  'chair',
  'computer',
  'host',
  'Canned food',
  'School bag',
  'Perfume bottles',
  'shoes',
  'handbag',
  'toys',
  'pots',
  'barrel',
  'caps',
  'umbrella',
  'lock',
  'Advertising paper',
  'clothes',
  'tablecloth',
  'Plastic packaging',
  'Abandoned vehicles',
  'light bulb',
  'ashtray',
  'furniture',
  'Artificial flowers',
  'compass',
  'candle',
  'tire',
  'headset',
  'socks',
  'Bamboo stick',
  'Metal stick',
  'card',
  'Floor tile',
  'Express box',
  'Tin foil',
  'Waste electronic products',
  'insoles',
  'bank card',
  'hair dryer',
  'scissors',
  'knife',
  'mouse',
  'socket',
  'wire',
  'wood',
  'screen',
  'filter',
  'Hold pillow',
  'phone',
  'bicycle',
  'Aluminum foil',
  'Rice cooker',
  'sheets',
  'Water pipe',
  'camera',
  'Cosmetics bottles',
  'battery',
  'Rechargeable batteries',
  'phone batteries',
  'waste bottle',
  'waste fluorescent tubes',
  'waste mercury thermometer',
  'waste mercury blood pressure monitor',
  'Expired medicines',
  'paint',
  'pesticide',
  'pesticides',
  'Energy-saving lamps',
  'paint bucket',
  'Nickel cadmium battery',
  'alcohol',
  'Medical cotton swabs',
  'Medical gloves',
  'Medical gauze',
  'Medical items',
  'syringe',
  'Abandoned the light bulb',
  'Quick lime',
  'Film negatives',
  'Neutral pen',
  'The waste mineral oil',
  'film',
  'Industrial glue',
  'cement',
  'resin',
  'pigment',
  'Paint tube',
  'Hair dye',
  'cartridge',
  'Drum unit',
  'Nail polish',
  'Nail polish bottle',
  'plaster',
  'The bottle',
  'The needle',
  'cylinder',
  'packaging',
  'Disposable syringe',
  'Open plug dew',
  'Open plug dew',
  'Oral liquid',
  'Fluorescent lamp',
  'Rat poison',
  ' X-ray',
  'Eye drops',
  'video',
  'producing',
  'capsule',
  'Calcium tablet',
  'Health care products',
  'disinfectant',
  'Disinfectant bottle',
  'Disinfectant packing',
  'Waste cosmetics',
  'solvent',
  'Waste film',
  'Waste rechargeable battery',
  'Waste button batteries',
  'Mineral oil containers',
  'Pesticide container',
  'The paint bucket',
  'Pesticide container',
  'Fast food lunch box',
];
