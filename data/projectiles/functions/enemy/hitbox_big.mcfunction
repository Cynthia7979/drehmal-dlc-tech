execute unless entity @s[tag=noecollide] if score @s va.iframes matches ..0 unless entity @s[tag=va_immune] at @s positioned ~-0.5 ~1.2 ~-0.5 if entity @a[dx=0,dy=0,dz=0] run function projectiles:enemy/entity_collide
execute unless entity @s[tag=noecollide] if entity @s[tag=va_immune] at @s positioned ~-0.5 ~1.2 ~-0.5 if entity @a[dx=0,dy=1,dz=0] run function projectiles:enemy/entity_collide
execute unless entity @s[tag=noecollide] if score @s va.iframes matches ..0 unless entity @s[tag=va_immune] at @s positioned ^ ^ ^0.25 positioned ~-0.5 ~1.2 ~-0.5 if entity @a[dx=0,dy=0,dz=0] run function projectiles:enemy/entity_collide
execute unless entity @s[tag=noecollide] if entity @s[tag=va_immune] at @s positioned ^ ^ ^0.25 positioned ~-0.5 ~1.2 ~-0.5 if entity @a[dx=0,dy=1,dz=0] run function projectiles:enemy/entity_collide
execute unless entity @s[tag=noecollide] if score @s va.iframes matches ..0 unless entity @s[tag=va_immune] at @s positioned ^ ^ ^-0.25 positioned ~-0.5 ~1.2 ~-0.5 if entity @a[dx=0,dy=0,dz=0] run function projectiles:enemy/entity_collide
execute unless entity @s[tag=noecollide] if entity @s[tag=va_immune] at @s positioned ^ ^ ^-0.25 positioned ~-0.5 ~1.2 ~-0.5 if entity @a[dx=0,dy=1,dz=0] run function projectiles:enemy/entity_collide