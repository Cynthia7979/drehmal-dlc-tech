execute positioned 26520.5 178.5 -136.1 rotated 90 0 run function core:scene/terminals/part_ring

scoreboard players reset #total_play_time int
data modify storage drehmal:core heatmap_backups append from storage drehmal:core heatmap_overworld
data remove storage drehmal:core heatmap_overworld

# hehe nobody reset me so we're doing it here!
function core:scene/berndoor/emergency_reset

function entities:misc/kring/load

setblock 26520 178 -137 air
setblock 26520 178 -136 light[level=4]
playsound minecraft:dcustom.block.note_block.bit master @a 26520 178 -136
kill @e[type=area_effect_cloud,tag=spawn_term_text]
tellraw @a[x=26520,y=178,z=-137,distance=..20] [{"text":"["},{"text":"ａｖＳＹＳ","color":"aqua"},{"text":"] ／／ＮＥＴＷＯＲＫ ＲＥＣＯＮＮＥＣＴＩＯＮ ＳＵＣＣＥＳＳ．／／"}]
setblock 26520 178 -137 player_wall_head[facing=south]{SkullOwner:{Id:[I;-1988659663,938822729,-1884697575,-2109327315],Name:"HiscottiBiscotti",Properties:{textures:[{Signature:"W/zhnx/t79RQAWkWfwxVmjTDIO/Vz54KThIMKavU1a5wjRfosDQJFG+UCcCP9uPDY4oszTsZooiq2hCZGePNSCK94Q25hmzOHlDLlkLZtTvb8HVWcRPIYFk8YXueW63iMCL+Gj0vk1ShtkEaSOAIkMFKf5FwFCpXBv0KtyNF0rpErwaD0HX4xUkQ5TvQCO/v1hqmelWn2a1wrdWOCDg6pwyr5c8huZ432msMvt2pvpYRBjC14YVf471dZaFdWy+1VBwUReCfDgsHSdt1nq0AEJugpw4zoq/Qh67ROZeVlmzp4Qc4MuNYpwOErtK25UKflQipV2BnwRGj20+EuvQX1pdvXFRrpCMaUtsJbMcgCBgA6WjJZ5A7ygIhyzuvR35IFYrEjUgZGdOtTuwKZhanEJbLuGdgCVhZr/yfIDooAYVoQ09qbCNDh0EPndTwNN6k6xhHzoo8PfdGQ4ox3ZLcV7vcUnKsEv/xWDR+hLszBj61dGlofEWxACotBwJiZeTzRnqnWJEZm1+tsxpxQHyiAAadUqvbz2b8ld4uXKL73hjgSwlmRz+KpHinovgZC7i5kJhUE5nWH1ZiYRwHbg4PeTR7+RXjb6ipuoTKiHyCauramZctbRE7gGXyWlSyEaHFG0Gcuevd+aOxYPlLBdDfep3C9bPwZJw9c2WcfA4KUWk=",Value:"ewogICJ0aW1lc3RhbXAiIDogMTY1Mjc0NjkwOTcxNywKICAicHJvZmlsZUlkIiA6ICI4OTc3NzYzMTM3ZjU0YzQ5OGZhOWNjMTk4MjQ2MzgyZCIsCiAgInByb2ZpbGVOYW1lIiA6ICJIaXNjb3R0aUJpc2NvdHRpIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2I5MzQ2MWVmOWU4MTg0NzI4OTJkZmQ1NDRhN2UzMmNjOWNiYzJlYTZlNDg4ZjIwNzM5MmY0ZjQxYTI1Njg0MGUiLAogICAgICAibWV0YWRhdGEiIDogewogICAgICAgICJtb2RlbCIgOiAic2xpbSIKICAgICAgfQogICAgfSwKICAgICJDQVBFIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS8yMzQwYzBlMDNkZDI0YTExYjE1YThiMzNjMmE3ZTllMzJhYmIyMDUxYjI0ODFkMGJhN2RlZmQ2MzVjYTdhOTMzIgogICAgfQogIH0KfQ=="}]}}}

scoreboard players set #spawn_term_a? bool 1
execute in minecraft:overworld positioned 26512 161 -96 run setblock ~ ~ ~4 minecraft:red_concrete

schedule function core:scene/terminals/spawn2 2s
function core:reset/initialize