execute if score @s bleed_timer matches 20 as @e[tag=bleeding,limit=1,sort=nearest] run function players:items/shadowblade/take_damage

execute if score @s bleed_timer matches 40 as @e[tag=bleeding,limit=1,sort=nearest] run function players:items/shadowblade/take_damage

execute if score @s bleed_timer matches 60 as @e[tag=bleeding,limit=1,sort=nearest] run function players:items/shadowblade/take_damage

execute if score @s bleed_timer matches 80 as @e[tag=bleeding,limit=1,sort=nearest] run function players:items/shadowblade/take_damage

execute if score @s bleed_timer matches 100 as @e[tag=bleeding,limit=1,sort=nearest] run function players:items/shadowblade/take_damage_and_reset
execute if score @s bleed_timer matches 100.. run scoreboard players reset @s bleed_timer