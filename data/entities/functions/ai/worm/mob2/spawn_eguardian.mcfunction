summon elder_guardian ~ ~ ~ {Glowing:1b,Team:"bernice",DeathLootTable:"entities:mob/bern_drowned2",Health:25f,Tags:["bern_mob2"],Attributes:[{Name:generic.max_health,Base:25}],CustomName:'{"text":"Thrall of the Vehrniis"}',Glowing:1b}
particle glow_squid_ink ~ ~1 ~ 0.4 0.2 0.4 0 10
particle glow ~ ~1 ~ 0.4 0.2 0.4 0 10
execute positioned ~ ~1 ~ run function entities:ai/worm/mob1/ring
execute positioned ~ ~1 ~ run function entities:ai/worm/mob1/ring
execute positioned ~ ~1 ~ run function entities:ai/worm/mob1/ring
playsound minecraft:dcustom.entity.squid.squirt hostile @a ~ ~ ~ 5 1