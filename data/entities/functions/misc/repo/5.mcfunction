setblock -159 11 1618 lime_concrete
setblock -159 12 1618 light[level=12]
setblock -159 10 1618 minecraft:repeating_command_block{Command:"/particle minecraft:happy_villager ~ ~1.5 ~ 0.1 0.45 0.1 0 1",auto:1b}

execute in minecraft:lodahr run setblock 522 37 -817 lime_concrete
execute in minecraft:lodahr run setblock 522 38 -817 light[level=12]
execute in minecraft:lodahr run setblock 522 36 -817 minecraft:repeating_command_block{Command:"/particle minecraft:happy_villager ~ ~1.5 ~ 0.1 0.45 0.1 0 1",auto:1b}

forceload remove -198 1620 -158 1661
execute in minecraft:lodahr run forceload remove 509 -813
execute in minecraft:lodahr run forceload remove 509 -817
execute in minecraft:lodahr run forceload remove 522 -817