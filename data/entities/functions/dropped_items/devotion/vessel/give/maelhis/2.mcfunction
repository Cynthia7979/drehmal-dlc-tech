execute if entity @s[tag=relic_v_give] run give @s command_block{CustomModelData:1003002,display:{Name:'{"text":"Sprout of Anguish +2","color":"dark_red","italic":false,"underlined":true}',Lore:['{"text":"You have lit a flame that symbolizes"}','{"text":"your devotion to the God of Chaos."}','{"text":"The fire shall soon burn all it"}','{"text":"touches."}','{"text":" "}','{"text":"When in offhand:","color":"gray","italic":false}','{"text":"+6 Max Health","color":"blue","italic":false}','{"text":" "}','{"text":"Relic","color":"dark_red","italic":false}']},HideFlags:6,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:6,Operation:0,UUID:[I;-901061355,-136818913,-2093618943,-547046015],Slot:"offhand"}]} 1
execute unless entity @s[tag=relic_v_give] run function entities:dropped_items/devotion/vessel/give/already_redeemed
tag @s remove relic_v_give