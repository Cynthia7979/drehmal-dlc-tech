execute as @p[tag=selector] run function players:avpod/clearchat
tellraw @p[tag=selector] ["",{"text":"[","color":"white"},{"text":"ａｖＳＹＳ","color":"dark_aqua"},"]","／／ ＳＥＬＥＣＴ ＤＥＳＩＲＥＤ ＵＰＧＲＡＤＥ ／／"]
tellraw @p[tag=selector]  ["",{"text":"＋ＡＳ ＦＬＡＴ","color":"green","clickEvent":{"action":"run_command","value":"/execute as @e[tag=valid,tag=!as] unless predicate players:holding/as run function dlc:modify/mainhand/as_b"},"hoverEvent":{"action":"show_text","contents":[{"text":"+0.1 Attack Speed","color":"blue"}]}},"\n",{"text":"＋ＡＳ ％","color":"green","clickEvent":{"action":"run_command","value":"/execute as @e[tag=valid,tag=!as] unless predicate players:holding/as run function dlc:modify/mainhand/as_p"},"hoverEvent":{"action":"show_text","contents":[{"text":"+8% Attack Speed","color":"blue"}]}}]