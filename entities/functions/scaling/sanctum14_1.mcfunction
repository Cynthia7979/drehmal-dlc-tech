execute if score playercount playercount matches 1 run data merge entity @s {Attributes:[{Base:14.0d, Name: "generic.max_health"},{Base:1.0d, Name: "generic.attack_damage"}],Health:14.0f}
execute if score playercount playercount matches 2..3 run data merge entity @s {Attributes:[{Base:21.0d, Name: "generic.max_health"},{Base:1.0d, Name: "generic.attack_damage"}],Health:21.0f}
execute if score playercount playercount matches 4..5 run data merge entity @s {Attributes:[{Base:24.0d, Name: "generic.max_health"},{Base:2.0d, Name: "generic.attack_damage"}],Health:24.0f}
execute if score playercount playercount matches 6..7 run data merge entity @s {Attributes:[{Base:26.0d, Name: "generic.max_health"},{Base:3.0d, Name: "generic.attack_damage"}],Health:26.0f}
execute if score playercount playercount matches 8.. run data merge entity @s {Attributes:[{Base:27.0d, Name: "generic.max_health"},{Base:4.0d, Name: "generic.attack_damage"}],Health:27.0f}