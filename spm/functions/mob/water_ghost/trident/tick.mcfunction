execute if entity @s[nbt={inGround:1b}] run function spm:mob/water_ghost/trident/on
#execute if entity @s[nbt={DealtDamage:1b}] positioned ~-5 ~-5 ~-5 unless entity @e[tag=spm.mob.water_ghost,dx=10,dy=100,dz=10] at @s run function spm:mob/water_ghost/trident/on