tag @s add qstart
tellraw @p ["","<Rift> ",{"text":"Hey you there! Do you have a moment?","color":"dark_green"},"\n",{"text":"[Yes]","color":"yellow","clickEvent":{"action":"run_command","value":"/execute unless entity @s[tag=qst12] run function quests:riftquest/accept"},"hoverEvent":{"action":"show_text","contents":["Yes"]}},{"text":" [No]","color":"red","clickEvent":{"action":"run_command","value":"/execute unless entity @s[tag=qst12] run effect clear @s slowness"},"hoverEvent":{"action":"show_text","contents":["No"]}}]
playsound entity.villager.ambient player @a ~ ~ ~ 1 1 
effect give @p slowness 60 10 true