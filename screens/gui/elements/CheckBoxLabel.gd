class_name CheckBoxLabel
extends MarginContainer

onready var label: Label = $HBoxContainer/Label
onready var check_box: CheckBox = $HBoxContainer/CheckBox
onready var color_rect: ColorRect = $ColorRect

var label_text: String = "changeme"

var check_box_value: bool = false
var check_box_disabled: bool = false
var check_box_text: String

var starting_color: Color
var mouseover_color: Color

###############################################################################
# Builtin functions                                                           #
###############################################################################

func _ready() -> void:
	label.text = label_text
	
	check_box.pressed = check_box_value
	check_box.disabled = check_box_disabled
	
	if check_box_text:
		check_box.text = check_box_text
	
	starting_color = color_rect.color
	mouseover_color = starting_color
	mouseover_color *= 1.5
	
	self.connect("mouse_entered", self, "_on_mouse_entered")
	self.connect("mouse_exited", self, "_on_mouse_exited")

###############################################################################
# Connections                                                                 #
###############################################################################

func _on_mouse_entered() -> void:
	color_rect.color = mouseover_color

func _on_mouse_exited() -> void:
	color_rect.color = starting_color

###############################################################################
# Private functions                                                           #
###############################################################################

###############################################################################
# Public functions                                                            #
###############################################################################

