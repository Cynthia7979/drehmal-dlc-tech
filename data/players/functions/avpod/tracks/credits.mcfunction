function players:music/reset
tag @s remove looping
tag @s remove playlist

scoreboard players set @s avpod.songid 56
function players:avpod/menu
function players:music/credits