give @s stick[\
    item_name=[\
        {text:"Potato Mine",color:yellow}\
    ],lore=[\
        {text:"GROUND PLANT",color:"dark_gray",italic:false,bold:true},\
        [{text:"Cost: ",color:white,italic:false},{text:"25 Sun",color:yellow,italic:false}],\
        [{text:"Recharge: ",color:white,italic:false},{text:"Slow",color:red,italic:false}],\
        [{text:"Damage: ",color:white,italic:false},{text:"Massive",color:dark_red,italic:false}],\
        [{text:"Range: ",color:white,italic:false},{text:"1x1",color:yellow,italic:false}],\
        [{text:"Usage: ",color:white,italic:false},{text:"Single use, delayed activation",color:yellow,italic:false}],\
        {text:""},\
        {text:"After some time it gets armed, and will explode on contact.",color:white,italic:false},\
        {text:""},\
        {text:"Some folks say Potato Mine is lazy, that he leaves everything to the",color:"gray",italic:false},\
        {text:"last minute. Potato Mine says nothing. He's too busy thinking about",color:"gray",italic:false},\
        {text:"his investment strategy.",color:"gray",italic:false},\
    ],custom_data={\
        bag:1b,\
        placeable:1b,\
        water_type:0b,\
        ground:1b,\
        id:5,\
        plant:"potato_mine",\
        cooldown:1b,\
        sun_cost:25\
    },item_model="bags:blueprint/potato_mine",\
    max_stack_size=1,\
    max_damage=150,damage=150,\
    consumable={consume_seconds:999999}\
]