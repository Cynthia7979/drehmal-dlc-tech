tellraw @s {"text":"Your faith shall be rewarded.","color":"gold","italic":true}
tag @s add rihelma.4
playsound minecraft:dcustom.ui.toast.challenge_complete ambient @s ~ ~ ~ 1 1.25
give @s command_block{CustomModelData:1004001,display:{Name:'{"text":"Mirror of Lethargy","color":"dark_red","italic":false,"underlined":true}',Lore:['{"text":"Soar through the skies, pierce the"}','{"text":"heavens. Look beyond and seek the"}','{"text":"risen stars."}','{"text":" "}','{"text":"Arrow of Lethargy","color":"dark_red","italic":false}','{"text":"Applies slowness to all fired arrows when","color":"dark_gray"}','{"text":"in offhand.","color":"dark_gray"}','{"text":" "}','{"text":"Relic","color":"dark_red","italic":false}']},lethargy:1b} 1