extends Control

@onready var start_button = $VBoxContainer/StartButton
@onready var guide_button = $VBoxContainer/GuideButton
@onready var background_music = $AudioStreamPlayer

func _ready():
	start_button.pressed.connect(_on_start_pressed)
	guide_button.pressed.connect(_on_guide_pressed)

func _on_start_pressed():
	background_music.stop()
	get_tree().change_scene_to_file("res://scenes/game.tscn")

func _on_guide_pressed():
	get_tree().change_scene_to_file("res://scenes/guide.tscn")
