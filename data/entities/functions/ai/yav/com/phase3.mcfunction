execute unless score @s ai_state matches 1 run playsound minecraft:dcustom.item.armor.equip_netherite hostile @a[distance=..30] ~ ~ ~ 0.4 0.5 0.2
item replace entity @s weapon.mainhand with netherite_sword{Unbreakable:1b}
scoreboard players set @s ai_state 3
scoreboard players set @s ai_timer 30
attribute @s generic.movement_speed modifier add 1940b91d-193d-413e-b821-18bd44704819 "fear" 0.4 multiply
tag @s remove yav.com_assault