extends Control

var dialogues = [
	"Officer: Ah, you must be the investigator...",
	"Victor White, age 45, was found dead in his hotel room...",
	"Officer: No signs of forced entry, but there's definitely evidence pointing to foul play...",
	"Officer: We've got three key suspects. It's up to you to piece together the evidence...",
	"Officer: Start with the crime scene. Every piece of evidence counts!"
]
var dialogue_index = 0

@onready var dialogue_label = $DialogueLabel
@onready var next_button = $NextButton
@onready var audio_player = $AudioStreamPlayer

func _ready():
	dialogue_label.text = dialogues[dialogue_index]
	audio_player.stream = preload("res://sounds/case1-cutscene-starting.mp3")
	audio_player.play()
	next_button.pressed.connect(_on_next_pressed)

func _on_next_pressed():
	dialogue_index += 1
	if dialogue_index < dialogues.size():
		dialogue_label.text = dialogues[dialogue_index]
	else:
		get_tree().change_scene_to_file("res://scenes/game.tscn")
