execute in minecraft:lodahr positioned 1193 244 1235 as @p if entity @s[distance=25..] run scoreboard players add #sunmoon4 despawn_timer 1
execute in minecraft:lodahr positioned 1193 244 1235 as @p if entity @s[distance=55..] run scoreboard players add #sunmoon4 despawn_timer 999
execute in minecraft:lodahr positioned 1193 244 1235 as @p if entity @s[distance=..25] run scoreboard players remove #sunmoon4 despawn_timer 1
execute if score #sunmoon4 despawn_timer matches ..-1 run scoreboard players set #sunmoon4 despawn_timer 0
execute if score #sunmoon4 despawn_timer matches 10.. run function core:scene/sunmoon/despawn4