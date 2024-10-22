tag @s add at
execute as @s[tag=!finish] run function dlc:modify/charge/1
execute as @s[tag=!finish] run schedule function dlc:modify/mainhand/at_p 3.5s
data modify block 1000003 63 1000002 front_text.messages[1] set value '[{"nbt":"HandItems[0].tag.display.Name","entity":"@e[type=armor_stand,tag=at,limit=1]","interpret":true},{"text":"⁺ᴀᴛ"}]'
data modify entity @s HandItems[0].tag.display.Name set from block 1000003 63 1000002 front_text.messages[1]
item modify entity @s weapon.mainhand dlc:mainhand/at_modify2
execute as @e[tag=valid] unless predicate players:holding/upgrade1 run item modify entity @s weapon.mainhand dlc:upgrade1
tag @s remove at
execute as @e[tag=finish] run tag @s remove finish