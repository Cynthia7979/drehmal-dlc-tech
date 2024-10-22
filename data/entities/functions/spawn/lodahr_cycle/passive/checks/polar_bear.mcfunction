execute if predicate entities:spawn_checks/2x2x2 run scoreboard players add #spawnedTotal num 1

execute if predicate entities:spawn_checks/2x2x2 if entity @s[tag=!baby] run summon polar_bear ~0.5 ~ ~0.5 {Tags:["lodahr_passive"]}
# second polar bear in a group is always a cub
execute if predicate entities:spawn_checks/2x2x2 if entity @s[tag=baby] run summon polar_bear ~0.5 ~ ~0.5 {Tags:["lodahr_passive"],Age:-6000}
execute if predicate entities:spawn_checks/2x2x2 if entity @s[tag=!baby] run tag @s add baby

scoreboard players add #step num 1

execute if score #step num matches ..11 unless score #spawnedTotal num >= #packCap num at @s run function entities:spawn/lodahr_cycle/pack_spawn
execute if score #step num matches ..11 unless score #spawnedTotal num >= #packCap num at @s run function entities:spawn/lodahr_cycle/passive/checks/polar_bear