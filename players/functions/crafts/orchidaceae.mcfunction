give @s diamond_sword{no_upgrade:1b,CustomModelData:7,Orchid:1b,display:{Name:'{"text":"Orchidaceae","color":"light_purple","italic":false,"underlined":true}',Lore:['{"text":"Alchemy as modern practitioners know it was"}','{"text":"born in the lavish halls of the original"}','{"text":"Ancehl Castle. Although initially bound by"}','{"text":"a strict code of ethics, disagreements about"}','{"text":"these limits led to infighting and societal"}','{"text":"collapse. From the ashes, a new order arose"}','{"text":"which renounced all moral boundaries."}','{"text":" "}','{"text":"Exhumation","color":"light_purple","italic":false}','{"text":"Killing an enemy grants bonus experience.","color":"dark_gray"}','{"text":" "}','{"text":"When in main hand:","color":"gray","italic":false}','{"text":"-2 Max Health","color":"blue","italic":false}','{"text":"6 Attack Damage","color":"blue","italic":false}','{"text":"1.5 Attack Speed","color":"blue","italic":false}','{"text":" "}','{"text":"Legendary","color":"light_purple","italic":false}']},HideFlags:2,Enchantments:[{id:"minecraft:looting",lvl:4s},{id:"minecraft:unbreaking",lvl:3s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-2,Operation:0,UUID:[I;-1938570115,1094468355,-1410343191,320269336],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;-297682642,-1027260042,-1094062582,-835894420],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.5,Operation:0,UUID:[I;234698022,-1652470838,-1141369754,849463337],Slot:"mainhand"}]} 1
scoreboard players remove @s crafted 1
stopsound @a[distance=..32] player minecraft:entity.item.pickup
execute if score @s crafted matches 1.. run function players:crafts/orchidaceae