execute store success score $success bingo_tmp run data modify storage bingo:tmp slot set from storage bingo:card_generation slots[{item:{id:"minecraft:melon"}}]
execute if score $success bingo_tmp matches 1 run function bingo:item_detection/announce/item