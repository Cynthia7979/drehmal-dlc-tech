function emis:reset
function core:rng
#HI KEEKO#
#CREATE ALL ENTRIES IN THIS STYLE: {type:1,data:1}
#type=1 <- this means that the game is looking for an attack. data is the particular attack
#type=2 <- this means that the game is looking for a pause. data means how many ticks of waiting before the next attack
#
#spike_var: This is only used for data:9, or the spike calldown attack. specifies the spike calldown pattern
#
#this score is the current percentile hp of the emissary. #hp% temp
#example: execute if score #hp% temp matches ..50 run ...
#^^ only runs if the emissaries hp is below 50%
#
#data:1 = stomp attack (35t)
#data:2 = sweep attack (37t)
#data:3 = charge attack (26t)
#data:4 = scythe throw (35t)
#data:5 = backwards teleport (5t)
#data:6 = forwards teleport (5)
#data:7 = alt sweep attack (26t)
#data:8 = meteor attack
#data:9 = calldown attack
#data:10 = black hole
#

#BETTER RANDOMNESS#
#Instead of a series of coin flips, make every possibility equally likely#
#
#Step 1: run /function core:rng. this sets a random number for scoreboard "temp" for fake player "#rand" to some number between 0 and 200 million, roughly
#Step 2: use remainder division to get a usable number. if we have three attacks and we want them to be equally likely, then scoreboard players operation #rand temp %= #3 const
#Step 3: use the new score. execute if score #rand temp matches 0 do something, next line execute if score #rand temp matches 1 do something different, yada yada. you can still have distance checks for players, those still work. if you need more explanation then yeahh just ask

#BETTER DOCUMENTATION#
#
# -------------------- Part 2: Scoreboards --------------------
#
#In minecraft command code, scoreboards are our variables. Almost everything we do in commands uses scoreboards. Scoreboards are stored on entities, which means that any given entity will have its own unique scores. However, once unique thing we can do with scores is set them to specific players with specific names. Take the command below:
#
#scoreboard players set 123itsame temp 1
#
#That command will set my temp score to 1. But what is very interesting is what happens when you try to set a score for a player that does not exist. For example, the following:
#
#scoreboard players set #####EXISTS##### temp 1
#
#Usernames with # characters dont exist, and obviously that player isnt online, but we can still set and modify their scores. This technique, called "fake player scores," is utterly invaluable to commands.
#
#Part 1: Randomness
#
#Drehmal currently uses something called Linear Congruental Generation for its randomness. LCG is the most basic form of randomness that works well given our limitations. The function core:rng, which is what you will be using for rng, uses the principle below:
#
# New value = (seed1(current value) + seed2) mod (max)
#
#The key to this is the "mod" operator. Modulus is remainder division, or division where instead of the quotient being returned, the remainder is. So while 37 / 6 is 6 in MCC, 37 % 6 is 1 (% is the modulus operator)
#
#The core:rng function will provide a useable fake player score of #rand temp. This will always be an enormous value, which to make usable we have to modify slightly. This is where we need remainder division.
#If we want to have a sitiation where there are three possible outcomes with equal likliehood, then we do the following:
#
#function core:rng
#scoreboard players operation #rand temp %= #3 const
#execute if score #rand temp matches 0 run say 1
#execute if score #rand temp matches 1 run say 2
#execute if score #rand temp matches 2 run say 3
#
#If we want to heavily bias the third outcome, we can do this:
#
#function core:rng
#scoreboard players operation #rand temp %= #10 const
#execute if score #rand temp matches 0 run say 1
#execute if score #rand temp matches 1 run say 2
#execute if score #rand temp matches 2..9 run say 3
#
#Remember that each time you run core:rng, #rand temp will be reset. For this reason, I'd adivse structuring your distance+health checks such that it is only run once per function activation. Also, remember that %= cannot return a value greater or equal to the divisor. In the above examples, the greatest remainder that %= 3 can produce is 2, and the greatest that %= 10 can produce is 9.
#
# -------------------- Part 2: Implementation --------------------
#
#That should be enough for theory, time for practice. Using this new randomness method, a surprisingly small amount of change is actually needed. To make things simpler, I would just run core:rng once, at the start of the function, and only ever run a %= operation on it once each function. For example:
#
#execute if score #hp% temp matches 86.. unless score #decided temp matches 1 if entity @p[distance=..6] run scoreboard players operation #rand temp %= #4 const
#
#execute if score #hp% temp matches 86.. unless score #decided temp matches 1 if entity @p[distance=..6] if score #rand temp matches 0 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:2,fast:1},{type:2,data:20},{type:1,data:1,fast:1},{type:2,data:60}]}
#
#execute if score #hp% temp matches 86.. unless score #decided temp matches 1 if entity @p[distance=..6] if score #rand temp matches 1 success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:1,fast:1},{type:2,data:30},{type:1,data:3,fast:1},{type:2,data:45}]}
#
#execute if score #hp% temp matches 86.. unless score #decided temp matches 1 if entity @p[distance=6..] if score #rand temp matches 2 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:4},{type:2,data:60}]}
#
#execute if score #hp% temp matches 86.. unless score #decided temp matches 1 if entity @p[distance=6..] if score #rand temp matches 3 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:3},{type:2,data:60}]}
#
#In the above functions, the following occurs: If the emissary is above 86% health and the nearest player is 6 or more blocks away, he chooses between one of four equally likely attack patterns.
#
#If you need more elaboration, yeah just ask

scoreboard players reset #decided temp

#ARENA LIMITER ATTACKS#

#execute if score #hp% temp matches 35..69 unless score #decided temp matches 1 if score @s arena_divide_t matches ..-200 store success score #decided temp run function entities:ai/emissary/arena_limiter_random

#execute if score #hp% temp matches ..34 unless score #decided temp matches 1 if score @s arena_divide_t1 matches ..-200 if score @s arena_divide_t2 matches ..-200 store success score #decided temp run function entities:ai/emissary/chargephasestart
#execute if score #hp% temp matches ..34 unless score #decided temp matches 1 if score @s arena_divide_t2 matches ..-200 if entity @p[distance=..10] if entity @s[x=10000,z=10000,distance=..15] store success score #decided temp run function entities:ai/emissary/ringphase_start

#execute if score #hp% temp matches 35..69 unless score #decided temp matches 1 if score @s arena_divide_t matches ..-200 if predicate entities:em_50 store success score #decided temp run function entities:ai/emissary/ringphase_start
execute if score #hp% temp matches ..34 unless score #decided temp matches 1 if score @s arena_divide_t matches ..-50 store success score #decided temp run function entities:ai/emissary/ringphase_start

#execute unless score #decided temp matches 1 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:8},{type:2,data:200}]}

#PHASE 1 (BORING EDITION)

#execute if score #hp% temp matches 89.. unless score #decided temp matches 1 if entity @p[distance=..6] run scoreboard players operation #rand temp %= #2 const
#execute if score #hp% temp matches 89.. unless score #decided temp matches 1 if entity @p[distance=..6] if score #rand temp matches 0 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:1,fast:1},{type:2,data:10},{type:1,data:2,fast:1},{type:2,data:25}]}
#execute if score #hp% temp matches 89.. unless score #decided temp matches 1 if entity @p[distance=..6] if score #rand temp matches 1 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:1,fast:1},{type:2,data:10},{type:1,data:3,fast:1},{type:2,data:25}]}
#execute if score #hp% temp matches 89.. unless score #decided temp matches 1 if entity @p[distance=6..] run scoreboard players operation #rand temp %= #2 const
#execute if score #hp% temp matches 89.. unless score #decided temp matches 1 if entity @p[distance=6..] if score #rand temp matches 0 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:4},{type:2,data:25}]}
#execute if score #hp% temp matches 89.. unless score #decided temp matches 1 if entity @p[distance=6..] if score #rand temp matches 1 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:3},{type:2,data:25}]}

#PHASE 1 (100-70)

execute if score #hp% temp matches 70.. unless score #decided temp matches 1 if entity @p[distance=..5] run scoreboard players operation #rand temp %= #7 const
execute if score #hp% temp matches 70.. unless score #decided temp matches 1 if entity @p[distance=..5] if score #rand temp matches 0 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:1,fast:1},{type:1,data:2,fast:1},{type:1,data:5},{type:1,data:7},{type:2,data:25}]}
execute if score #hp% temp matches 70.. unless score #decided temp matches 1 if entity @p[distance=..5] if score #rand temp matches 1 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:1,fast:1},{type:1,data:5},{type:1,data:5},{type:1,data:4,fast:1},{type:2,data:25}]}
execute if score #hp% temp matches 70.. unless score #decided temp matches 1 if entity @p[distance=..5] if score #rand temp matches 2 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:1,fast:1},{type:1,data:3,fast:1},{type:1,data:1},{type:2,data:25}]}
execute if score #hp% temp matches 70.. unless score #decided temp matches 1 if entity @p[distance=..5] if score #rand temp matches 3 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:2,fast:1},{type:1,data:7,fast:1},{type:2,data:25}]}
execute if score #hp% temp matches 70.. unless score #decided temp matches 1 if entity @p[distance=..5] if score #rand temp matches 4 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:2,fast:1},{type:1,data:6},{type:2,data:5},{type:1,data:7,fast:1},{type:2,data:25}]}
execute if score #hp% temp matches 70.. unless score #decided temp matches 1 if entity @p[distance=..5] if score #rand temp matches 5..6 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:5},{type:1,data:5},{type:2,data:15}]}
execute if score #hp% temp matches 70.. unless score #decided temp matches 1 if entity @p[distance=5..] run scoreboard players operation #rand temp %= #3 const
execute if score #hp% temp matches 70.. unless score #decided temp matches 1 if entity @p[distance=5..] if score #rand temp matches 0 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:4,fast:1},{type:2,data:10}]}
execute if score #hp% temp matches 70.. unless score #decided temp matches 1 if entity @p[distance=5..] if score #rand temp matches 1 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:3,fast:1},{type:1,data:1},{type:2,data:25}]}
execute if score #hp% temp matches 70.. unless score #decided temp matches 1 if entity @p[distance=5..] if score #rand temp matches 2 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:9,spike_var:1},{type:2,data:5},{type:1,data:9,spike_var:2},{type:2,data:25}]}

#PHASE 2 (70-35)

execute if score #hp% temp matches 35..70 unless score #decided temp matches 1 if entity @p[distance=..5] run scoreboard players operation #rand temp %= #18 const
execute if score #hp% temp matches 35..70 unless score #decided temp matches 1 if entity @p[distance=..5] if score #rand temp matches 0 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:8},{type:1,data:6},{type:1,data:1,fast:1},{type:1,data:2,fast:1},{type:1,data:5},{type:1,data:9,spike_var:2},{type:1,data:7},{type:2,data:25}]}
execute if score #hp% temp matches 35..70 unless score #decided temp matches 1 if entity @p[distance=..5] if score #rand temp matches 1 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:10},{type:1,data:1,fast:1},{type:1,data:5},{type:1,data:5},{type:1,data:4,fast:1},{type:1,data:3,fast:1},{type:2,data:25}]}
execute if score #hp% temp matches 35..70 unless score #decided temp matches 1 if entity @p[distance=..5] if score #rand temp matches 2 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:1,fast:1},{type:1,data:3,fast:1},{type:1,data:1,fast:1},{type:1,data:4,fast:1},{type:2,data:25}]}
execute if score #hp% temp matches 35..70 unless score #decided temp matches 1 if entity @p[distance=..5] if score #rand temp matches 3 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:2,fast:1},{type:1,data:7,fast:1},{type:2,data:25}]}
execute if score #hp% temp matches 35..70 unless score #decided temp matches 1 if entity @p[distance=..5] if score #rand temp matches 4 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:2,fast:1},{type:1,data:6},{type:2,data:5},{type:1,data:7,fast:1},{type:2,data:25}]}
execute if score #hp% temp matches 35..70 unless score #decided temp matches 1 if entity @p[distance=..5] if score #rand temp matches 5..8 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:5},{type:1,data:5},{type:2,data:15}]}
execute if score #hp% temp matches 35..70 unless score #decided temp matches 1 if entity @p[distance=..5] if score #rand temp matches 9..11 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:8},{type:2,data:5}]}
execute if score #hp% temp matches 35..70 unless score #decided temp matches 1 if entity @p[distance=..5] if score #rand temp matches 12 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:10},{type:1,data:1,fast:1},{type:2,data:25}]}
execute if score #hp% temp matches 35..70 unless score #decided temp matches 1 if entity @p[distance=..5] if score #rand temp matches 13 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:9,spike_var:2},{type:1,data:2,fast:1},{type:1,data:9,spike_var:4},{type:1,data:7,fast:1},{type:2,data:25}]}
execute if score #hp% temp matches 35..70 unless score #decided temp matches 1 if entity @p[distance=..5] if score #rand temp matches 14 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:10},{type:1,data:5},{type:1,data:2,fast:1},{type:2,data:10},{type:1,data:7,fast:1},{type:2,data:25}]}
execute if score #hp% temp matches 35..70 unless score #decided temp matches 1 if entity @p[distance=..5] if score #rand temp matches 15 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:9,spike_var:1},{type:1,data:1,fast:1},{type:1,data:9,spike_var:4},{type:1,data:1,fast:1},{type:2,data:25}]}
execute if score #hp% temp matches 35..70 unless score #decided temp matches 1 if entity @p[distance=..5] if score #rand temp matches 16 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:8},{type:1,data:9,spike_var:1},{type:1,data:9,spike_var:3},{type:2,data:25}]}
execute if score #hp% temp matches 35..70 unless score #decided temp matches 1 if entity @p[distance=..5] if score #rand temp matches 17 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:8},{type:2,data:10},{type:1,data:2,fast:1},{type:1,data:6},{type:2,data:10},{type:1,data:7,fast:1},{type:2,data:25}]}
execute if score #hp% temp matches 35..70 unless score #decided temp matches 1 if entity @p[distance=5..15] run scoreboard players operation #rand temp %= #8 const
execute if score #hp% temp matches 35..70 unless score #decided temp matches 1 if entity @p[distance=5..15] if score #rand temp matches 0 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:4,fast:1},{type:1,data:9,spike_var:2},{type:1,data:5},{type:1,data:4,fast:1},{type:2,data:25}]}
execute if score #hp% temp matches 35..70 unless score #decided temp matches 1 if entity @p[distance=5..15] if score #rand temp matches 1 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:3,fast:1},{type:1,data:1},{type:2,data:25}]}
execute if score #hp% temp matches 35..70 unless score #decided temp matches 1 if entity @p[distance=5..15] if score #rand temp matches 2 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:9,spike_var:1},{type:1,data:5},{type:1,data:9,spike_var:3},{type:2,data:25}]}
execute if score #hp% temp matches 35..70 unless score #decided temp matches 1 if entity @p[distance=5..15] if score #rand temp matches 3 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:9,spike_var:2},{type:1,data:5},{type:1,data:9,spike_var:4},{type:2,data:25}]}
execute if score #hp% temp matches 35..70 unless score #decided temp matches 1 if entity @p[distance=5..15] if score #rand temp matches 4 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:10},{type:1,data:3},{type:2,data:25}]}
execute if score #hp% temp matches 35..70 unless score #decided temp matches 1 if entity @p[distance=5..15] if score #rand temp matches 5 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:8},{type:1,data:5},{type:1,data:3,fast:1},{type:1,data:5},{type:1,data:3,fast:1},{type:1,data:5},{type:1,data:3,fast:1},{type:2,data:25}]}
execute if score #hp% temp matches 35..70 unless score #decided temp matches 1 if entity @p[distance=5..15] if score #rand temp matches 6 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:8},{type:1,data:1,fast:1},{type:2,data:15},{type:1,data:1,fast:1},{type:2,data:15},{type:2,data:25}]}
execute if score #hp% temp matches 35..70 unless score #decided temp matches 1 if entity @p[distance=5..15] if score #rand temp matches 7 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:10},{type:1,data:6},{type:2,data:15},{type:1,data:2,fast:1},{type:1,data:5},{type:1,data:6},{type:1,data:7,fast:1},{type:2,data:25}]}
execute if score #hp% temp matches 35..70 unless score #decided temp matches 1 if entity @p[distance=15..] run scoreboard players operation #rand temp %= #3 const
execute if score #hp% temp matches 35..70 unless score #decided temp matches 1 if entity @p[distance=15..] if score #rand temp matches 0 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:3,fast:1},{type:1,data:8},{type:1,data:1,fast:1},{type:1,data:2,fast:1},{type:2,data:10},{type:1,data:7,fast:1},{type:2,data:15}]}
execute if score #hp% temp matches 35..70 unless score #decided temp matches 1 if entity @p[distance=15..] if score #rand temp matches 1 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:3,fast:1},{type:1,data:8},{type:1,data:1,fast:1},{type:1,data:3,fast:1},{type:2,data:10},{type:1,data:2,fast:1},{type:2,data:25}]}
execute if score #hp% temp matches 35..70 unless score #decided temp matches 1 if entity @p[distance=15..] if score #rand temp matches 2 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:3,fast:1},{type:1,data:8},{type:1,data:9,spike_var:2},{type:1,data:9,spike_var:3},{type:2,data:15}]}

#PHASE 2.5 (35-0)

execute if score #hp% temp matches ..35 unless score #decided temp matches 1 if entity @p[distance=..5] run scoreboard players operation #rand temp %= #21 const
execute if score #hp% temp matches ..35 unless score #decided temp matches 1 if entity @p[distance=..5] if score #rand temp matches 0 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:8},{type:1,data:6},{type:1,data:1,fast:1},{type:1,data:2,fast:1},{type:1,data:5},{type:1,data:9,spike_var:3},{type:1,data:7},{type:2,data:25}]}
execute if score #hp% temp matches ..35 unless score #decided temp matches 1 if entity @p[distance=..5] if score #rand temp matches 1 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:10},{type:1,data:1,fast:1},{type:1,data:5},{type:1,data:5},{type:1,data:4,fast:1},{type:1,data:3,fast:1},{type:2,data:25}]}
execute if score #hp% temp matches ..35 unless score #decided temp matches 1 if entity @p[distance=..5] if score #rand temp matches 2 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:1,fast:1},{type:1,data:3,fast:1},{type:1,data:1,fast:1},{type:1,data:4,fast:1},{type:2,data:25}]}
execute if score #hp% temp matches ..35 unless score #decided temp matches 1 if entity @p[distance=..5] if score #rand temp matches 3 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:2,fast:1},{type:1,data:7,fast:1},{type:2,data:25}]}
execute if score #hp% temp matches ..35 unless score #decided temp matches 1 if entity @p[distance=..5] if score #rand temp matches 4 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:2,fast:1},{type:1,data:6},{type:2,data:5},{type:1,data:7,fast:1},{type:2,data:25}]}
execute if score #hp% temp matches ..35 unless score #decided temp matches 1 if entity @p[distance=..5] if score #rand temp matches 5..7 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:8},{type:2,data:25}]}
execute if score #hp% temp matches ..35 unless score #decided temp matches 1 if entity @p[distance=..5] if score #rand temp matches 8 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:10},{type:1,data:1,fast:1},{type:2,data:25}]}
execute if score #hp% temp matches ..35 unless score #decided temp matches 1 if entity @p[distance=..5] if score #rand temp matches 9 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:9,spike_var:2},{type:1,data:2,fast:1},{type:1,data:9,spike_var:4},{type:1,data:7,fast:1},{type:2,data:25}]}
execute if score #hp% temp matches ..35 unless score #decided temp matches 1 if entity @p[distance=..5] if score #rand temp matches 10 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:10},{type:1,data:5},{type:1,data:2,fast:1},{type:2,data:10},{type:1,data:7,fast:1},{type:2,data:25}]}
execute if score #hp% temp matches ..35 unless score #decided temp matches 1 if entity @p[distance=..5] if score #rand temp matches 11 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:9,spike_var:3},{type:1,data:1,fast:1},{type:1,data:9,spike_var:4},{type:1,data:1,fast:1},{type:2,data:25}]}
execute if score #hp% temp matches ..35 unless score #decided temp matches 1 if entity @p[distance=..5] if score #rand temp matches 12 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:8},{type:1,data:9,spike_var:4},{type:1,data:9,spike_var:3},{type:2,data:25}]}
execute if score #hp% temp matches ..35 unless score #decided temp matches 1 if entity @p[distance=..5] if score #rand temp matches 13 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:8},{type:2,data:10},{type:1,data:2,fast:1},{type:1,data:6},{type:2,data:10},{type:1,data:7,fast:1},{type:2,data:25}]}
execute if score #hp% temp matches ..35 unless score #decided temp matches 1 if entity @p[distance=..5] if score #rand temp matches 14 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:10},{type:1,data:8},{type:2,data:15},{type:1,data:2,fast:1},{type:1,data:6},{type:1,data:7,fast:1},{type:2,data:25}]}
execute if score #hp% temp matches ..35 unless score #decided temp matches 1 if entity @p[distance=..5] if score #rand temp matches 15 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:10},{type:1,data:9,spike_var:3},{type:1,data:5},{type:1,data:9,spike_var:4},{type:1,data:6},{type:1,data:1,fast:1},{type:2,data:25}]}
execute if score #hp% temp matches ..35 unless score #decided temp matches 1 if entity @p[distance=..5] if score #rand temp matches 16 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:8},{type:1,data:9,spike_var:3},{type:1,data:6},{type:1,data:2,fast:1},{type:2,data:10},{type:1,data:7,fast:1},{type:2,data:25}]}
execute if score #hp% temp matches ..35 unless score #decided temp matches 1 if entity @p[distance=5..] run scoreboard players operation #rand temp %= #9 const
execute if score #hp% temp matches ..35 unless score #decided temp matches 1 if entity @p[distance=5..] if score #rand temp matches 0 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:4,fast:1},{type:1,data:9,spike_var:4},{type:1,data:5},{type:1,data:4,fast:1},{type:2,data:25}]}
execute if score #hp% temp matches ..35 unless score #decided temp matches 1 if entity @p[distance=5..] if score #rand temp matches 1 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:8},{type:1,data:3,fast:1},{type:1,data:1},{type:2,data:25}]}
execute if score #hp% temp matches ..35 unless score #decided temp matches 1 if entity @p[distance=5..] if score #rand temp matches 2 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:9,spike_var:1},{type:1,data:5},{type:1,data:9,spike_var:3},{type:2,data:25}]}
execute if score #hp% temp matches ..35 unless score #decided temp matches 1 if entity @p[distance=5..] if score #rand temp matches 3 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:9,spike_var:2},{type:1,data:5},{type:1,data:9,spike_var:4},{type:2,data:25}]}
execute if score #hp% temp matches ..35 unless score #decided temp matches 1 if entity @p[distance=5..] if score #rand temp matches 4 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:10},{type:1,data:3},{type:2,data:25}]}
execute if score #hp% temp matches ..35 unless score #decided temp matches 1 if entity @p[distance=5..] if score #rand temp matches 5 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:8},{type:1,data:5},{type:1,data:3,fast:1},{type:1,data:5},{type:1,data:3,fast:1},{type:1,data:5},{type:1,data:3,fast:1},{type:2,data:25}]}
execute if score #hp% temp matches ..35 unless score #decided temp matches 1 if entity @p[distance=5..] if score #rand temp matches 6 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:8},{type:1,data:1,fast:1},{type:2,data:15},{type:1,data:1,fast:1},{type:2,data:15},{type:2,data:25}]}
execute if score #hp% temp matches ..35 unless score #decided temp matches 1 if entity @p[distance=5..] if score #rand temp matches 7 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:10},{type:1,data:6},{type:2,data:15},{type:1,data:2,fast:1},{type:1,data:5},{type:1,data:6},{type:1,data:7,fast:1},{type:2,data:25}]}
execute if score #hp% temp matches ..35 unless score #decided temp matches 1 if entity @p[distance=5..] if score #rand temp matches 8 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:10},{type:1,data:5},{type:1,data:4,fast:1},{type:1,data:2,fast:1},{type:2,data:25}]}






#------------OLD SHIT BOO------------#
#phase 1 (100 - 86)

#execute store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:1},{type:2,data:20},{type:1,data:2},{type:2,data:20},{type:1,data:3},{type:2,data:20},{type:1,data:4},{type:2,data:20},{type:1,data:5},{type:2,data:20},{type:1,data:6},{type:2,data:20},{type:1,data:7},{type:2,data:20},{type:1,data:8},{type:2,data:20},{type:1,data:9,spike_var:4},{type:2,data:20},{type:1,data:10},{type:2,data:20}]}


#execute if score #hp% temp matches 86.. unless score #decided temp matches 1 if entity @p[distance=..6] if predicate entities:em_50 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:2,fast:1},{type:2,data:20},{type:1,data:1,fast:1},{type:2,data:60}]}

#execute if score #hp% temp matches 86.. unless score #decided temp matches 1 if entity @p[distance=..6] if predicate entities:em_50 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:1,fast:1},{type:2,data:30},{type:1,data:3,fast:1},{type:2,data:45}]}

#execute if score #hp% temp matches 86.. unless score #decided temp matches 1 if entity @p[distance=6..] if predicate entities:teth_shoot2 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:4},{type:2,data:60}]}

#execute if score #hp% temp matches 86.. unless score #decided temp matches 1 if entity @p[distance=6..] if predicate entities:em_50 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:3},{type:2,data:60}]}

#phase 2 (85 - 71)

#execute if score #hp% temp matches 71..85 unless score #decided temp matches 1 if entity @p[distance=..6] if predicate entities:em_50 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:2},{type:1,data:7,fast:1},{type:1,data:6},{type:2,data:45}]}

#execute if score #hp% temp matches 71..85 unless score #decided temp matches 1 if entity @p[distance=..6] if predicate entities:em_50 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:1,fast:1},{type:1,data:5,fast:1},{type:2,data:10},{type:1,data:7,fast:1},{type:2,data:45}]}

#execute if score #hp% temp matches 71..85 unless score #decided temp matches 1 if entity @p[distance=6..] if predicate entities:teth_shoot2 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:3},{type:2,data:10},{type:1,data:2,fast:1}]}

#execute if score #hp% temp matches 71..85 unless score #decided temp matches 1 if entity @p[distance=6..] if predicate entities:em_50 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:3},{type:1,data:3},{type:2,data:30}]}

#phase 3

#tp forward -> stomp -> sweep -> charge -> pause -> tp back -> tp back -> scythe throw -> calldown (1)
#execute if score #hp% temp matches 35..70 unless score #decided temp matches 1 if entity @p[distance=..6] if predicate entities:em_50 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:6},{type:1,data:1,fast:1},{type:1,data:2,fast:1},{type:1,data:3},{type:2,data:25},{type:1,data:5},{type:1,data:5},{type:1,data:4},{type:1,data:9,spike_var:1},{type:2,data:25}]}

#tp forward -> stomp -> charge -> sweep -> alt sweep -> pause -> tp back -> tp back -> scythe throw -> calldown (2)
#execute if score #hp% temp matches 35..70 unless score #decided temp matches 1 if entity @p[distance=..6] if predicate entities:em_50 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:6},{type:1,data:1,fast:1},{type:2,data:1},{type:1,data:3},{type:2,data:1},{type:1,data:2,fast:1},{type:1,data:7,fast:1},{type:1,data:5},{type:1,data:5},{type:1,data:4},{type:1,data:9,spike_var:2},{type:2,data:25}]}

#tp forward -> sweep -> alt sweep -> sweep -> tp back -> calldown (4)
#execute if score #hp% temp matches 35..70 unless score #decided temp matches 1 if entity @p[distance=..6] if predicate entities:em_50 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:6},{type:1,data:2,fast:1},{type:1,data:7},{type:1,data:2},{type:1,data:5},{type:1,data:9,spike_var:4}]}

#tp forward -> stomp -> sweep -> tp forward -> alt sweep -> pause -> tp back -> tp back -> scythe throw -> calldown (1)
#execute if score #hp% temp matches 35..70 unless score #decided temp matches 1 if entity @p[distance=..6] if predicate entities:em_50 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:6},{type:1,data:1,fast:1},{type:2,data:1},{type:1,data:2},{type:1,data:6},{type:1,data:7},{type:2,data:25},{type:1,data:5},{type:1,data:5},{type:1,data:4},{type:1,data:9,spike_var:1},{type:2,data:25}]}

#stomp -> tp forward -> stomp -> sweep -> charge -> pause -> tp back -> tp back -> scythe throw -> calldown (2)
#execute if score #hp% temp matches 35..70 unless score #decided temp matches 1 if entity @p[distance=..6] if predicate entities:em_50 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:1,fast:1},{type:2,data:1},{type:1,data:6},{type:1,data:1,fast:1},{type:1,data:2,fast:1},{type:1,data:3},{type:2,data:25},{type:1,data:5},{type:1,data:5},{type:1,data:4},{type:1,data:9,spike_var:2},{type:2,data:25}]}

#charge -> tp back -> sweep -> tp forward -> alt sweep
#execute if score #hp% temp matches 35..70 unless score #decided temp matches 1 if entity @p[distance=6..] if predicate entities:em_50 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:3},{type:1,data:5},{type:1,data:2,fast:1},{type:1,data:6},{type:1,data:7,fast:1},{type:2,data:25}]}

#charge -> tp back -> stomp -> charge -> sweep
#execute if score #hp% temp matches 35..70 unless score #decided temp matches 1 if entity @p[distance=6..] if predicate entities:em_50 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:3},{type:1,data:5},{type:1,data:1,fast:1},{type:2,data:1},{type:1,data:3},{type:1,data:2,fast:1},{type:2,data:25}]}

#scythe throw -> stomp
#execute if score #hp% temp matches 35..70 unless score #decided temp matches 1 if entity @p[distance=6..] if predicate entities:em_50 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:4,fast:1},{type:1,data:1,fast:1},{type:2,data:15}]}

#tp back -> calldown (1) -> calldown (1) -> charge -> calldown (2)
#execute if score #hp% temp matches 35..70 unless score #decided temp matches 1 if entity @p[distance=6..] if predicate entities:em_50 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:5},{type:1,data:9,spike_var:1},{type:1,data:9,spike_var:1},{type:1,data:3,fast:1},{type:1,data:9,spike_var:2}]}

#phase 4

#tp forward -> stomp -> sweep -> charge -> pause -> tp back -> tp back -> scythe throw -> calldown (1)
#execute if score #hp% temp matches ..35 unless score #decided temp matches 1 if entity @p[distance=..4.2] if predicate entities:em_50 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:8},{type:1,data:6},{type:1,data:1,fast:1},{type:2,data:1},{type:1,data:2,fast:1},{type:2,data:1},{type:1,data:3},{type:2,data:25},{type:1,data:5},{type:1,data:5},{type:1,data:4},{type:1,data:9,spike_var:1},{type:2,data:25}]}

#tp forward -> stomp -> charge -> sweep -> alt sweep -> pause -> tp back -> tp back -> scythe throw -> calldown (3) 
#execute if score #hp% temp matches ..35 unless score #decided temp matches 1 if entity @p[distance=..4.3] if predicate entities:em_50 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:8},{type:1,data:6},{type:1,data:1,fast:1},{type:2,data:1},{type:1,data:3},{type:2,data:1},{type:1,data:2,fast:1},{type:1,data:7,fast:1},{type:2,data:25},{type:1,data:5},{type:1,data:5},{type:1,data:4},{type:1,data:9,spike_var:3},{type:2,data:25}]}

#tp forward -> stomp -> sweep -> tp forward -> alt sweep -> pause -> tp back -> tp back -> scythe throw -> calldown (2) -> calldown (3)
#execute if score #hp% temp matches ..35 unless score #decided temp matches 1 if entity @p[distance=..4.4] if predicate entities:em_50 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:6},{type:1,data:1,fast:1},{type:2,data:1},{type:1,data:2},{type:1,data:6},{type:1,data:7},{type:2,data:25},{type:1,data:5},{type:1,data:5},{type:1,data:4},{type:1,data:9,spike_var:2},{type:1,data:9,spike_var:3,fast:1},{type:2,data:25}]}

#stomp -> tp forward -> stomp -> sweep -> charge -> pause -> tp back -> tp back -> scythe throw -> calldown (2)
#execute if score #hp% temp matches ..35 unless score #decided temp matches 1 if entity @p[distance=..4.5] if predicate entities:em_50 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:1,fast:1},{type:2,data:1},{type:1,data:6},{type:1,data:1,fast:1},{type:1,data:2,fast:1},{type:1,data:3},{type:2,data:25},{type:1,data:5},{type:1,data:5},{type:1,data:4},{type:1,data:9,spike_var:2},{type:2,data:25}]}

#charge -> tp back -> sweep -> tp forward -> alt sweep -> calldown (1) -> calldown (2) -> tp back -> calldown (3)
#execute if score #hp% temp matches ..35 unless score #decided temp matches 1 if entity @p[distance=4.5..] if predicate entities:em_50 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:3},{type:1,data:5},{type:1,data:2,fast:1},{type:1,data:6},{type:1,data:7,fast:1},{type:2,data:15},{type:1,data:9,spike_var:1},{type:1,data:9,spike_var:2,fast:1},{type:1,data:5},{type:1,data:9,spike_var:3,fast:1},{type:2,data:15}]}

#charge -> tp back -> stomp -> charge -> sweep -> pause -> meteor
#execute if score #hp% temp matches ..35 unless score #decided temp matches 1 if entity @p[distance=4.6..] if predicate entities:em_50 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:3},{type:1,data:5},{type:1,data:1,fast:1},{type:2,data:1},{type:1,data:3},{type:1,data:2,fast:1},{type:2,data:25},{type:1,data:8},{type:2,data:15}]}

#scythe throw -> stomp -> pause -> meteor
#execute if score #hp% temp matches ..35 unless score #decided temp matches 1 if entity @p[distance=8..] if predicate entities:em_50 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:4,fast:1},{type:1,data:1,fast:1},{type:2,data:15},{type:1,data:8},{type:2,data:15}]}

#charge -> charge -> charge -> stomp -> tp forward -> sweep -> tp foward -> alt sweep
#execute if score #hp% temp matches ..35 unless score #decided temp matches 1 store success score #decided temp if predicate entities:teth_shoot2 run data merge storage drehmal:entities {emAttacks:[{type:1,data:8},{type:1,data:3},{type:1,data:3,fast:1},{type:1,data:3,fast:1},{type:1,data:1},{type:1,data:5},{type:1,data:2,fast:1},{type:1,data:5},{type:1,data:7,fast:1}]}

#tp back -> calldown (1) -> calldown (2) -> calldown (1) -> charge -> tp back -> calldown (3) -> throw
#execute if score #hp% temp matches ..35 unless score #decided temp matches 1 if entity @p[distance=4.7..] if predicate entities:em_50 store success score #decided temp run data merge storage drehmal:entities {emAttacks:[{type:1,data:8},{type:1,data:9,spike_var:1},{type:1,data:9,spike_var:2,fast:1},{type:1,data:9,spike_var:1,fast:1},{type:1,data:3,fast:1},{type:1,data:5},{type:1,data:9,spike_var:3,fast:1},{type:1,data:4,fast:1}]}