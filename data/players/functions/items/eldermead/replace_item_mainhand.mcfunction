# score of 3 - drank full, score of 2 - drank half
execute if score @s drankEldermead matches 3 run item replace entity @s weapon.mainhand with minecraft:potion{CustomModelData:1000002,Eldermead:1b,Filled:1,CustomPotionEffects:[{Id:23,Amplifier:7},{Id:22,Amplifier:1,Duration:2419},{Id:10,Duration:219,Amplifier:1}],CustomPotionColor:16777215,HideFlags:32,display:{Name:'{"text":"Eldermead","italic":"false","color":"light_purple","underlined":"true"}',Lore:['{"text":"With unprecedented anxiousness,"}','{"text":"the Life-Bringer offers a draught"}','{"text":"of restorative honey-wine ordinarily"}','{"text":"reserved for healing Aspects and"}','{"text":"their chosen La’Tehrmari."}','{"text":""}','{"text":"Bountiful Vitality","color":"light_purple","italic":"false"}','{"text":"This item can be drunk multiple times,","color":"dark_gray"}','{"text":"and restores both health and hunger.","color":"dark_gray"}','{"text":""}','{"text":"Legendary","color":"light_purple","italic":"false"}']}}
execute if score @s drankEldermead matches 2 run item replace entity @s weapon.mainhand with minecraft:potion{CustomModelData:1000003,Eldermead:1b,Filled:0,CustomPotionEffects:[{Id:23,Amplifier:7},{Id:22,Amplifier:1,Duration:2419},{Id:10,Duration:219,Amplifier:1}],CustomPotionColor:16777215,HideFlags:32,display:{Name:'{"text":"Eldermead","italic":"false","color":"light_purple","underlined":"true"}',Lore:['{"text":"With unprecedented anxiousness,"}','{"text":"the Life-Bringer offers a draught"}','{"text":"of restorative honey-wine ordinarily"}','{"text":"reserved for healing Aspects and"}','{"text":"their chosen La’Tehrmari."}','{"text":""}','{"text":"Bountiful Vitality","color":"light_purple","italic":"false"}','{"text":"This item can be drunk multiple times,","color":"dark_gray"}','{"text":"and restores both health and hunger.","color":"dark_gray"}','{"text":""}','{"text":"Legendary","color":"light_purple","italic":"false"}']}}
execute if score @s drankEldermead matches 1 run item replace entity @s weapon.mainhand with air