tag @s remove special
function core:rng
data modify storage drehmal:entities iceSpike set value {Pose:{Head:[0f,0f,0f]},Rotation:[0.0f,0.0f]}
function core:rng
scoreboard players operation #rand temp %= #10000 const
execute store result storage drehmal:entities iceSpike.Pose.Head[0] float 0.012 store result storage drehmal:entities iceSpike.Rotation[1] float 0.006 run scoreboard players remove #rand temp 5000
function core:rng
scoreboard players operation #rand temp %= #10000 const
execute store result storage drehmal:entities iceSpike.Rotation[0] float 0.072 run scoreboard players remove #rand temp 5000
tag @s remove special
data modify entity @s Rotation set from storage drehmal:entities iceSpike.Rotation
data modify entity @s Pose set from storage drehmal:entities iceSpike.Pose
execute at @s rotated as @s positioned ~ ~-1.7 ~ run teleport @s ^ ^-6 ^

data modify entity @s Pose.Head[0] set from entity @s Rotation[1]