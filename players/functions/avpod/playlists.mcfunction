function players:avpod/playlists/player

execute unless score @s avpod.listpage matches 0.. run scoreboard players set @s avpod.listpage 0
function players:avpod/clearchat
tellraw @s ["","-.-.-.-.-.-.-.-",{"text":" Av","color":"yellow"},{"text":"Pod ","bold":true,"color":"light_purple"},"-.-.-.-.-.-.-.-"]

tellraw @s " "

execute if score @s avpod.playlists matches 1.. run function players:avpod/playlists/listplaylists
execute unless score @s avpod.playlists matches 1.. run function players:avpod/noplaylists

tellraw @s [""," -.-.-.-.-. ",{"text":"[Go Home]","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger avpod.menu_press set 6"}}," .-.-.-.-.-"]
tellraw @s " "

tellraw @s ["","-.-.-.-.-.-.-.-",{"text":" Av","color":"yellow"},{"text":"Pod ","bold":true,"color":"light_purple"},"-.-.-.-.-.-.-.-"]
tellraw @s " "