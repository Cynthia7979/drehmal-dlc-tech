#give @s crossbow{display:{Name:'{"text":"Syzygy","color":"gold","italic":false,"underlined":true}',Lore:['{"text":"Yriel the Moonsworn, greatest of all"}','{"text":"Tehrmari, was the Aspects\' solution"}','{"text":"to mortal interference. Empowered by"}','{"text":"the blessings of the Prismatic Council,"}','{"text":"Yriel carried out the Elder Will and"}','{"text":"delivered it swiftly. Tragically, they were"}','{"text":"butchered by a falsely-pure fanatic"}','{"text":"of Virtuo at the climax of the Battle"}','{"text":"for Drehmal. For centuries, their"}','{"text":"hallowed weapon has sought a worthy"}','{"text":"set of hands. May yours serve it well."}','{"text":" "}','{"text":"Draconitic Rebuke","color":"gold","italic":false}','{"text":"Swap to your offhand to enter sniper","color":"dark_gray"}','{"text":"mode. While in sniper mode, steady your","color":"dark_gray"}','{"text":"aim to charge a super powerful shot.","color":"dark_gray"}','{"text":" "}','{"text":"When in main hand:","color":"gray","italic":false}','{"text":"+0.02 Movement Speed","color":"blue","italic":false}','{"text":"100 Ability Damage","color":"blue","italic":false}','{"text":"20 Ranged Damage","color":"blue","italic":false}','{"text":"Unbreakable","color":"blue","italic":false}','{"text":" "}','[{"text":"Mythical ","color":"gold","italic":false},{"text":"[","color":"gray","italic":false},{"text":" ","color":"gold","italic":false},{"text":"] [","color":"gray","italic":false},{"text":" ","color":"gold","italic":false},{"text":"] [","color":"gray","italic":false},{"text":" ","color":"gold","italic":false},{"text":"]","color":"gray","italic":false}]']},HideFlags:6,Unbreakable:1b,Soletta:1b,Damage:0,CustomModelData:1,Syzygy:1b,Mythic:1b,Enchantments:[{id:"minecraft:quick_charge",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.02,Operation:0,UUID:[I;-906639186,908282105,-2007060265,1915014483],Slot:"mainhand"}],FlavorText:['{"text":"Yriel the Moonsworn, greatest of all"}','{"text":"Tehrmari, was the Aspects\' solution"}','{"text":"to mortal interference. Empowered by"}','{"text":"the blessings of the Prismatic Council,"}','{"text":"Yriel carried out the Elder Will and"}','{"text":"delivered it swiftly. Tragically, they were"}','{"text":"butchered by a falsely-pure fanatic"}','{"text":"of Virtuo at the climax of the Battle"}','{"text":"for Drehmal. For centuries, their"}','{"text":"hallowed weapon has sought a worthy"}','{"text":"set of hands. May yours serve it well."}','{"text":" "}','{"text":"Draconitic Rebuke","color":"gold","italic":false}','{"text":"Swap to your offhand to enter sniper","color":"dark_gray"}','{"text":"mode. While in sniper mode, steady your","color":"dark_gray"}','{"text":"aim to charge a super powerful shot.","color":"dark_gray"}','{"text":" "}','{"text":"When in main hand:","color":"gray","italic":false}']} 1

summon item ~ ~ ~ {Tags:["scanned"],PickUpDelay:0,Item:{id:"minecraft:crossbow",Count:1b,tag:{display:{Name:'{"text":"Syzygy","color":"gold","italic":false,"underlined":true}',Lore:['{"text":"Yriel the Moonsworn, greatest of all"}','{"text":"Tehrmari, was the Aspects\' solution"}','{"text":"to mortal interference. Empowered by"}','{"text":"the blessings of the Prismatic Council,"}','{"text":"Yriel carried out the Elder Will and"}','{"text":"delivered it swiftly. Tragically, they were"}','{"text":"butchered by a falsely-pure fanatic"}','{"text":"of Virtuo at the climax of the Battle"}','{"text":"for Drehmal. For centuries, their"}','{"text":"hallowed weapon has sought a worthy"}','{"text":"set of hands. May yours serve it well."}','{"text":" "}','{"text":"Draconitic Rebuke","color":"gold","italic":false}','{"text":"Swap to your offhand to enter sniper","color":"dark_gray"}','{"text":"mode. While in sniper mode, steady your","color":"dark_gray"}','{"text":"aim to charge a super powerful shot.","color":"dark_gray"}','{"text":" "}','{"text":"When in main hand:","color":"gray","italic":false}','{"text":"+0.02 Movement Speed","color":"blue","italic":false}','{"text":"100 Ability Damage","color":"blue","italic":false}','{"text":"20 Ranged Damage","color":"blue","italic":false}','{"text":"Unbreakable","color":"blue","italic":false}','{"text":" "}','[{"text":"Mythical ","color":"gold","italic":false},{"text":"[","color":"gray","italic":false},{"text":" ","color":"gold","italic":false},{"text":"] [","color":"gray","italic":false},{"text":" ","color":"gold","italic":false},{"text":"] [","color":"gray","italic":false},{"text":" ","color":"gold","italic":false},{"text":"]","color":"gray","italic":false}]']},HideFlags:6,Unbreakable:1b,Soletta:1b,Damage:0,CustomModelData:1,Syzygy:1b,Mythic:1b,Enchantments:[{id:"minecraft:quick_charge",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.02,Operation:0,UUID:[I;-906639186,908282105,-2007060265,1915014483],Slot:"mainhand"}],FlavorText:['{"text":"Yriel the Moonsworn, greatest of all"}','{"text":"Tehrmari, was the Aspects\' solution"}','{"text":"to mortal interference. Empowered by"}','{"text":"the blessings of the Prismatic Council,"}','{"text":"Yriel carried out the Elder Will and"}','{"text":"delivered it swiftly. Tragically, they were"}','{"text":"butchered by a falsely-pure fanatic"}','{"text":"of Virtuo at the climax of the Battle"}','{"text":"for Drehmal. For centuries, their"}','{"text":"hallowed weapon has sought a worthy"}','{"text":"set of hands. May yours serve it well."}','{"text":" "}','{"text":"Draconitic Rebuke","color":"gold","italic":false}','{"text":"Swap to your offhand to enter sniper","color":"dark_gray"}','{"text":"mode. While in sniper mode, steady your","color":"dark_gray"}','{"text":"aim to charge a super powerful shot.","color":"dark_gray"}','{"text":" "}','{"text":"When in main hand:","color":"gray","italic":false}']}}}

scoreboard players remove @s crafted 1
stopsound @a[distance=..32] player minecraft:entity.item.pickup
execute if score @s crafted matches 1.. run function players:crafts/syzygy