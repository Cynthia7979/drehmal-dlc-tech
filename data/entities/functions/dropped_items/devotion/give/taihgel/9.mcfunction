tellraw @s {"text":"Your faith shall be rewarded.","color":"gold","italic":true}
tag @s add taihgel.9
tag @s add taihgel.maxxed
playsound minecraft:dcustom.ui.toast.challenge_complete ambient @s ~ ~ ~ 1 1.25
execute unless score #tempest? bool matches 1 run give @s bosses_of_mass_destruction:soul_star{h:1b,primalenergy:1b,display:{Name:'["",{"text":"???","italic":false,"color":"gold"}]'},HideFlags:32}
execute if score #tempest? bool matches 1 run give @s simplyswords:empowered_remnant{display:{Name:'["",{"text":"???","italic":false,"color":"gold"}]'},HideFlags:32} 1
give @s command_block{display:{Name:'{"text":"Orogeny +3","color":"dark_red","italic":false,"underlined":true}',Lore:['{"text":"A blast of molten lava erupts as Taihgel\'s"}','{"text":"passion returns. May you wield this ring with"}','{"text":"sure-handed boldness as a ground of "}','{"text":"inspiration for your ailing patron. "}','{"text":" "}','{"text":"When in offhand:","color":"gray","italic":false}','{"text":"+5 Armor","color":"blue","italic":false}','{"text":"+2 Armor Toughness","color":"blue","italic":false}','{"text":" "}','{"text":"Relic","color":"dark_red","italic":false}']},HideFlags:2,CustomModelData:1011003,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:5,Operation:0,UUID:[I;1562549852,1024149064,-1314074756,-933766797],Slot:"offhand"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:2,Operation:0,UUID:[I;700132543,1283149090,-1212951091,1474181720],Slot:"offhand"}]} 1