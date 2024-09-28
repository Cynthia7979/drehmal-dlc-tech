#give @s warped_fungus_on_a_stick{Mythic:1b,display:{Name:'{"text":"Mythbreaker","color":"gold","italic":false,"underlined":true}',Lore:['{"text":"Seemingly infinite power arcs across"}','{"text":"this blade, burning your hands and"}','{"text":"quaking the ground beneath your feet."}','{"text":"It seems as if reality itself wavers as"}','{"text":"the rawest form of existence seeps"}','{"text":"into the space around you."}','{"text":" "}','{"text":"Core Collapse","color":"gold","italic":false}','{"text":"Hold down right click for an extended","color":"dark_gray"}','{"text":"period to collapse the innumerable","color":"dark_gray"}','{"text":"possibilities before you into an","color":"dark_gray"}','{"text":"ultimate ray of death.","color":"dark_gray"}','{"text":" "}','{"text":"When in main hand:","color":"gray","italic":false}','{"text":"-4 Max Health","color":"blue","italic":false}','{"text":"30 Attack Damage","color":"blue","italic":false}','{"text":"0.7 Attack Speed","color":"blue","italic":false}','{"text":"Unbreakable","color":"blue","italic":false}','{"text":" "}','{"text":"This item cannot be enchanted.","color":"dark_gray"}','{"text":" "}','{"text":"Mythical","color":"gold","italic":false}']},HideFlags:6,Unbreakable:1b,chargedMythbreaker:1b,Mythbreaker:1b,AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-4,Operation:0,UUID:[I;-2095972892,-998358801,-1201127222,-915207059],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:29,Operation:0,UUID:[I;-378183247,752107920,-1107330511,-2099740563],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3.3,Operation:0,UUID:[I;-1131515025,1821329280,-1483812404,2056543754],Slot:"mainhand"}],CustomModelData:9} 1

#give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Mythbreaker","color":"gold","italic":false,"underlined":true}',Lore:['{"text":"Seemingly infinite power arcs across"}','{"text":"this blade, burning your hands and"}','{"text":"quaking the ground beneath your feet."}','{"text":"It seems as if reality itself wavers as"}','{"text":"the rawest form of existence seeps"}','{"text":"into the space around you."}','{"text":" "}','{"text":"Core Collapse","color":"gold","italic":false}','{"text":"Hold down right click for an extended","color":"dark_gray"}','{"text":"period to collapse the innumerable","color":"dark_gray"}','{"text":"possibilities before you into an","color":"dark_gray"}','{"text":"impossibly strong blast of primal energy.","color":"dark_gray"}','{"text":" "}','{"text":"When in main hand:","color":"gray","italic":false}','{"text":"-4 Max Health","color":"blue","italic":false}','{"text":"150 Ability Damage","color":"blue","italic":false}','{"text":"27 Attack Damage","color":"blue","italic":false}','{"text":"0.7 Attack Speed","color":"blue","italic":false}','{"text":"Unbreakable","color":"blue","italic":false}','{"text":" "}','{"text":"Mythical","color":"gold","italic":false}']},HideFlags:6,Unbreakable:1b,CustomModelData:9,chargedMythbreaker:1b,Mythbreaker:1b,Mythic:1b,AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-4,Operation:0,UUID:[I;85782431,-1054520590,-1941714133,-1975320989],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:26,Operation:0,UUID:[I;9701197,-1742060417,-1184896343,-1715183262],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3.3,Operation:0,UUID:[I;1086720109,-1299099764,-1449233040,-1973384186],Slot:"mainhand"}]} 1

execute at @s run summon item ~ ~ ~ {Tags:["scanned"],PickUpDelay:0,Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Mythbreaker","color":"gold","italic":false,"underlined":true}',Lore:['{"text":"Seemingly infinite power arcs across"}','{"text":"this blade, burning your hands and"}','{"text":"quaking the ground beneath your feet."}','{"text":"It seems as if reality itself wavers as"}','{"text":"the rawest form of existence seeps"}','{"text":"into the space around you."}','{"text":" "}','{"text":"Core Collapse","color":"gold","italic":false}','{"text":"Hold down right click for an extended","color":"dark_gray"}','{"text":"period to collapse the innumerable","color":"dark_gray"}','{"text":"possibilities before you into an","color":"dark_gray"}','{"text":"impossibly strong blast of primal energy.","color":"dark_gray"}','{"text":" "}','{"text":"When in main hand:","color":"gray","italic":false}','{"text":"-4 Max Health","color":"blue","italic":false}','{"text":"150 Ability Damage","color":"blue","italic":false}','{"text":"27 Attack Damage","color":"blue","italic":false}','{"text":"0.7 Attack Speed","color":"blue","italic":false}','{"text":"Unbreakable","color":"blue","italic":false}','{"text":" "}','{"text":"Mythical","color":"gold","italic":false}']},HideFlags:6,Unbreakable:1b,CustomModelData:9,chargedMythbreaker:1b,Mythbreaker:1b,Mythic:1b,AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-4,Operation:0,UUID:[I;85782431,-1054520590,-1941714133,-1975320989],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:26,Operation:0,UUID:[I;9701197,-1742060417,-1184896343,-1715183262],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3.3,Operation:0,UUID:[I;1086720109,-1299099764,-1449233040,-1973384186],Slot:"mainhand"}]}}}

advancement revoke @s only players:mb_core
tag @s add khive.fucking.angry
scoreboard players set #mbtaken timer 0
scoreboard players reset @s d.khive

execute in minecraft:lodahr run forceload add 27304 55
execute in overworld run forceload add 1737 -4393 1754 -4197
tag @s add mb_holder

scoreboard players set #mb_picked bool 1
execute in minecraft:overworld positioned 26512 161 -96 run setblock ~2 ~ ~15 minecraft:black_concrete

scoreboard players set #khive_talk bool 1
playsound minecraft:dcustom.block.respawn_anchor.set_spawn player @s
execute positioned 27304.5 124.6 55.5 run function players:misc/fzy_ring
#execute as @e[type=armor_stand,tag=display_c_mb] at @s run teleport ~ -1000 ~
kill @e[type=armor_stand,tag=display_c_mb]
scoreboard players reset #mb_place_part bool
execute as @e[type=villager,tag=c_mb_pickup] at @s run teleport ~ -1000 ~

function players:spawn/save_spawnpoint
spawnpoint @s 27308 122 55

