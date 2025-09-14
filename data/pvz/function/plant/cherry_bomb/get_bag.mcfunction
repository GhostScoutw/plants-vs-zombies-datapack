give @s stick[\
    item_name=[\
        {text:"Cherry Bomb",color:dark_red}\
    ],lore=[\
        {text:"INSTANT PLANT",color:"dark_red",italic:false,bold:true},\
        [{text:"Cost: ",color:white,italic:false},{text:"150 Sun",color:yellow,italic:false}],\
        [{text:"Recharge: ",color:white,italic:false},{text:"Slow",color:red,italic:false}],\
        [{text:"Damage: ",color:white,italic:false},{text:"Massive",color:dark_green,italic:false}],\
        [{text:"Range: ",color:white,italic:false},{text:"3x3",color:yellow,italic:false}],\
        [{text:"Usage: ",color:white,italic:false},{text:"Instant",color:dark_red,italic:false}],\
        {text:""},\
        {text:"Explodes all zombies in a 3x3 area.",color:white,italic:false},\
        {text:""},\
        {text:"\"I wanna explode,\" says Cherry #1. \"No, let's detonate instead!\" says",color:"gray",italic:false},\
        {text:"his brother, Cherry #2. After intense consultation they agree to explodonate.",color:"gray",italic:false},\
    ],custom_data={\
        bag:1b,\
        placeable:1b,\
        water_type:0b,\
        ground:0b,\
        id:3,\
        plant:"cherry_bomb",\
        cooldown:1b,\
        sun_cost:150\
    },item_model="bags:blueprint/cherry_bomb",\
    max_stack_size=1,\
    max_damage=150,damage=150,\
    consumable={consume_seconds:999999}\
]