execute if predicate entities:tenvoy50 run particle minecraft:electric_spark
execute positioned ^ ^ ^0.1 unless entity @e[type=marker,tag=mb.light,tag=!mb.light.old,distance=..0.25] run function players:items/mb/lightning/raycast