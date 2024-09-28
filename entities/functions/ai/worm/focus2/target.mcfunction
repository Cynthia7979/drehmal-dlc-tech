function entities:ai/worm/target_medium
execute at @s if score @s ai_timer matches 25.. run function entities:ai/worm/target_medium
execute at @s if score @s ai_timer matches 20 run execute as @e[type=marker,tag=aj.bern.root] run function bern:animations/roar/play
execute if score @s ai_timer matches 20 run scoreboard players set @s aj.framee 100

execute if entity @e[type=marker,tag=worm_target,distance=..3] if score @s ai_state2 matches 6 run function entities:ai/worm/focus2/target2charge
execute if entity @e[type=marker,tag=worm_target,distance=..3] if score @s ai_state2 matches 2..5 run function entities:ai/worm/focus2/targetfound

execute if score @s ai_state2 matches 3.. run scoreboard players add @s ai_timer 1
execute if score @s ai_state2 matches 3..6 if score @s ai_timer matches 25 at @s run function entities:ai/worm/lasers/shapes/weak_triangle
execute if score @s ai_state2 matches 3..6 if score @s ai_timer matches 35 at @s run function entities:ai/worm/lasers/shapes/weak_triangle
execute if score @s ai_state2 matches 3..6 if score @s ai_timer matches 45 at @s run function entities:ai/worm/lasers/shapes/weak_triangle
execute if score @s ai_state2 matches 3..6 if score @s ai_timer matches 55 at @s run function entities:ai/worm/lasers/shapes/weak_triangle