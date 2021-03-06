# Physics Platformer

This demo uses [`RigidBody2D`](https://docs.godotengine.org/en/latest/classes/class_rigidbody2d.html)
for the player and enemies.
These character controllers are more powerful than
[`KinematicBody2D`](https://docs.godotengine.org/en/latest/classes/class_kinematicbody2d.html),
but can be more difficult to handle, as they require
manual modification of the RigidBody velocity.

Language: GDScript

Renderer: GLES 3 (particles are not available in GLES 2)

## How does it work?

The player and enemies use dynamic character
controllers for movement, made with
[`RigidBody2D`](https://docs.godotengine.org/en/latest/classes/class_rigidbody2d.html),
which means that they can perfectly interact with physics
(there is a see-saw, and you can even ride enemies).
Because of this, all movement must be done in sync with
the physics engine, inside of `_integrate_forces()`.
