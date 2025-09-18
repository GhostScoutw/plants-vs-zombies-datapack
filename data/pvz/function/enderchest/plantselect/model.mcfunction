
function pvz:enderchest/extra/fill_empty

#sunflower
execute unless score @s player.progress matches 1.. run function pvz:enderchest/extra/locked_slot {slot:1}
#cherry
execute unless score @s player.progress matches 2.. run function pvz:enderchest/extra/locked_slot {slot:2}
#wallnut
execute unless score @s player.progress matches 3.. run function pvz:enderchest/extra/locked_slot {slot:3}
#potato_mine
execute unless score @s player.progress matches 4.. run function pvz:enderchest/extra/locked_slot {slot:4}
#snow_pea
execute unless score @s player.progress matches 5.. run function pvz:enderchest/extra/locked_slot {slot:5}
#chomper
execute unless score @s player.progress matches 6.. run function pvz:enderchest/extra/locked_slot {slot:6}
#repeater
execute unless score @s player.progress matches 7.. run function pvz:enderchest/extra/locked_slot {slot:7}

#peashooter
item replace entity @s enderchest.0 with stick[\
    item_name=[\
        {text:"Peashooter",color:green}\
    ],lore=[\
        {text:"OFFENSIVE PLANT",color:"dark_green",italic:false,bold:true},\
        [{text:"Cost: ",color:white,italic:false},{text:"100 Sun",color:yellow,italic:false}],\
        [{text:"Recharge: ",color:white,italic:false},{text:"Fast",color:green,italic:false}],\
        [{text:"Damage: ",color:white,italic:false},{text:"Normal",color:yellow,italic:false}],\
        [{text:"Range: ",color:white,italic:false},{text:"Straight",color:yellow,italic:false}],\
        {text:""},\
        {text:"Shoots peas at attacking zombies.",color:white,italic:false},\
        {text:""},\
        {text:"How can a single plant grow and shoot so many peas so quickly?",color:"gray",italic:false},\
        {text:"Peashooter says, \"Hard work, commitment, and a healthy, well-balanced",color:"gray",italic:false},\
        {text:"breakfast of sunlight and high-fiber carbon dioxide make it all possible.",color:"gray",italic:false},\
    ],custom_data={\
        clear:1b,\
        id:1,\
        plant:"peashooter",\
    },item_model="bags:blueprint/peashooter",\
    max_stack_size=1,\
]
#sunflower
execute if score @s player.progress matches 1.. run item replace entity @s enderchest.1 with stick[\
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
        clear:1b,\
        id:2,\
        plant:"sunflower",\
    },item_model="bags:blueprint/sunflower",\
    max_stack_size=1,\
]
#cherry
execute if score @s player.progress matches 2.. run item replace entity @s enderchest.2 with stick[\
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
        clear:1b,\
        id:3,\
        plant:"cherry_bomb",\
    },item_model="bags:blueprint/cherry_bomb",\
    max_stack_size=1,\
]
#wallnut
execute if score @s player.progress matches 3.. run item replace entity @s enderchest.3 with stick[\
    item_name=[\
        {text:"Wall Nut",color:yellow}\
    ],lore=[\
        {text:"DEFENSIVE PLANT",color:"aqua",italic:false,bold:true},\
        [{text:"Cost: ",color:white,italic:false},{text:"50 Sun",color:yellow,italic:false}],\
        [{text:"Recharge: ",color:white,italic:false},{text:"Slow",color:red,italic:false}],\
        {text:""},\
        {text:"Has hard shells that can defend other plants.",color:white,italic:false},\
        {text:""},\
        {text:"\"People wonder how I feel about getting constantly chewed on by zombies,\"",color:"gray",italic:false},\
        {text:"says Wall-nut. \"What they don't realize is that with my limited senses",color:"gray",italic:false},\
        {text:"all I can feel is a kind of tingling, like a relaxing back rub.\"",color:"gray",italic:false},\
    ],custom_data={\
        clear:1b,\
        id:4,\
        plant:"wall_nut",\
    },item_model="bags:blueprint/wall_nut",\
    max_stack_size=1,\
]
#potato_mine
execute if score @s player.progress matches 4.. run item replace entity @s enderchest.4 with stick[\
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
        clear:1b,\
        id:5,\
        plant:"potato_mine",\
    },item_model="bags:blueprint/potato_mine",\
    max_stack_size=1,\
]
#snow_pea
execute if score @s player.progress matches 5.. run item replace entity @s enderchest.5 with stick[\
    item_name=[\
        {text:"Snow Pea",color:aqua}\
    ],lore=[\
        {text:"OFFENSIVE PLANT",color:"dark_green",italic:false,bold:true},\
        [{text:"Cost: ",color:white,italic:false},{text:"175 Sun",color:yellow,italic:false}],\
        [{text:"Recharge: ",color:white,italic:false},{text:"Fast",color:green,italic:false}],\
        [{text:"Damage: ",color:white,italic:false},{text:"Normal, slows zombies",color:yellow,italic:false}],\
        [{text:"Range: ",color:white,italic:false},{text:"Straight",color:yellow,italic:false}],\
        {text:""},\
        {text:"Shoots frozen peas that slow and damage zombies.",color:white,italic:false},\
        {text:""},\
        {text:"Folks often tell Snow Pea how \"cool\" he is, or exhort him to \"chill out.\"",color:"gray",italic:false},\
        {text:"They tell him to \"stay frosty.\" Snow Pea just rolls his eyes. He's heard 'em all.",color:"gray",italic:false},\
    ],custom_data={\
        clear:1b,\
        id:6,\
        plant:"snow_pea",\
    },item_model="bags:blueprint/snow_pea",\
    max_stack_size=1,\
]
#chomper
execute if score @s player.progress matches 6.. run item replace entity @s enderchest.6 with stick[\
    item_name=[\
        {text:"Chomper",color:light_purple}\
    ],lore=[\
        {text:"OFFENSIVE PLANT",color:"dark_green",italic:false,bold:true},\
        [{text:"Cost: ",color:white,italic:false},{text:"150 Sun",color:yellow,italic:false}],\
        [{text:"Recharge: ",color:white,italic:false},{text:"Fast",color:green,italic:false}],\
        [{text:"Damage: ",color:white,italic:false},{text:"Massive",color:dark_red,italic:false}],\
        [{text:"Range: ",color:white,italic:false},{text:"2 tiles",color:yellow,italic:false}],\
        [{text:"Chewing time: ",color:white,italic:false},{text:"30 seconds",color:red,italic:false}],\
        {text:""},\
        {text:"Devours zombies whole, but is vulnerable while chewing.",color:white,italic:false},\
        {text:""},\
        {text:"Chomper almost got a gig doing stunts for The Little Shop of Horrors but",color:"gray",italic:false},\
        {text:"it fell through when his agent demanded too much on the front end. Chomper's",color:"gray",italic:false},\
        {text:"not resentful, though. He says it's just part of the business.",color:"gray",italic:false},\
    ],custom_data={\
        clear:1b,\
        id:7,\
        plant:"chomper",\
    },item_model="bags:blueprint/chomper",\
    max_stack_size=1,\
]
#repeater
execute if score @s player.progress matches 7.. run item replace entity @s enderchest.7 with stick[\
    item_name=[\
        {text:"Repeater",color:dark_green}\
    ],lore=[\
        {text:"OFFENSIVE PLANT",color:"dark_green",italic:false,bold:true},\
        [{text:"Cost: ",color:white,italic:false},{text:"200 Sun",color:yellow,italic:false}],\
        [{text:"Recharge: ",color:white,italic:false},{text:"Fast",color:green,italic:false}],\
        [{text:"Damage: ",color:white,italic:false},{text:"Normal (for each pea)",color:yellow,italic:false}],\
        [{text:"Range: ",color:white,italic:false},{text:"Straight",color:yellow,italic:false}],\
        {text:""},\
        {text:"Shoots 2 peas at a time at attacking zombies.",color:white,italic:false},\
        {text:""},\
        {text:"Repeater is fierce. He's from the streets. He doesn't take attitude from",color:"gray",italic:false},\
        {text:"anybody, plant or zombie, and he shoots peas to keep people at a distance.",color:"gray",italic:false},\
        {text:"Secretly, though, Repeater yearns for love.",color:"gray",italic:false},\
    ],custom_data={\
        clear:1b,\
        id:8,\
        plant:"repeater",\
    },item_model="bags:blueprint/repeater",\
    max_stack_size=1,\
]


item replace entity @s enderchest.26 with map[item_name={text:"Instructions",color:aqua},custom_data={clear:1b},lore=[\
    {text:"- You can only hold up to 8 bags at a time.",italic:false,color:white},\
    {text:"- Unlock more plants as you progress.",italic:false,color:white},\
    {text:"- Pray to god the tps doesnt fall off the balcony.",italic:false,color:white},\
    {text:"- Most importantly, have fun.",italic:false,color:white},\
    {text:"",italic:false,color:white},\
    {text:"When you are ready, do /trigger round_start.",italic:false,color:white},\
]]