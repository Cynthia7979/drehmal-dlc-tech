execute as @p[tag=selector] run function players:avpod/clearchat
tellraw @p[tag=selector] ["",{"text":"[","color":"white"},{"text":"ａｖＳＹＳ","color":"dark_aqua"},"]","／／ ＳＥＬＥＣＴ ＤＥＳＩＲＥＤ ＵＰＧＲＡＤＥ ／／"]
tellraw @p[tag=selector]  ["",{"text":"＋ＡＲ ＦＬＡＴ","color":"green","clickEvent":{"action":"run_command","value":"/execute as @e[tag=valid,tag=!ar] unless predicate players:holding/ar_c run function dlc:modify/chestplate/ar_b"},"hoverEvent":{"action":"show_text","contents":[{"text":"+1 Armor","color":"blue"}]}},"\n",{"text":"＋ＡＲ ％","color":"green","clickEvent":{"action":"run_command","value":"/execute as @e[tag=valid,tag=!ar] unless predicate players:holding/ar_c run function dlc:modify/chestplate/ar_p"},"hoverEvent":{"action":"show_text","contents":[{"text":"+5% Armor","color":"blue"}]}}]
