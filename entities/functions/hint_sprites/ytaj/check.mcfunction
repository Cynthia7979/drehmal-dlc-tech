execute if entity @s[x=-69,y=11,z=-1595,distance=..32] run scoreboard players add #hSpr_ytaj num 1
execute unless entity @s[x=-69,y=11,z=-1595,distance=..32] unless entity @p[distance=..16] run function entities:clear_self_dataless