playsound minecraft:dcustom.block.bell.resonate master @a -2587 21 2214 99999999999999999 1 1
scoreboard players set #compass.nospawn bool 1
scoreboard players reset #lodahr_compass_text bool
kill @e[type=item,tag=terminus.compass]
schedule function terminus:gifts/lodahr/1 2s