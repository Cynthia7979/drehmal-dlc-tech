scoreboard players set carmine towers 1
scoreboard players add count_west towers 1
scoreboard players add count_all towers 1
fill 26408 140 -100 26406 138 -100 air
setblock 26466 90 -86 end_rod
setblock 26405 139 -100 minecraft:sea_lantern
setblock 26407 142 -99 minecraft:sea_lantern
setblock 26407 137 -95 minecraft:sea_lantern
setblock 26409 139 -100 minecraft:sea_lantern

execute in minecraft:overworld positioned 26512 161 -96 run setblock ~6 ~ ~1 minecraft:light_blue_concrete
execute if score #scoreboardStable bool matches 1 run function terminus:count_towers