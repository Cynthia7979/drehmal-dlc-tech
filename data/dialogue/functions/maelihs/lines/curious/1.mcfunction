scoreboard players set @s dialogueTreeID 8
tellraw @s [{"text":"["},{"text":"Maelihs","color":"dark_red"},{"text":"] "},{"text":"I was… I was curious myself. I… traveled far, to a place beyond our vision and our time, wreathed in chromatic fury."},{"text":"\n- [ Where did you go? ]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger dialogueOption set 17"}},{"text":"\n- [ I see. ]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger dialogueOption set 18"}}]