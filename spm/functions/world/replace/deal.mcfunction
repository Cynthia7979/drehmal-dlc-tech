execute as @e[type=#spm:replace] at @s unless score @s spm.replaced matches 1 unless data entity @s Tags[0] at @s run function spm:world/replace/e/deal