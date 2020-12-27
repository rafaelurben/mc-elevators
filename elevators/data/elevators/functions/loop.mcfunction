#Bringe Marker zum leuchten
execute at @a[gamemode=!survival,gamemode=!adventure,nbt={SelectedItem:{id:"minecraft:compass"}}] run effect give @e[distance=..25,tag=Elevator] minecraft:glowing 1 255 true
execute as @a[gamemode=!survival,gamemode=!adventure,nbt={SelectedItem:{id:"minecraft:armor_stand",tag:{EntityTag:{Tags:["Elevator"]}}}}] at @s run effect give @e[distance=..25,tag=Elevator] minecraft:glowing 1 255 true

#Tag
tag @a[tag=inElevator] remove inElevator
execute as @a[nbt={RootVehicle:{Entity:{Passengers:[{Tags:["ElevatorMinecart"]}]}}}] run tag @s add inElevator

#Elevatorheight
execute as @e[tag=Elevator] at @s store result score @s elevatorheight run data get entity @s Pos[1] 1000

#Safety first
execute as @e[tag=inElevator] run effect give @s resistance 2 250 true

#Inventory
execute as @a[tag=inElevator,nbt={SelectedItemSlot:0}] run title @s actionbar {"text":"Stockwerk 0","color":"light_purple"}
execute as @a[tag=inElevator,nbt={SelectedItemSlot:1}] run title @s actionbar {"text":"Stockwerk 1","color":"light_purple"}
execute as @a[tag=inElevator,nbt={SelectedItemSlot:2}] run title @s actionbar {"text":"Stockwerk 2","color":"light_purple"}
execute as @a[tag=inElevator,nbt={SelectedItemSlot:3}] run title @s actionbar {"text":"Stockwerk 3","color":"light_purple"}
execute as @a[tag=inElevator,nbt={SelectedItemSlot:4}] run title @s actionbar {"text":"Stockwerk 4","color":"light_purple"}
execute as @a[tag=inElevator,nbt={SelectedItemSlot:5}] run title @s actionbar {"text":"Stockwerk 5","color":"light_purple"}
execute as @a[tag=inElevator,nbt={SelectedItemSlot:6}] run title @s actionbar {"text":"Stockwerk 6","color":"light_purple"}
execute as @a[tag=inElevator,nbt={SelectedItemSlot:7}] run title @s actionbar {"text":"Stockwerk 7","color":"light_purple"}
execute as @a[tag=inElevator,nbt={SelectedItemSlot:8}] run title @s actionbar {"text":"Stockwerk 8","color":"light_purple"}


#Teleport
execute as @a[tag=inElevator,nbt={SelectedItemSlot:0}] at @s as @e[tag=ElevatorArmorstand,limit=1,sort=nearest] at @s if entity @e[tag=ElevatorLevel,y=0,dy=255,tag=Level0] if score @e[tag=ElevatorLevel,y=0,dy=255,tag=Level0,limit=1,sort=nearest] elevatorheight > @s elevatorheight run tp @s ~ ~0.25 ~
execute as @a[tag=inElevator,nbt={SelectedItemSlot:0}] at @s as @e[tag=ElevatorArmorstand,limit=1,sort=nearest] at @s if entity @e[tag=ElevatorLevel,y=0,dy=255,tag=Level0] if score @e[tag=ElevatorLevel,y=0,dy=255,tag=Level0,limit=1,sort=nearest] elevatorheight < @s elevatorheight run tp @s ~ ~-0.25 ~
execute as @a[tag=inElevator,nbt={SelectedItemSlot:1}] at @s as @e[tag=ElevatorArmorstand,limit=1,sort=nearest] at @s if entity @e[tag=ElevatorLevel,y=0,dy=255,tag=Level1] if score @e[tag=ElevatorLevel,y=0,dy=255,tag=Level1,limit=1,sort=nearest] elevatorheight > @s elevatorheight run tp @s ~ ~0.25 ~
execute as @a[tag=inElevator,nbt={SelectedItemSlot:1}] at @s as @e[tag=ElevatorArmorstand,limit=1,sort=nearest] at @s if entity @e[tag=ElevatorLevel,y=0,dy=255,tag=Level1] if score @e[tag=ElevatorLevel,y=0,dy=255,tag=Level1,limit=1,sort=nearest] elevatorheight < @s elevatorheight run tp @s ~ ~-0.25 ~
execute as @a[tag=inElevator,nbt={SelectedItemSlot:2}] at @s as @e[tag=ElevatorArmorstand,limit=1,sort=nearest] at @s if entity @e[tag=ElevatorLevel,y=0,dy=255,tag=Level2] if score @e[tag=ElevatorLevel,y=0,dy=255,tag=Level2,limit=1,sort=nearest] elevatorheight > @s elevatorheight run tp @s ~ ~0.25 ~
execute as @a[tag=inElevator,nbt={SelectedItemSlot:2}] at @s as @e[tag=ElevatorArmorstand,limit=1,sort=nearest] at @s if entity @e[tag=ElevatorLevel,y=0,dy=255,tag=Level2] if score @e[tag=ElevatorLevel,y=0,dy=255,tag=Level2,limit=1,sort=nearest] elevatorheight < @s elevatorheight run tp @s ~ ~-0.25 ~
execute as @a[tag=inElevator,nbt={SelectedItemSlot:3}] at @s as @e[tag=ElevatorArmorstand,limit=1,sort=nearest] at @s if entity @e[tag=ElevatorLevel,y=0,dy=255,tag=Level3] if score @e[tag=ElevatorLevel,y=0,dy=255,tag=Level3,limit=1,sort=nearest] elevatorheight > @s elevatorheight run tp @s ~ ~0.25 ~
execute as @a[tag=inElevator,nbt={SelectedItemSlot:3}] at @s as @e[tag=ElevatorArmorstand,limit=1,sort=nearest] at @s if entity @e[tag=ElevatorLevel,y=0,dy=255,tag=Level3] if score @e[tag=ElevatorLevel,y=0,dy=255,tag=Level3,limit=1,sort=nearest] elevatorheight < @s elevatorheight run tp @s ~ ~-0.25 ~
execute as @a[tag=inElevator,nbt={SelectedItemSlot:4}] at @s as @e[tag=ElevatorArmorstand,limit=1,sort=nearest] at @s if entity @e[tag=ElevatorLevel,y=0,dy=255,tag=Level4] if score @e[tag=ElevatorLevel,y=0,dy=255,tag=Level4,limit=1,sort=nearest] elevatorheight > @s elevatorheight run tp @s ~ ~0.25 ~
execute as @a[tag=inElevator,nbt={SelectedItemSlot:4}] at @s as @e[tag=ElevatorArmorstand,limit=1,sort=nearest] at @s if entity @e[tag=ElevatorLevel,y=0,dy=255,tag=Level4] if score @e[tag=ElevatorLevel,y=0,dy=255,tag=Level4,limit=1,sort=nearest] elevatorheight < @s elevatorheight run tp @s ~ ~-0.25 ~
execute as @a[tag=inElevator,nbt={SelectedItemSlot:5}] at @s as @e[tag=ElevatorArmorstand,limit=1,sort=nearest] at @s if entity @e[tag=ElevatorLevel,y=0,dy=255,tag=Level5] if score @e[tag=ElevatorLevel,y=0,dy=255,tag=Level5,limit=1,sort=nearest] elevatorheight > @s elevatorheight run tp @s ~ ~0.25 ~
execute as @a[tag=inElevator,nbt={SelectedItemSlot:5}] at @s as @e[tag=ElevatorArmorstand,limit=1,sort=nearest] at @s if entity @e[tag=ElevatorLevel,y=0,dy=255,tag=Level5] if score @e[tag=ElevatorLevel,y=0,dy=255,tag=Level5,limit=1,sort=nearest] elevatorheight < @s elevatorheight run tp @s ~ ~-0.25 ~
execute as @a[tag=inElevator,nbt={SelectedItemSlot:6}] at @s as @e[tag=ElevatorArmorstand,limit=1,sort=nearest] at @s if entity @e[tag=ElevatorLevel,y=0,dy=255,tag=Level6] if score @e[tag=ElevatorLevel,y=0,dy=255,tag=Level6,limit=1,sort=nearest] elevatorheight > @s elevatorheight run tp @s ~ ~0.25 ~
execute as @a[tag=inElevator,nbt={SelectedItemSlot:6}] at @s as @e[tag=ElevatorArmorstand,limit=1,sort=nearest] at @s if entity @e[tag=ElevatorLevel,y=0,dy=255,tag=Level6] if score @e[tag=ElevatorLevel,y=0,dy=255,tag=Level6,limit=1,sort=nearest] elevatorheight < @s elevatorheight run tp @s ~ ~-0.25 ~
execute as @a[tag=inElevator,nbt={SelectedItemSlot:7}] at @s as @e[tag=ElevatorArmorstand,limit=1,sort=nearest] at @s if entity @e[tag=ElevatorLevel,y=0,dy=255,tag=Level7] if score @e[tag=ElevatorLevel,y=0,dy=255,tag=Level7,limit=1,sort=nearest] elevatorheight > @s elevatorheight run tp @s ~ ~0.25 ~
execute as @a[tag=inElevator,nbt={SelectedItemSlot:7}] at @s as @e[tag=ElevatorArmorstand,limit=1,sort=nearest] at @s if entity @e[tag=ElevatorLevel,y=0,dy=255,tag=Level7] if score @e[tag=ElevatorLevel,y=0,dy=255,tag=Level7,limit=1,sort=nearest] elevatorheight < @s elevatorheight run tp @s ~ ~-0.25 ~
execute as @a[tag=inElevator,nbt={SelectedItemSlot:8}] at @s as @e[tag=ElevatorArmorstand,limit=1,sort=nearest] at @s if entity @e[tag=ElevatorLevel,y=0,dy=255,tag=Level8] if score @e[tag=ElevatorLevel,y=0,dy=255,tag=Level8,limit=1,sort=nearest] elevatorheight > @s elevatorheight run tp @s ~ ~0.25 ~
execute as @a[tag=inElevator,nbt={SelectedItemSlot:8}] at @s as @e[tag=ElevatorArmorstand,limit=1,sort=nearest] at @s if entity @e[tag=ElevatorLevel,y=0,dy=255,tag=Level8] if score @e[tag=ElevatorLevel,y=0,dy=255,tag=Level8,limit=1,sort=nearest] elevatorheight < @s elevatorheight run tp @s ~ ~-0.25 ~

#Kill / Spawn
execute as @e[tag=ElevatorArmorstand] at @s unless entity @a[distance=..5] run kill @e[tag=ElevatorMinecart,distance=..1]
execute as @e[tag=ElevatorArmorstand] at @s unless entity @a[distance=..5] run kill @s

execute as @e[tag=ElevatorLevel] at @s if entity @a[distance=..3] unless entity @e[tag=ElevatorArmorstand,y=0,dy=255] align xz run summon minecraft:armor_stand ~0.5 ~ ~0.5 {Team:"Elevator",NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["ElevatorArmorstand","Elevator"],Passengers:[{id:"minecraft:minecart",Invulnerable:1b,Team:"Elevator",Tags:["ElevatorMinecart","Elevator"]}],CustomName:'{"text":"Liftkabine"}'}
