tellraw @p[tag=selector] ["",{"text":"[","color":"white"},{"text":"ａｖＳＹＳ","color":"dark_aqua"},"]","／／ ＳＥＬＥＣＴ ＤＥＳＩＲＥＤ ＵＰＧＲＡＤＥ ／／"]
execute as @e[tag=valid] unless predicate players:holding/hp_c run tellraw @p[tag=selector] {"text":"＋ＨＰ","color":"green","clickEvent":{"action":"run_command","value":"/execute as @p run function dlc:modify/hp_c"},"hoverEvent":{"action":"show_text","contents":[{"text":"Flat or %","color":"dark_green"}]}}
execute as @e[tag=valid] if predicate players:holding/hp_c run tellraw @p[tag=selector] {"text":"＋ＨＰ","color":"gray"}


execute as @e[tag=valid] unless predicate players:holding/sp_c run tellraw @p[tag=selector] {"text":"＋ＳＰ","color":"green","clickEvent":{"action":"run_command","value":"/execute as @p run function dlc:modify/sp_c"},"hoverEvent":{"action":"show_text","contents":[{"text":"Flat or %","color":"dark_green"}]}}
execute as @e[tag=valid] if predicate players:holding/sp_c run tellraw @p[tag=selector] {"text":"＋ＳＰ","color":"gray"}


execute as @e[tag=valid] unless predicate players:holding/ar_c run tellraw @p[tag=selector] {"text":"＋ＡＲ","color":"green","clickEvent":{"action":"run_command","value":"/execute as @p run function dlc:modify/ar_c"},"hoverEvent":{"action":"show_text","contents":[{"text":"Flat or %","color":"dark_green"}]}}
execute as @e[tag=valid] if predicate players:holding/ar_c run tellraw @p[tag=selector] {"text":"＋ＡＲ","color":"gray"}


execute as @e[tag=valid] unless predicate players:holding/as_c run tellraw @p[tag=selector] {"text":"＋ＡＳ","color":"green","clickEvent":{"action":"run_command","value":"/execute as @p run function dlc:modify/as_c"},"hoverEvent":{"action":"show_text","contents":[{"text":"Flat or %","color":"dark_green"}]}}
execute as @e[tag=valid] if predicate players:holding/as_c run tellraw @p[tag=selector] {"text":"＋ＡＳ","color":"gray"}


execute as @e[tag=valid] unless predicate players:holding/at_c run tellraw @p[tag=selector] {"text":"＋ＡＴ","color":"green","clickEvent":{"action":"run_command","value":"/execute as @p run function dlc:modify/at_c"},"hoverEvent":{"action":"show_text","contents":[{"text":"Flat or %","color":"dark_green"}]}}
execute as @e[tag=valid] if predicate players:holding/at_c run tellraw @p[tag=selector] {"text":"＋ＡＴ","color":"gray"}


tellraw @p[tag=selector] ["","[",{"text":"ａｖＳＹＳ","color":"dark_aqua"},"]",{"text":"／／ ＲＥＴＲＩＥＶＥ ＩＴＥＭ ／／","clickEvent":{"action":"run_command","value":"/execute as @p[tag=selector] run function dlc:modify/retrieve_c"},"hoverEvent":{"action":"show_text","contents":["CLICK TO RETRIEVE ITEM"]}}]