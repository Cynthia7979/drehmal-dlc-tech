give @s wooden_pickaxe{Flammer:1b,CustomModelData:1,display:{Name:'{"text":"Flammer","color":"light_purple","italic":false,"underlined":true}',Lore:['{"text":"Mael\'s generals have occupied Ebonrun for"}','{"text":"over a century, forcing its Drehmari to work"}','{"text":"long hours in mines and quarries. The"}','{"text":"most trusted are allowed to test Red Dawn\'s"}','{"text":"experimental mining technology. "}','{"text":" "}','{"text":"Excavation Torch","color":"light_purple","italic":false}','{"text":"This hammer mines multiple blocks in one swing.","color":"dark_gray"}','{"text":" "}','{"text":"When in main hand:","color":"gray","italic":false}','{"text":"8 Attack Damage","color":"blue","italic":false}','{"text":"1.2 Attack Speed","color":"blue","italic":false}','{"text":" "}','{"text":"Legendary","color":"light_purple","italic":false}']},HideFlags:2,Enchantments:[{id:"minecraft:knockback",lvl:1s},{id:"minecraft:fire_aspect",lvl:1s},{id:"minecraft:unbreaking",lvl:4s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:7,Operation:0,UUID:[I;-1071804783,572146784,-1732145164,442066017],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.8,Operation:0,UUID:[I;-1142865562,-1911340767,-1829062280,874521750],Slot:"mainhand"}]} 1
scoreboard players remove @s crafted 1
stopsound @a[distance=..32] player minecraft:entity.item.pickup
execute if score @s crafted matches 1.. run function players:crafts/flammer