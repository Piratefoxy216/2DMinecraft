extends KinematicBody2D
var width = 12
var heigth = 10
var heigthcount = 0
var widthcount = 0
var pos = Vector2()
var velocity = Vector2()
var block
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var r = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	while not width == r:
		r += 1
		var temp = randi() % 4 + 1
		print(temp)
		var repeat = 3
		var repeatc = 0
		while not repeat == repeatc:
			self.pos.y = 0
			widthcount += 1
			self.pos.x = 8*widthcount
			repeatc += 1
			heigthcount = 0
			while not heigthcount == heigth + temp:
				heigthcount += 1
				block = Sprite.new()
				self.pos.y = -8*heigthcount
				self.add_child(block)
				block.texture = $Dirt.texture
				block.position = pos
			
			block = Sprite.new()
			self.pos.y = -8*heigthcount
			self.add_child(block)
			block.texture = $Grass.texture
			block.position = pos


# Called every frame. 'delta' is the elapsed time since the previous frame.
