execute if entity @s[tag=relic_v_give] run give @s command_block{CustomModelData:1010002,display:{Name:'{"text":"Writ of Authority +2","color":"dark_red","italic":false,"underlined":true}',Lore:['{"text":"Thou hast been bless\'d by the favor"}','{"text":"of the King! Thine enemies, perforce,"}','{"text":"bend knee at the sight! Ne\'er have they"}','{"text":"reckoned with the deep ocean\'s might!"}','{"text":" "}','{"text":"When in offhand:","color":"gray","italic":false}','{"text":"+24% Attack Speed","color":"blue","italic":false}','{"text":" "}','{"text":"Relic","color":"dark_red","italic":false}']},HideFlags:2,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:0.24,Operation:1,UUID:[I;-677136690,-1321775923,-1647365674,984341348],Slot:"offhand"}]} 1
execute unless entity @s[tag=relic_v_give] run function entities:dropped_items/devotion/vessel/give/already_redeemed
tag @s remove relic_v_give