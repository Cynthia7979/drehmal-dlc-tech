# Function is called as player who used shadowblade (core:customweapons)
execute at @s as @e[distance=..4,sort=arbitrary,type=!player,type=!#entities:dummy,type=!#entities:highcapacity,type=!#entities:proj] if predicate entities:hurt run tag @s add bleeding
execute as @s run scoreboard players reset @s use_shad
