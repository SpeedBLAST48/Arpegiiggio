extends CanvasLayer


func _ready():
	transition()


func transition():
	$AnimationPlayer.play("Fade out")


func _on_AnimationPlayer_animation_finished(anim_name):
	get_tree().change_scene("res://Stage.tscn")
