scoreboard players set @s dialogueTreeID 27
tellraw @s [{"text":"["},{"text":"???","color":"dark_red"},{"text":"] "},{"text":"Do you really revere the Burnt Lord so?"},{"text":"\n- [ Who are you? ]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger dialogueOption set 45"}},{"text":"\n- [ I do. All hail his Radiance! ]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger dialogueOption set 46"}},{"text":"\n- [ I do not. ]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger dialogueOption set 47"}}]