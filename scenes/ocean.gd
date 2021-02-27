extends Node

export (PackedScene) var jelly1
export (PackedScene) var jelly2
export (PackedScene) var jelly3
export (PackedScene) var jelly4
export (PackedScene) var orca
export (PackedScene) var goal

func _ready():
	randomize()
	$Music.play()
