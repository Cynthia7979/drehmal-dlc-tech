# Run as player[tag=!destiny_set_crown] players:wearing_destiny_boots players:wearing_destiny_chestplate players:wearing_destiny_leggings players:wearing_destiny_crown players:sneak
scoreboard players add @s destiny_set_crown_charge 1
execute if score @s destiny_set_crown_charge matches 20 run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 2
execute if score @s destiny_set_crown_charge matches 40 run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 1.8
execute if score @s destiny_set_crown_charge matches 60 run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 1.6
execute if score @s destiny_set_crown_charge matches 80 run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 1.4
execute if score @s destiny_set_crown_charge matches 100 run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 1.2
execute if score @s destiny_set_crown_charge matches 100.. run function players:items/destiny_armor/main_crown