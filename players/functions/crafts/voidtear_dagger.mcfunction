give @s iron_sword{display:{Name:'{"text":"Voidtear Dagger","color":"light_purple","italic":false,"underlined":true}',Lore:['{"text":"Blue Exodus was so adept at hiding "}','{"text":"secrets, no one knew they employed "}','{"text":"an order of assassins until Insohmic"}','{"text":"archaeologists discovered one of these"}','{"text":"ingenious runic daggers nearly a millennia"}','{"text":"after every member had died."}','{"text":" "}','{"text":"Null Cloak","color":"light_purple","italic":false}','{"text":"Holding this weapon grants the wielder","color":"dark_gray"}','{"text":"invisibility and makes nearby mobs much","color":"dark_gray"}','{"text":"less aggressive.","color":"dark_gray"}','{"text":" "}','{"text":"When in main hand:","color":"gray","italic":false}','{"text":"+0.015 Movement Speed","color":"blue","italic":false}','{"text":"5 Attack Damage","color":"blue","italic":false}','{"text":"2.3 Attack Speed","color":"blue","italic":false}','{"text":" "}','{"text":"Legendary","color":"light_purple","italic":false}']},HideFlags:2,CustomModelData:6,Voidtear:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4,Operation:0,UUID:[I;-809506818,1763853883,-1537267000,1133899101],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-1.7,Operation:0,UUID:[I;1383523781,-980204016,-1837197616,1195178232],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.015,Operation:0,UUID:[I;-933381162,922568321,-1608607004,646540110],Slot:"mainhand"}]} 1
scoreboard players remove @s crafted 1
stopsound @a[distance=..32] player minecraft:entity.item.pickup
execute if score @s crafted matches 1.. run function players:crafts/voidtear_dagger