tellraw @s {"text":"Your faith shall be rewarded.","color":"gold","italic":true}
tag @s add dahr.3
playsound minecraft:dcustom.ui.toast.challenge_complete ambient @s ~ ~ ~ 1 1.25
give @s command_block{CustomModelData:1010001,display:{Name:'{"text":"Writ of Authority +1","color":"dark_red","italic":false,"underlined":true}',Lore:['{"text":"Thou hast been bless\'d by the favor"}','{"text":"of the King! Let the tumult of the"}','{"text":"roiling waves be thy strength!"}','{"text":" "}','{"text":"When in offhand:","color":"gray","italic":false}','{"text":"+16% Attack Speed","color":"blue","italic":false}','{"text":" "}','{"text":"Relic","color":"dark_red","italic":false}']},HideFlags:2,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:0.16,Operation:1,UUID:[I;-668373504,331040746,-2044989909,-1146844854],Slot:"offhand"}]} 1