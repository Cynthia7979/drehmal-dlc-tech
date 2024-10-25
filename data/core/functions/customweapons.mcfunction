execute as @a if predicate players:holding/soul_scythe as @s[scores={use_soul=1..}] run function players:items/soul/main
execute as @a if predicate players:holding/soul_scythe as @s run scoreboard players add @s soul_burn 1
execute as @a if predicate players:holding/soul_scythe as @s[scores={soul_burn=20..}] run execute as @e[tag=soul_burn] run function players:items/soul/burn



execute as @a if predicate players:holding/backstabber_mainhand as @s[scores={use_bs=1..}] run function players:items/backstabber/main
execute as @a if predicate players:holding/backstabber_mainhand unless predicate dev:entity_properties/effects/invisibility run execute as @s run scoreboard players add @s bstimer 1
execute as @a if predicate players:holding/backstabber_mainhand as @s[scores={bstimer=100..}] run function players:items/backstabber/resetreach
execute as @a if predicate players:holding/backstabber_offhand as @s[scores={use_bs=1..}] run function players:items/backstabber/main
execute as @a if predicate players:holding/backstabber_offhand unless predicate dev:entity_properties/effects/invisibility run execute as @s run scoreboard players add @s bstimer 1
execute as @a if predicate players:holding/backstabber_offhand as @s[scores={bstimer=100..}] run function players:items/backstabber/resetreach
execute as @a if predicate players:holding/backstabber_mainhand if predicate dev:entity_properties/flags/is_sneaking if predicate dev:entity_properties/effects/invisibility run function players:items/backstabber/invis
execute as @a if predicate players:holding/backstabber_mainhand if predicate players:holding/backstabber_offhand if predicate dev:entity_properties/flags/is_sneaking if predicate dev:entity_properties/effects/invisibility run function players:items/backstabber/dual
execute as @a unless predicate players:holding/backstabber_offhand unless predicate players:holding/backstabber_mainhand as @s[scores={bskills=1..}] run execute as @s run function players:items/backstabber/resetreach
execute as @a unless predicate players:holding/backstabber_mainhand as @s[scores={kills=..1}] run scoreboard players reset @s kills
execute as @a unless predicate players:holding/backstabber_mainhand as @s[scores={kills=1..}] run scoreboard players reset @s kills
execute as @a unless predicate players:holding/backstabber_offhand as @s[scores={kills=..1}] run scoreboard players reset @s kills
execute as @a unless predicate players:holding/backstabber_offhand as @s[scores={kills=1..}] run scoreboard players reset @s kills



execute as @a if predicate players:holding/leviathan as @s[scores={use_levi=1..}] run function players:items/levi/main
execute as @a if predicate players:holding/leviathan as @s run scoreboard players add @s levi_reach 1
execute as @a if predicate players:holding/leviathan as @s[scores={levi_reach=140..}] run execute as @s run scale set pehkui:entity_reach 1 @s
execute as @a unless predicate players:holding/leviathan as @s[scores={levi_reach=1..140}] run execute as @s run scale set pehkui:entity_reach 1 @s
execute as @a unless predicate players:holding/leviathan as @s[scores={levi_reach=140..}] run execute as @s run attribute @s generic.attack_speed base set 4
execute as @a unless predicate players:holding/leviathan as @s[scores={levi_reach=140..}] run execute as @s run attribute @s generic.attack_damage base set 1
execute as @a unless predicate players:holding/leviathan as @s[scores={levi_reach=1..140}] run execute as @s run attribute @s generic.attack_speed base set 4
execute as @a unless predicate players:holding/leviathan as @s[scores={levi_reach=1..140}] run execute as @s run attribute @s generic.attack_damage base set 1
execute as @a unless predicate players:holding/leviathan as @s[scores={levi_reach=..140}] run execute as @s run scoreboard players reset @s levi_reach
execute as @a unless predicate players:holding/leviathan as @s[scores={levi_reach=140..}] run execute as @s run scoreboard players reset @s levi_reach
execute as @a if predicate players:holding/leviathan as @s[scores={levi_reach=..140}] if predicate dev:entity_properties/effects/haste run execute as @s at @s positioned ~ ~1 ~ run function particle:effects/mist
execute as @a if predicate players:holding/leviathan_u as @s[scores={levi_kills=5..}] run execute as @s at @s run title @s actionbar {"text":"Apotheosis is ready for use","color":"green"}
execute as @a if predicate players:holding/leviathan_u as @s[scores={levi_kills=5..}] if predicate dev:entity_properties/flags/is_sneaking run function players:items/levi/apotheosis
execute as @e[type=item] if predicate players:is_levi run team join leviathan 
execute as @e[type=item] if predicate players:is_levi run data merge entity @s {Glowing:1b,Age:-32768,Invulnerable:1b,Health:2048}



execute as @a if predicate players:holding/thunderclap as @s run scoreboard players add @s thun 1
execute as @a if predicate players:holding/thunderclap if entity @s[scores={thun=160..,use_thun=1..}] run function players:items/thunderclap/main
execute as @a if predicate players:holding/thunderclap if entity @s[scores={thun=..159,use_thun=1..}] run function players:items/thunderclap/reset
execute as @a if predicate players:holding/thunderclap as @s[scores={thun=160}] at @s run playsound minecraft:block.respawn_anchor.charge player @a ^ ^ ^ 1 0
execute as @a unless predicate players:holding/thunderclap as @s[scores={thun=..160}] run scoreboard players reset @s thun
execute as @a unless predicate players:holding/thunderclap as @s[scores={thun=160..}] run scoreboard players reset @s thun


# Player who has ever wielded Shadowblade: score(@s, has_shad) = 1
execute as @a[scores={use_shad=1..}] run scoreboard players set has_shad 1
# Player who had just used Shadowblade: score(@s, use_shad) = 1..
execute as @a[scores={use_shad=1..}] if predicate dev:random_chance/8_of_20 run function players:items/shadowblade/main
# Entity currently affected by Bleed: Has tag(bleeding)
# Bleed timer (on player): score(@s, bleed_timer)
execute at @a[scores={has_shad=1}] if entity @e[tag=bleeding] run scoreboard players add @s bleed_timer 1
execute as @a[scores={has_shad=1}] at @e[tag=bleeding,limit=1] run function players:items/shadowblade/inflict_bleed
execute as @a[scores={bleed_timer=1..}] unless entity @e[tag=bleeding] run scoreboard players reset @s bleed_timer



execute as @a if predicate players:holding/gauntlet_mainhand if predicate players:holding/gauntlet_offhand run function players:items/gauntlets/main
execute as @a if predicate players:holding/gauntlet_mainhand run execute as @s run scoreboard players add @s gaunt_stats 1
execute as @a if predicate players:holding/gauntlet_offhand run execute as @s run scoreboard players add @s gaunt_stats 1
execute as @a unless predicate players:holding/gauntlet_mainhand as @s[scores={gaunt_stats=1..}] run execute as @s run function players:items/gauntlets/reset
execute as @a unless predicate players:holding/gauntlet_mainhand unless predicate players:holding/gauntlet_offhand as @s[scores={gaunt_stats=1..}] run execute as @s run function players:items/gauntlets/reset
execute as @a unless predicate players:holding/gauntlet_mainhand as @s[scores={gaunt_stats=1..}] run execute as @s run scoreboard players reset @s gaunt_stats
execute as @a unless predicate players:holding/gauntlet_offhand as @s[scores={gaunt_stats=1..}] run execute as @s run function players:items/gauntlets/reset
execute as @a unless predicate players:holding/gauntlet_offhand as @s[scores={gaunt_stats=1..}] run execute as @s run scoreboard players reset @s gaunt_stats



execute as @a if predicate players:holding/luckyspear run execute as @s[tag=!luckyspear] run function players:items/luckyspear/clear
execute as @a if predicate players:holding/luckyspear run execute as @s[tag=!luckyspear1] run function players:items/luckyspear/apply
execute as @a if predicate players:holding/luckyspear as @s[scores={lucky=9..}] run tag @s remove luckyspear



execute as @a[tag=!destiny] if predicate players:wearing_destiny_boots if predicate players:wearing_destiny_chestplate if predicate players:wearing_destiny_leggings if predicate players:wearing_destiny_helmet if predicate players:sneak run scoreboard players add @s destiny 1

# TODO: Combine into a single "check" function
execute as @a[tag=!destiny,scores={destiny=20}] if predicate players:wearing_destiny_boots if predicate players:wearing_destiny_chestplate if predicate players:wearing_destiny_leggings if predicate players:wearing_destiny_helmet if predicate players:sneak run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 1.2
execute as @a[tag=!destiny,scores={destiny=40}] if predicate players:wearing_destiny_boots if predicate players:wearing_destiny_chestplate if predicate players:wearing_destiny_leggings if predicate players:wearing_destiny_helmet if predicate players:sneak run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 1.4
execute as @a[tag=!destiny,scores={destiny=60}] if predicate players:wearing_destiny_boots if predicate players:wearing_destiny_chestplate if predicate players:wearing_destiny_leggings if predicate players:wearing_destiny_helmet if predicate players:sneak run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 1.6
execute as @a[tag=!destiny,scores={destiny=80}] if predicate players:wearing_destiny_boots if predicate players:wearing_destiny_chestplate if predicate players:wearing_destiny_leggings if predicate players:wearing_destiny_helmet if predicate players:sneak run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 1.8
execute as @a[tag=!destiny,scores={destiny=100}] if predicate players:wearing_destiny_boots if predicate players:wearing_destiny_chestplate if predicate players:wearing_destiny_leggings if predicate players:wearing_destiny_helmet if predicate players:sneak run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 2
execute as @a[tag=!destiny,scores={destiny=100..}] if predicate players:wearing_destiny_boots if predicate players:wearing_destiny_chestplate if predicate players:wearing_destiny_leggings if predicate players:wearing_destiny_helmet if predicate players:sneak run function players:items/destiny_armor/main

execute as @a[tag=!destinyc] if predicate players:wearing_destiny_boots if predicate players:wearing_destiny_chestplate if predicate players:wearing_destiny_leggings if predicate players:wearing_destiny_crown if predicate players:sneak run scoreboard players add @s destinyc 1
execute as @a[tag=!destinyc,scores={destinyc=100..}] if predicate players:wearing_destiny_boots if predicate players:wearing_destiny_chestplate if predicate players:wearing_destiny_leggings if predicate players:wearing_destiny_crown if predicate players:sneak run function players:items/destiny_armor/main_c
execute as @a[tag=!destinyc,scores={destinyc=20}] if predicate players:wearing_destiny_boots if predicate players:wearing_destiny_chestplate if predicate players:wearing_destiny_leggings if predicate players:wearing_destiny_crown if predicate players:sneak run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 2
execute as @a[tag=!destinyc,scores={destinyc=40}] if predicate players:wearing_destiny_boots if predicate players:wearing_destiny_chestplate if predicate players:wearing_destiny_leggings if predicate players:wearing_destiny_crown if predicate players:sneak run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 1.8
execute as @a[tag=!destinyc,scores={destinyc=60}] if predicate players:wearing_destiny_boots if predicate players:wearing_destiny_chestplate if predicate players:wearing_destiny_leggings if predicate players:wearing_destiny_crown if predicate players:sneak run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 1.6
execute as @a[tag=!destinyc,scores={destinyc=80}] if predicate players:wearing_destiny_boots if predicate players:wearing_destiny_chestplate if predicate players:wearing_destiny_leggings if predicate players:wearing_destiny_crown if predicate players:sneak run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 1.4
execute as @a[tag=!destinyc,scores={destinyc=100}] if predicate players:wearing_destiny_boots if predicate players:wearing_destiny_chestplate if predicate players:wearing_destiny_leggings if predicate players:wearing_destiny_crown if predicate players:sneak run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 1

execute as @a[score={destiny=1..}] unless predicate players:sneak run scoreboard players reset @s destiny
execute as @a[score={destinyc=1..}] unless predicate players:sneak run scoreboard players reset @s destinyc
execute as @a[tag=destiny] if predicate players:sneak run effect give @s blindness 2 2 true
execute as @a[tag=destiny] if predicate players:sneak run effect give @s slowness 2 2 true


execute as @a[scores={destiny_s=1..}] unless predicate players:holding/destiny run scoreboard players reset @s destiny_s
execute as @a if predicate players:holding/destiny run scoreboard players add @s destiny_s 1
execute as @a[scores={destiny_cd=1..,destiny_s=20..}] if predicate players:holding/destiny run function players:items/destiny_blade/main 
execute as @a[scores={use_destiny=1..}] if predicate players:holding/destiny if entity @e[predicate=entities:hurt,type=!player,distance=..8] run scoreboard players add @s destiny_cd 1
execute as @a[scores={destiny_cd=1..}] unless predicate players:holding/destiny run scoreboard players reset @s use_destiny
execute as @a[scores={use_destiny=1..}] unless predicate players:holding/destiny run scoreboard players reset @s destiny_cd

execute as @a if predicate players:adventure_areas unless predicate players:locations/in_terminus if data entity @s cardinal_components.trinkets:trinkets.legs.belt.Items[{id:"artifacts:cloud_in_a_bottle"}] run scoreboard players add @s stop 1

execute as @a[tag=!cloud,scores={stop=40..}] run function players:nocloud
execute as @a[tag=cloud] run function players:checkcloud

execute as @a[tag=cloud] if predicate players:locations/in_terminus run function players:givecloud
execute as @a[tag=cloud] unless predicate players:adventure_areas run function players:givecloud

execute as @a[advancements={weapons:wings=true},tag=!wings] if predicate players:adventure_areas unless predicate players:locations/in_terminus if data entity @s cardinal_components.trinkets:trinkets.chest.cape.Items[{id:"icarus:magenta_mechanical_leather_wings"}] run function players:nowings

execute as @a[advancements={weapons:wings=true},tag=!wings] if predicate players:lodahr unless predicate players:locations/in_terminus if data entity @s cardinal_components.trinkets:trinkets.chest.cape.Items[{id:"icarus:magenta_mechanical_leather_wings"}] run function players:nowings

execute as @a[tag=wings] run function players:checkwings

execute as @a[tag=wings,advancements={weapons:wings=true,advancements:primordial/enter_yav=false,advancements:primordial/khive_angy=false}] unless predicate players:lodahr unless predicate players:adventure_areas run function players:givewings

execute as @a[tag=wings,advancements={weapons:wings=true,advancements:primordial/enter_yav=true,advancements:primordial/khive_angy=true}] unless predicate players:lodahr unless predicate players:adventure_areas run function players:givewings

execute as @a[advancements={weapons:wings=true,advancements:primordial/khive_angy=true,advancements:primordial/enter_yav=false}] run function players:nowings




execute as @e[type=glow_item_frame,tag=star] at @s if entity @a[distance=..1] run data modify entity @s Fixed set value 0 
execute as @e[type=glow_item_frame,tag=artifact] at @s if entity @a[distance=..1] run data modify entity @s Fixed set value 0 
execute as @e[type=glow_item_frame,tag=artifact] at @s if entity @a[distance=..1] run tag @s remove artifact
execute as @e[type=item,nbt={Item:{tag:{mquest:1b}}}] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:glow_item_frame"}},distance=..1]

execute as @e[type=item,nbt={Item:{id:"mythicmetals:starrite"}}] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:glow_item_frame"}},distance=..1]
execute as @e[type=item,nbt={Item:{id:"mythicmetals:starrite"}}] run data modify entity @s Glowing set value 1
execute as @e[type=item,nbt={Item:{id:"mythicmetals:star_platinum_nugget"}}] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:glow_item_frame"}},distance=..1]
execute as @e[type=item,nbt={Item:{id:"mythicmetals:star_platinum_nugget"}}] run data modify entity @s Glowing set value 1
execute as @e[type=glow_item_frame,tag=star] at @s if entity @a[distance=..1] run tag @s remove star


execute as @a if predicate players:hold_pocket if predicate players:lodahr run function dlc:items/refund_pocket_lodahr

execute as @a if predicate players:hold_waystone if predicate players:lodahr run function dlc:items/refund_waystone_lodahr

execute as @a[tag=supersoldier] if predicate players:hold_pocket run function dlc:items/refund_pocket_supersoldier

execute as @a[tag=supersoldier] if predicate players:hold_waystone run function dlc:items/refund_waystone_supersoldier

execute as @e[tag=obscythe] run execute at @s run function players:items/obv/entity

execute as @e[tag=zenith_beam] run execute at @s run function players:items/avsaber/entity

execute as @a as @s if predicate players:holding/avstate if predicate players:holding/zenith2 run scoreboard players add @s zenith_cd 1


execute as @a at @s if predicate players:in_em_arena run scoreboard players set @s obv_cool 2147483647
execute as @a as @s[scores={obv_cool=2000000000..}] run execute at @s unless predicate players:in_em_arena run scoreboard players reset @s obv_cool

execute positioned 26475.47 141.08 -56.00 if entity @a[distance=..15] run scoreboard players add #station timer 1
execute positioned 26475.47 141.08 -56.00 if entity @a[distance=..15] run execute as @e[tag=visual,distance=..5] if score #station timer matches 6.. run function particle:term/animate
execute positioned 26475.47 141.08 -56.00 if entity @a[distance=..15] if score #station timer matches 6.. run scoreboard players reset #station timer
execute positioned 26475.47 141.08 -56.00 if entity @a[distance=..15] run function dlc:modify/main