execute if score playercount playercount matches 1 run data merge entity @s {Attributes:[{Base:16.0d, Name: "generic.max_health"}],Health:16.0f}
execute if score playercount playercount matches 2..3 run data merge entity @s {Attributes:[{Base:24.0d, Name: "generic.max_health"}],Health:24.0f}
execute if score playercount playercount matches 4..5 run data merge entity @s {Attributes:[{Base:30.0d, Name: "generic.max_health"}],Health:30.0f}
execute if score playercount playercount matches 6..7 run data merge entity @s {Attributes:[{Base:35.0d, Name: "generic.max_health"}],Health:35.0f}
execute if score playercount playercount matches 8.. run data merge entity @s {Attributes:[{Base:39.0d, Name: "generic.max_health"}],Health:39.0f}