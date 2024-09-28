execute positioned ~ ~ ~ as @p[tag=qst4] at @s run tellraw @s ["","<Casey> ",{"text":"Are you done already?","color":"dark_green"}]
execute positioned ~ ~ ~ as @p[tag=qst4] at @s run playsound entity.villager.ambient player @a ~ ~ ~ 1 1 
schedule function quests:caseyquest/finish2 3s