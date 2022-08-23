function td:game/gold/collect_debt/256
function td:game/gold/collect_debt/64
function td:game/gold/collect_debt/16
function td:game/gold/collect_debt/4
function td:game/gold/collect_debt/1

execute as @s[scores={debt=..-256}] run function td:game/gold/give_change/256
execute as @s[scores={debt=..-64}] run function td:game/gold/give_change/64
execute as @s[scores={debt=..-16}] run function td:game/gold/give_change/16
execute as @s[scores={debt=..-4}] run function td:game/gold/give_change/4
execute as @s[scores={debt=..-1}] run function td:game/gold/give_change/1
