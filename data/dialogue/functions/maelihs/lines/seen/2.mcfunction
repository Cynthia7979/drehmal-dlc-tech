scoreboard players set @s dialogueTreeID 23
tellraw @s [{"text":"["},{"text":"Maelihs","color":"dark_red"},{"text":"] "},{"text":"Regardless of their motivations, it appears to be an efficient arrangement, as they can focus on individual pursuits while being able to convene as-needed."},{"text":"\n- [ Let’s talk about something else. ]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger dialogueOption set 40"}}]