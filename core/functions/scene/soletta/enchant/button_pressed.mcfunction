execute unless score #solActive bool matches 1 if score #solWeapon bool matches 1 if score #solStone bool matches 1 if score #solStone num matches 1 if score #solVitality bool matches 1 as @e[tag=soletta_weapon,sort=nearest] unless predicate players:holding/vitality_ench run function core:scene/soletta/enchant/start_anim
execute unless score #solActive bool matches 1 if score #solWeapon bool matches 1 if score #solStone bool matches 1 if score #solStone num matches 2 if score #solSpeed bool matches 1 as @e[tag=soletta_weapon,sort=nearest] unless predicate players:holding/speed_ench run function core:scene/soletta/enchant/start_anim
execute unless score #solActive bool matches 1 if score #solWeapon bool matches 1 if score #solStone bool matches 1 if score #solStone num matches 3 if score #solCooldown bool matches 1 as @e[tag=soletta_weapon,sort=nearest] unless predicate players:holding/cooldown_ench run function core:scene/soletta/enchant/start_anim

advancement revoke @s only core:soletta/push_button