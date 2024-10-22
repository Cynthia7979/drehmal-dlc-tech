#activates each time a wave mob is summoned
scoreboard players remove chemistry_mob_count foundry 1

#replace this summon command, make sure the mob has {Tags:["foundry_wave"]}
summon skeleton ~ ~ ~ {Silent:1b,Team:"foundry",DeathLootTable:"players:kill_events",PersistenceRequired:1b,Team:"foundry",Health:24f,Tags:["foundry_wave","valhalla_wave"],CustomName:'{"text":"Chemistry Unit"}',HandItems:[{id:"minecraft:bow",Count:1b,tag:{display:{Name:'{"text":"AvGun"}'},Enchantments:[{id:"minecraft:power",lvl:5s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:1,Operation:0,UUID:[I;1722011585,1682130088,-1410313119,-2063480891]}]}},{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionEffects:[{Id:18b,Amplifier:0b,Duration:200}],CustomPotionColor:4390996}}],HandDropChances:[-999.000F,-999.000F],ArmorItems:[{id:"minecraft:diamond_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:feather_falling",lvl:99s},{id:"minecraft:blast_protection",lvl:8s}]}},{id:"minecraft:diamond_leggings",Count:1b},{id:"minecraft:diamond_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1185631718,254758409,-1893322130,-586660364],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2NiOTQyNjNmNzEyZDkwMmRkMTM2MjUxZmQ0ZDhkMDA1ODkwYzY1N2FiNWVlNDkwY2NjOWJmNmVjMDliOGY1NyJ9fX0="}]}}}}],ArmorDropChances:[-999.000F,-999.000F,-999.000F,-999.000F],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:19999980,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:24},{Name:generic.knockback_resistance,Base:0.3},{Name:generic.attack_damage,Base:18}]}
particle minecraft:angry_villager ~ ~ ~ 0.4 0.4 0.4 0 10 normal

playsound minecraft:dcustom.entity.blaze.hurt hostile @a ~ ~ ~ 1 0.7