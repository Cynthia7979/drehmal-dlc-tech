execute if entity @s[x=-761,y=106,z=-790,distance=..32] run scoreboard players add #hSpr_khive num 1
execute unless entity @s[x=-761,y=106,z=-790,distance=..32] unless entity @p[distance=..16] run function entities:clear_self_dataless