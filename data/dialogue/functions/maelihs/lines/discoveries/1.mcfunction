scoreboard players set @s dialogueTreeID 7
tellraw @s [{"text":"["},{"text":"Maelihs","color":"dark_red"},{"text":"] "},{"text":"What am I to you?"},{"text":"\n- [ Sorry. Let’s talk about something else. ]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger dialogueOption set 15"}},{"text":"\n- [ I was just curious. ]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger dialogueOption set 16"}}]