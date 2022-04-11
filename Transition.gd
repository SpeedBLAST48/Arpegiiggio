extends CanvasLayer

signal transitioned

func transition():
	$AnimationPlayer.play("Fade out")
	print("Fading to black")

func _on_AnimationPlayer_animation_finished(anim_name):

		emit_signal("transitioned")
		$AnimationPlayer.play("Fade in")
