execute positioned ~ ~ ~ as @p[tag=qst13] at @s run tellraw @s ["",{"text":"Quest Started: ","color":"yellow"},{"text":"Collect 5 Orbs of Primal Energy","color":"white"}]
execute positioned ~ ~ ~ as @p[tag=qst13] at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 2
execute positioned ~ ~ ~ as @p[tag=qst13] at @s run particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0 40