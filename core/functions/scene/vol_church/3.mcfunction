execute as @e[tag=vol_churchdude] run data merge entity @s {Pose:{RightArm:[270.0f,335.0f,18.0f],LeftLeg:[90.0f,25.0f,0.0f],Head:[8.0f,45.0f,0.0f],LeftArm:[270.0f,25.0f,342.0f],RightLeg:[90.0f,335.0f,0.0f],Body:[0.0f,0.0f,0.0f]},Rotation:[-90.0f,0.0f],Pos:[396.70d,81.8d,980.50d]}
execute in minecraft:lodahr run playsound minecraft:dcustom.entity.skeleton.step hostile @a 396 82 980 10
schedule function core:scene/vol_church/4 12t