give @s stick[\
    item_name=[\
        {text:"Sunflower",color:yellow}\
    ],lore=[\
        {text:"SUPPORT PLANT",color:yellow,italic:false,bold:true},\
        [{text:"Cost: ",color:white,italic:false},{text:"50 Sun",color:yellow,italic:false}],\
        [{text:"Recharge: ",color:white,italic:false},{text:"Fast",color:green,italic:false}],\
        [{text:"Sun Production: ",color:white,italic:false},{text:"Normal",color:yellow,italic:false}],\
        {text:""},\
        {text:"Generates 25 sun every couple seconds.",color:white,italic:false},\
        {text:""},\
        {text:"Sunflower can't resist bouncing to the beat. Which beat is that?",color:"gray",italic:false},\
        {text:"Why, the life-giving jazzy rhythm of the Earth itself, thumping",color:"gray",italic:false},\
        {text:"at a frequency only Sunflower can hear.",color:"gray",italic:false},\
    ],custom_data={\
        bag:1b,\
        placeable:1b,\
        water_type:0b,\
        ground:0b,\
        id:2,\
        plant:"sunflower",\
        cooldown:1b,\
        sun_cost:50\
    },item_model="bags:blueprint/sunflower",\
    max_stack_size=1,\
    max_damage=150,damage=150,\
    consumable={consume_seconds:999999}\
]