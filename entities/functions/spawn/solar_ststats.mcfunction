data modify entity @s ArmorItems[0].tag.UUID set from storage drehmal:entities tempUuid
data modify storage drehmal:entities tempUuid set from entity @s UUID
execute store result score @s uuid0 run data get storage drehmal:entities tempUuid[0]
execute store result score @s uuid1 run data get storage drehmal:entities tempUuid[1]
execute store result score @s uuid2 run data get storage drehmal:entities tempUuid[2]
execute store result score @s uuid3 run data get storage drehmal:entities tempUuid[3]
tag @s remove special