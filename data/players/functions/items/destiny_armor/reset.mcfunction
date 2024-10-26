execute as @p[tag=destiny_set] run scale reset pehkui:width 
execute as @p[tag=destiny_set] run scale reset pehkui:height 
execute as @p[tag=destiny_set] run scale reset pehkui:attack 
execute as @p[tag=destiny_set] run scale reset pehkui:attack_speed 
execute as @p[tag=destiny_set] run scale reset pehkui:entity_reach 
execute as @p[tag=destiny_set] run attribute @s minecraft:generic.armor base set 0
execute as @p[tag=destiny_set] run attribute @s generic.max_health base set 20
execute as @p[tag=destiny_set] at @s run playsound minecraft:entity.elder_guardian.curse player @a ~ ~ ~ 1 2
execute as @p[tag=destiny_set] run tag @s remove destiny_set

execute as @p[tag=destiny_set_crown] run scale reset pehkui:width 
execute as @p[tag=destiny_set_crown] run scale reset pehkui:height 
execute as @p[tag=destiny_set_crown] run scale reset pehkui:attack
execute as @p[tag=destiny_set_crown] run scale reset pehkui:falling
execute as @p[tag=destiny_set_crown] run scale reset pehkui:jump_height
execute as @p[tag=destiny_set_crown] at @s run playsound minecraft:entity.elder_guardian.curse player @a ~ ~ ~ 1 2
execute as @p[tag=destiny_set_crown] run tag @s remove destiny_set_crown