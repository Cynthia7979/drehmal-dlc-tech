
execute if score #liked? temp matches 1 run scoreboard players operation #dev_add temp *= #-5 const
execute if score #liked? temp matches 2 run scoreboard players operation #dev_add temp *= #-1 const
execute if score #liked? temp matches 3 run scoreboard players operation #dev_add temp *= #5 const
execute if score #liked? temp matches 4 run scoreboard players operation #dev_add temp *= #18 const
execute if score #liked? temp matches 5 run scoreboard players operation #dev_add temp *= #50 const

execute if score #liked? temp matches 1.. run scoreboard players operation @s d.virtuo += #dev_add temp

execute if score @s d.virtuo matches 100.. unless entity @s[tag=virtuo.0] run function entities:dropped_items/devotion/give/virtuo/0
execute if score @s d.virtuo matches 200.. unless entity @s[tag=virtuo.1] run function entities:dropped_items/devotion/give/virtuo/1
execute if score @s d.virtuo matches 300.. unless entity @s[tag=virtuo.2] run function entities:dropped_items/devotion/give/virtuo/2
execute if score @s d.virtuo matches 400.. unless entity @s[tag=virtuo.3] run function entities:dropped_items/devotion/give/virtuo/3
execute if score @s d.virtuo matches 500.. unless entity @s[tag=virtuo.4] run function entities:dropped_items/devotion/give/virtuo/4
execute if score @s d.virtuo matches 600.. unless entity @s[tag=virtuo.5] run function entities:dropped_items/devotion/give/virtuo/5
execute if score @s d.virtuo matches 700.. unless entity @s[tag=virtuo.6] run function entities:dropped_items/devotion/give/virtuo/6
execute if score @s d.virtuo matches 800.. unless entity @s[tag=virtuo.7] run function entities:dropped_items/devotion/give/virtuo/7
execute if score @s d.virtuo matches 900.. unless entity @s[tag=virtuo.8] run function entities:dropped_items/devotion/give/virtuo/8
execute if score @s d.virtuo matches 1000.. unless entity @s[tag=virtuo.9] run function entities:dropped_items/devotion/give/virtuo/9
#execute if score @s d.virtuo matches 1100.. unless entity @s[tag=virtuo.10] run function entities:dropped_items/devotion/give/virtuo/10
#execute if score @s d.virtuo matches 1200.. unless entity @s[tag=virtuo.11] run function entities:dropped_items/devotion/give/virtuo/11
#execute if score @s d.virtuo matches 1300.. unless entity @s[tag=virtuo.12] run function entities:dropped_items/devotion/give/virtuo/12
#execute if score @s d.virtuo matches 1400.. unless entity @s[tag=virtuo.13] run function entities:dropped_items/devotion/give/virtuo/13
#execute if score @s d.virtuo matches 1500.. unless entity @s[tag=virtuo.14] run function entities:dropped_items/devotion/give/virtuo/14

execute if score #liked? temp matches 1 run tellraw @s {"text":"Your offering fills the room with enmity. Your devotion to Virtuo has been damaged greatly.","color":"dark_red","italic":true}
execute if score #liked? temp matches 1 run playsound minecraft:dcustom.entity.blaze.death ambient @s ~ ~ ~ 1 2
execute if score #liked? temp matches 2 run tellraw @s {"text":"Your offering fills the room with a discordant aura. Your devotion to Virtuo has been damaged.","color":"red","italic":true}
execute if score #liked? temp matches 2 run playsound minecraft:dcustom.entity.blaze.hurt ambient @s ~ ~ ~ 1 1.3
execute if score #liked? temp matches 3 run tellraw @s {"text":"Your offering fills the room with a pleasing aura. Your devotion to Virtuo has deepened slightly.","color":"yellow","italic":true}
execute if score #liked? temp matches 3 run playsound minecraft:dcustom.entity.arrow.hit_player ambient @s ~ ~ ~ 1 2
execute if score #liked? temp matches 4 run tellraw @s {"text":"Your offering fills the room with bliss. Your devotion to Virtuo has deepened.","color":"green","italic":true}
execute if score #liked? temp matches 4 run playsound minecraft:dcustom.entity.arrow.hit_player ambient @s ~ ~ ~ 1 1
execute if score #liked? temp matches 5 run tellraw @s {"text":"Your offering fills the room with overwhelming joy. Your devotion to Virtuo has deepened greatly.","color":"dark_green","italic":true}
execute if score #liked? temp matches 5 run playsound minecraft:dcustom.entity.player.levelup ambient @s ~ ~ ~ 1 1.2