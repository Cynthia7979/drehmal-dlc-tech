
execute if score #liked? temp matches 1 run scoreboard players operation #dev_add temp *= #-5 const
execute if score #liked? temp matches 2 run scoreboard players operation #dev_add temp *= #-1 const
execute if score #liked? temp matches 3 run scoreboard players operation #dev_add temp *= #6 const
execute if score #liked? temp matches 4 run scoreboard players operation #dev_add temp *= #16 const
execute if score #liked? temp matches 5 run scoreboard players operation #dev_add temp *= #40 const

execute if score #liked? temp matches 1.. run scoreboard players operation @s d.lai += #dev_add temp

execute if score @s d.lai matches 100.. unless entity @s[tag=lai.0] run function entities:dropped_items/devotion/give/lai/0
execute if score @s d.lai matches 200.. unless entity @s[tag=lai.1] run function entities:dropped_items/devotion/give/lai/1
execute if score @s d.lai matches 300.. unless entity @s[tag=lai.2] run function entities:dropped_items/devotion/give/lai/2
execute if score @s d.lai matches 400.. unless entity @s[tag=lai.3] run function entities:dropped_items/devotion/give/lai/3
execute if score @s d.lai matches 500.. unless entity @s[tag=lai.4] run function entities:dropped_items/devotion/give/lai/4
execute if score @s d.lai matches 600.. unless entity @s[tag=lai.5] run function entities:dropped_items/devotion/give/lai/5
execute if score @s d.lai matches 700.. unless entity @s[tag=lai.6] run function entities:dropped_items/devotion/give/lai/6
execute if score @s d.lai matches 800.. unless entity @s[tag=lai.7] run function entities:dropped_items/devotion/give/lai/7
execute if score @s d.lai matches 900.. unless entity @s[tag=lai.8] run function entities:dropped_items/devotion/give/lai/8
execute if score @s d.lai matches 1000.. unless entity @s[tag=lai.9] run function entities:dropped_items/devotion/give/lai/9
#execute if score @s d.lai matches 1100.. unless entity @s[tag=lai.10] run function entities:dropped_items/devotion/give/lai/10
#execute if score @s d.lai matches 1200.. unless entity @s[tag=lai.11] run function entities:dropped_items/devotion/give/lai/11
#execute if score @s d.lai matches 1300.. unless entity @s[tag=lai.12] run function entities:dropped_items/devotion/give/lai/12
#execute if score @s d.lai matches 1400.. unless entity @s[tag=lai.13] run function entities:dropped_items/devotion/give/lai/13
#execute if score @s d.lai matches 1500.. unless entity @s[tag=lai.14] run function entities:dropped_items/devotion/give/lai/14

execute if score #liked? temp matches 1 run tellraw @s {"text":"Your offering fills the room with enmity. Your devotion to Lai has been damaged greatly.","color":"dark_red","italic":true}
execute if score #liked? temp matches 1 run playsound minecraft:dcustom.entity.blaze.death ambient @s ~ ~ ~ 1 2
execute if score #liked? temp matches 2 run tellraw @s {"text":"Your offering fills the room with a discordant aura. Your devotion to Lai has been damaged.","color":"red","italic":true}
execute if score #liked? temp matches 2 run playsound minecraft:dcustom.entity.blaze.hurt ambient @s ~ ~ ~ 1 1.3
execute if score #liked? temp matches 3 run tellraw @s {"text":"Your offering fills the room with a pleasing aura. Your devotion to Lai has deepened slightly.","color":"yellow","italic":true}
execute if score #liked? temp matches 3 run playsound minecraft:dcustom.entity.arrow.hit_player ambient @s ~ ~ ~ 1 2
execute if score #liked? temp matches 4 run tellraw @s {"text":"Your offering fills the room with bliss. Your devotion to Lai has deepened.","color":"green","italic":true}
execute if score #liked? temp matches 4 run playsound minecraft:dcustom.entity.arrow.hit_player ambient @s ~ ~ ~ 1 1
execute if score #liked? temp matches 5 run tellraw @s {"text":"Your offering fills the room with overwhelming joy. Your devotion to Lai has deepened greatly.","color":"dark_green","italic":true}
execute if score #liked? temp matches 5 run playsound minecraft:dcustom.entity.player.levelup ambient @s ~ ~ ~ 1 1.2