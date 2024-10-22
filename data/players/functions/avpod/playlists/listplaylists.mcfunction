data modify storage drehmal:players tempList set from storage drehmal:players avpodPlaylists[0].saved

scoreboard players operation #clearrows3 temp = @s avpod.listpage
execute if score #clearrows3 temp matches 1.. run function players:avpod/playlists/clearrows3

scoreboard players set #emptyrows temp 11
execute store result score #remove temp if data storage drehmal:players tempList[]
scoreboard players operation #emptyrows temp -= #remove temp

#execute if data storage drehmal:players tempList[0] run tellraw @s ["",{"nbt":"tempList[0].name","storage":"drehmal:players","interpret":true},{"text":" [Play]","color":"green","clickEvent":{"action":"run_command","value":"/trigger avpod.menu_press set 0"},"hoverEvent":{"action":"show_text","contents":[{"text":"Play ","color":"gray"},{"nbt":"tempList[0].name","storage":"drehmal:players","interpret":true},{"text":".","color":"gray"},"\n",{"text":"Click to play!","color":"yellow"}]}},{"text":" [Edit]","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger avpod.menu_press set 0"},"hoverEvent":{"action":"show_text","contents":[{"text":"Edit ","color":"gray"},{"nbt":"tempList[0].name","storage":"drehmal:players","interpret":true},{"text":".","color":"gray"},"\n",{"text":"This will overwrite whatever you are currently editing!","color":"red"},"\n",{"text":"Click to edit!","color":"yellow"}]}}]
execute if data storage drehmal:players tempList[0] run tellraw @s ["",{"nbt":"tempList[0].name","storage":"drehmal:players","interpret":true},{"text":" [Play]","color":"green","clickEvent":{"action":"run_command","value":"/trigger avpod.menu_press set 11"},"hoverEvent":{"action":"show_text","contents":[{"text":"Play ","color":"gray"},{"nbt":"tempList[0].name","storage":"drehmal:players","interpret":true},{"text":".","color":"gray"},"\n",{"text":"Click to play!","color":"yellow"}]}},{"text":" [Edit]","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger avpod.menu_press set 22"},"hoverEvent":{"action":"show_text","contents":[{"text":"Edit ","color":"gray"},{"nbt":"tempList[0].name","storage":"drehmal:players","interpret":true},{"text":".","color":"gray"},"\n",{"text":"This will overwrite whatever you are currently editing!","color":"red"},"\n",{"text":"Click to edit!","color":"yellow"}]}},{"text":" [Delete]","color":"red","clickEvent":{"action":"run_command","value":"/trigger avpod.menu_press set 33"},"hoverEvent":{"action":"show_text","contents":[{"text":"Delete ","color":"gray"},{"nbt":"tempList[0].name","storage":"drehmal:players","interpret":true},{"text":".","color":"gray"},"\n",{"text":"This action is not reversable!","color":"red"},"\n",{"text":"Click to delete!","color":"yellow"}]}}]

execute if data storage drehmal:players tempList[1] run tellraw @s ["",{"nbt":"tempList[1].name","storage":"drehmal:players","interpret":true},{"text":" [Play]","color":"green","clickEvent":{"action":"run_command","value":"/trigger avpod.menu_press set 12"},"hoverEvent":{"action":"show_text","contents":[{"text":"Play ","color":"gray"},{"nbt":"tempList[1].name","storage":"drehmal:players","interpret":true},{"text":".","color":"gray"},"\n",{"text":"Click to play!","color":"yellow"}]}},{"text":" [Edit]","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger avpod.menu_press set 23"},"hoverEvent":{"action":"show_text","contents":[{"text":"Edit ","color":"gray"},{"nbt":"tempList[1].name","storage":"drehmal:players","interpret":true},{"text":".","color":"gray"},"\n",{"text":"This will overwrite whatever you are currently editing!","color":"red"},"\n",{"text":"Click to edit!","color":"yellow"}]}},{"text":" [Delete]","color":"red","clickEvent":{"action":"run_command","value":"/trigger avpod.menu_press set 34"},"hoverEvent":{"action":"show_text","contents":[{"text":"Delete ","color":"gray"},{"nbt":"tempList[1].name","storage":"drehmal:players","interpret":true},{"text":".","color":"gray"},"\n",{"text":"This action is not reversable!","color":"red"},"\n",{"text":"Click to delete!","color":"yellow"}]}}]

execute if data storage drehmal:players tempList[2] run tellraw @s ["",{"nbt":"tempList[2].name","storage":"drehmal:players","interpret":true},{"text":" [Play]","color":"green","clickEvent":{"action":"run_command","value":"/trigger avpod.menu_press set 13"},"hoverEvent":{"action":"show_text","contents":[{"text":"Play ","color":"gray"},{"nbt":"tempList[2].name","storage":"drehmal:players","interpret":true},{"text":".","color":"gray"},"\n",{"text":"Click to play!","color":"yellow"}]}},{"text":" [Edit]","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger avpod.menu_press set 24"},"hoverEvent":{"action":"show_text","contents":[{"text":"Edit ","color":"gray"},{"nbt":"tempList[2].name","storage":"drehmal:players","interpret":true},{"text":".","color":"gray"},"\n",{"text":"This will overwrite whatever you are currently editing!","color":"red"},"\n",{"text":"Click to edit!","color":"yellow"}]}},{"text":" [Delete]","color":"red","clickEvent":{"action":"run_command","value":"/trigger avpod.menu_press set 35"},"hoverEvent":{"action":"show_text","contents":[{"text":"Delete ","color":"gray"},{"nbt":"tempList[2].name","storage":"drehmal:players","interpret":true},{"text":".","color":"gray"},"\n",{"text":"This action is not reversable!","color":"red"},"\n",{"text":"Click to delete!","color":"yellow"}]}}]

execute if data storage drehmal:players tempList[3] run tellraw @s ["",{"nbt":"tempList[3].name","storage":"drehmal:players","interpret":true},{"text":" [Play]","color":"green","clickEvent":{"action":"run_command","value":"/trigger avpod.menu_press set 14"},"hoverEvent":{"action":"show_text","contents":[{"text":"Play ","color":"gray"},{"nbt":"tempList[3].name","storage":"drehmal:players","interpret":true},{"text":".","color":"gray"},"\n",{"text":"Click to play!","color":"yellow"}]}},{"text":" [Edit]","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger avpod.menu_press set 25"},"hoverEvent":{"action":"show_text","contents":[{"text":"Edit ","color":"gray"},{"nbt":"tempList[3].name","storage":"drehmal:players","interpret":true},{"text":".","color":"gray"},"\n",{"text":"This will overwrite whatever you are currently editing!","color":"red"},"\n",{"text":"Click to edit!","color":"yellow"}]}},{"text":" [Delete]","color":"red","clickEvent":{"action":"run_command","value":"/trigger avpod.menu_press set 36"},"hoverEvent":{"action":"show_text","contents":[{"text":"Delete ","color":"gray"},{"nbt":"tempList[3].name","storage":"drehmal:players","interpret":true},{"text":".","color":"gray"},"\n",{"text":"This action is not reversable!","color":"red"},"\n",{"text":"Click to delete!","color":"yellow"}]}}]

execute if data storage drehmal:players tempList[4] run tellraw @s ["",{"nbt":"tempList[4].name","storage":"drehmal:players","interpret":true},{"text":" [Play]","color":"green","clickEvent":{"action":"run_command","value":"/trigger avpod.menu_press set 15"},"hoverEvent":{"action":"show_text","contents":[{"text":"Play ","color":"gray"},{"nbt":"tempList[4].name","storage":"drehmal:players","interpret":true},{"text":".","color":"gray"},"\n",{"text":"Click to play!","color":"yellow"}]}},{"text":" [Edit]","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger avpod.menu_press set 26"},"hoverEvent":{"action":"show_text","contents":[{"text":"Edit ","color":"gray"},{"nbt":"tempList[4].name","storage":"drehmal:players","interpret":true},{"text":".","color":"gray"},"\n",{"text":"This will overwrite whatever you are currently editing!","color":"red"},"\n",{"text":"Click to edit!","color":"yellow"}]}},{"text":" [Delete]","color":"red","clickEvent":{"action":"run_command","value":"/trigger avpod.menu_press set 37"},"hoverEvent":{"action":"show_text","contents":[{"text":"Delete ","color":"gray"},{"nbt":"tempList[4].name","storage":"drehmal:players","interpret":true},{"text":".","color":"gray"},"\n",{"text":"This action is not reversable!","color":"red"},"\n",{"text":"Click to delete!","color":"yellow"}]}}]

execute if data storage drehmal:players tempList[5] run tellraw @s ["",{"nbt":"tempList[5].name","storage":"drehmal:players","interpret":true},{"text":" [Play]","color":"green","clickEvent":{"action":"run_command","value":"/trigger avpod.menu_press set 16"},"hoverEvent":{"action":"show_text","contents":[{"text":"Play ","color":"gray"},{"nbt":"tempList[5].name","storage":"drehmal:players","interpret":true},{"text":".","color":"gray"},"\n",{"text":"Click to play!","color":"yellow"}]}},{"text":" [Edit]","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger avpod.menu_press set 27"},"hoverEvent":{"action":"show_text","contents":[{"text":"Edit ","color":"gray"},{"nbt":"tempList[5].name","storage":"drehmal:players","interpret":true},{"text":".","color":"gray"},"\n",{"text":"This will overwrite whatever you are currently editing!","color":"red"},"\n",{"text":"Click to edit!","color":"yellow"}]}},{"text":" [Delete]","color":"red","clickEvent":{"action":"run_command","value":"/trigger avpod.menu_press set 38"},"hoverEvent":{"action":"show_text","contents":[{"text":"Delete ","color":"gray"},{"nbt":"tempList[5].name","storage":"drehmal:players","interpret":true},{"text":".","color":"gray"},"\n",{"text":"This action is not reversable!","color":"red"},"\n",{"text":"Click to delete!","color":"yellow"}]}}]

execute if data storage drehmal:players tempList[6] run tellraw @s ["",{"nbt":"tempList[6].name","storage":"drehmal:players","interpret":true},{"text":" [Play]","color":"green","clickEvent":{"action":"run_command","value":"/trigger avpod.menu_press set 17"},"hoverEvent":{"action":"show_text","contents":[{"text":"Play ","color":"gray"},{"nbt":"tempList[6].name","storage":"drehmal:players","interpret":true},{"text":".","color":"gray"},"\n",{"text":"Click to play!","color":"yellow"}]}},{"text":" [Edit]","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger avpod.menu_press set 28"},"hoverEvent":{"action":"show_text","contents":[{"text":"Edit ","color":"gray"},{"nbt":"tempList[6].name","storage":"drehmal:players","interpret":true},{"text":".","color":"gray"},"\n",{"text":"This will overwrite whatever you are currently editing!","color":"red"},"\n",{"text":"Click to edit!","color":"yellow"}]}},{"text":" [Delete]","color":"red","clickEvent":{"action":"run_command","value":"/trigger avpod.menu_press set 39"},"hoverEvent":{"action":"show_text","contents":[{"text":"Delete ","color":"gray"},{"nbt":"tempList[6].name","storage":"drehmal:players","interpret":true},{"text":".","color":"gray"},"\n",{"text":"This action is not reversable!","color":"red"},"\n",{"text":"Click to delete!","color":"yellow"}]}}]

execute if data storage drehmal:players tempList[7] run tellraw @s ["",{"nbt":"tempList[7].name","storage":"drehmal:players","interpret":true},{"text":" [Play]","color":"green","clickEvent":{"action":"run_command","value":"/trigger avpod.menu_press set 18"},"hoverEvent":{"action":"show_text","contents":[{"text":"Play ","color":"gray"},{"nbt":"tempList[7].name","storage":"drehmal:players","interpret":true},{"text":".","color":"gray"},"\n",{"text":"Click to play!","color":"yellow"}]}},{"text":" [Edit]","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger avpod.menu_press set 29"},"hoverEvent":{"action":"show_text","contents":[{"text":"Edit ","color":"gray"},{"nbt":"tempList[7].name","storage":"drehmal:players","interpret":true},{"text":".","color":"gray"},"\n",{"text":"This will overwrite whatever you are currently editing!","color":"red"},"\n",{"text":"Click to edit!","color":"yellow"}]}},{"text":" [Delete]","color":"red","clickEvent":{"action":"run_command","value":"/trigger avpod.menu_press set 40"},"hoverEvent":{"action":"show_text","contents":[{"text":"Delete ","color":"gray"},{"nbt":"tempList[7].name","storage":"drehmal:players","interpret":true},{"text":".","color":"gray"},"\n",{"text":"This action is not reversable!","color":"red"},"\n",{"text":"Click to delete!","color":"yellow"}]}}]

execute if data storage drehmal:players tempList[8] run tellraw @s ["",{"nbt":"tempList[8].name","storage":"drehmal:players","interpret":true},{"text":" [Play]","color":"green","clickEvent":{"action":"run_command","value":"/trigger avpod.menu_press set 19"},"hoverEvent":{"action":"show_text","contents":[{"text":"Play ","color":"gray"},{"nbt":"tempList[8].name","storage":"drehmal:players","interpret":true},{"text":".","color":"gray"},"\n",{"text":"Click to play!","color":"yellow"}]}},{"text":" [Edit]","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger avpod.menu_press set 30"},"hoverEvent":{"action":"show_text","contents":[{"text":"Edit ","color":"gray"},{"nbt":"tempList[8].name","storage":"drehmal:players","interpret":true},{"text":".","color":"gray"},"\n",{"text":"This will overwrite whatever you are currently editing!","color":"red"},"\n",{"text":"Click to edit!","color":"yellow"}]}},{"text":" [Delete]","color":"red","clickEvent":{"action":"run_command","value":"/trigger avpod.menu_press set 41"},"hoverEvent":{"action":"show_text","contents":[{"text":"Delete ","color":"gray"},{"nbt":"tempList[8].name","storage":"drehmal:players","interpret":true},{"text":".","color":"gray"},"\n",{"text":"This action is not reversable!","color":"red"},"\n",{"text":"Click to delete!","color":"yellow"}]}}]

execute if data storage drehmal:players tempList[9] run tellraw @s ["",{"nbt":"tempList[9].name","storage":"drehmal:players","interpret":true},{"text":" [Play]","color":"green","clickEvent":{"action":"run_command","value":"/trigger avpod.menu_press set 20"},"hoverEvent":{"action":"show_text","contents":[{"text":"Play ","color":"gray"},{"nbt":"tempList[9].name","storage":"drehmal:players","interpret":true},{"text":".","color":"gray"},"\n",{"text":"Click to play!","color":"yellow"}]}},{"text":" [Edit]","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger avpod.menu_press set 31"},"hoverEvent":{"action":"show_text","contents":[{"text":"Edit ","color":"gray"},{"nbt":"tempList[9].name","storage":"drehmal:players","interpret":true},{"text":".","color":"gray"},"\n",{"text":"This will overwrite whatever you are currently editing!","color":"red"},"\n",{"text":"Click to edit!","color":"yellow"}]}},{"text":" [Delete]","color":"red","clickEvent":{"action":"run_command","value":"/trigger avpod.menu_press set 42"},"hoverEvent":{"action":"show_text","contents":[{"text":"Delete ","color":"gray"},{"nbt":"tempList[9].name","storage":"drehmal:players","interpret":true},{"text":".","color":"gray"},"\n",{"text":"This action is not reversable!","color":"red"},"\n",{"text":"Click to delete!","color":"yellow"}]}}]

execute if data storage drehmal:players tempList[10] run tellraw @s ["",{"nbt":"tempList[10].name","storage":"drehmal:players","interpret":true},{"text":" [Play]","color":"green","clickEvent":{"action":"run_command","value":"/trigger avpod.menu_press set 21"},"hoverEvent":{"action":"show_text","contents":[{"text":"Play ","color":"gray"},{"nbt":"tempList[10].name","storage":"drehmal:players","interpret":true},{"text":".","color":"gray"},"\n",{"text":"Click to play!","color":"yellow"}]}},{"text":" [Edit]","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger avpod.menu_press set 32"},"hoverEvent":{"action":"show_text","contents":[{"text":"Edit ","color":"gray"},{"nbt":"tempList[10].name","storage":"drehmal:players","interpret":true},{"text":".","color":"gray"},"\n",{"text":"This will overwrite whatever you are currently editing!","color":"red"},"\n",{"text":"Click to edit!","color":"yellow"}]}},{"text":" [Delete]","color":"red","clickEvent":{"action":"run_command","value":"/trigger avpod.menu_press set 43"},"hoverEvent":{"action":"show_text","contents":[{"text":"Delete ","color":"gray"},{"nbt":"tempList[10].name","storage":"drehmal:players","interpret":true},{"text":".","color":"gray"},"\n",{"text":"This action is not reversable!","color":"red"},"\n",{"text":"Click to delete!","color":"yellow"}]}}]

execute if score #emptyrows temp matches 11.. run tellraw @s " "
execute if score #emptyrows temp matches 10.. run tellraw @s " "
execute if score #emptyrows temp matches 9.. run tellraw @s " "
execute if score #emptyrows temp matches 8.. run tellraw @s " "
execute if score #emptyrows temp matches 7.. run tellraw @s " "
execute if score #emptyrows temp matches 6.. run tellraw @s " "
execute if score #emptyrows temp matches 5.. run tellraw @s " "
execute if score #emptyrows temp matches 4.. run tellraw @s " "
execute if score #emptyrows temp matches 3.. run tellraw @s " "
execute if score #emptyrows temp matches 2.. run tellraw @s " "
execute if score #emptyrows temp matches 1.. run tellraw @s " "


execute if score @s avpod.listpage matches 1.. if score #emptyrows temp matches ..-1 run tellraw @s [""," -.-",{"text":" [Previous Page]","color":"red","clickEvent":{"action":"run_command","value":"/trigger avpod.menu_press set 9"}},{"text":" [Next Page]","color":"green","clickEvent":{"action":"run_command","value":"/trigger avpod.menu_press set 10"}}," -.-"]
execute if score @s avpod.listpage matches 0 if score #emptyrows temp matches ..-1 run tellraw @s [""," -.-",{"text":" [Previous Page]","color":"dark_gray"},{"text":" [Next Page]","color":"green","clickEvent":{"action":"run_command","value":"/trigger avpod.menu_press set 10"}}," -.-"]
execute if score @s avpod.listpage matches 1.. unless score #emptyrows temp matches ..-1 run tellraw @s [""," -.-",{"text":" [Previous Page]","color":"red","clickEvent":{"action":"run_command","value":"/trigger avpod.menu_press set 9"}},{"text":" [Next Page]","color":"dark_gray"}," -.-"]
execute if score @s avpod.listpage matches 0 unless score #emptyrows temp matches ..-1 run tellraw @s [""," -.-",{"text":" [Previous Page]","color":"dark_gray"},{"text":" [Next Page]","color":"dark_gray"}," -.-"]

tellraw @s " "