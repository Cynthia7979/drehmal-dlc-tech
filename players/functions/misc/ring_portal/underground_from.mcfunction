tp @s -923 34 -200 90 0
scoreboard players set @s khive_pcool 100
execute at @s run playsound minecraft:dcustom.block.enchantment_table.use ambient @s ~ ~ ~ 2 0
execute at @s run playsound minecraft:dcustom.block.beacon.power_select ambient @s ~ ~ ~ 2 1

advancement grant @s only advancements:primordial/ring_facility