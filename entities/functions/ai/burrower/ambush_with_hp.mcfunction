playsound minecraft:dcustom.block.snow.break hostile @a ~ ~ ~ 2 1 0
# when copying changes from the spawn command, add the tag "Motion:[0.0d,0.5d,0.0d]"
execute if block ~ ~ ~ snow_block run summon minecraft:cave_spider ~ ~0.5 ~ {Motion:[0.0d,0.5d,0.0d],Tags:["burrower","day_aggro","new"],CustomName:'{"text":"Burrower"}',Team:"hide_name",ArmorItems:[{id:"leather_boots",Count:1b},{},{},{}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],Health:28f,Attributes:[{Name:generic.max_health,Base:28}]}
execute unless block ~ ~ ~ snow_block run summon minecraft:cave_spider ~ ~0.5 ~ {Motion:[0.0d,0.2d,0.0d],Tags:["burrower","day_aggro","new"],CustomName:'{"text":"Burrower"}',Team:"hide_name",ArmorItems:[{id:"leather_boots",Count:1b},{},{},{}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],Health:28f,Attributes:[{Name:generic.max_health,Base:28}]}

scoreboard players operation #tmp hp = @s hp
execute as @e[tag=new] run function entities:ai/burrower/init_hp
kill @s