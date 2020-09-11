# Godot TileMap Collision test

This is a tiny example of unexpected behavior I'm getting when trying to detect which tile a KinematicBody2D has collided with.

When starting up the game, you will see the output is "tileId: -1" repeatedly. But if you hold down the left arrow key, the KinematicBody will move to the left, and eventually the output becomes "tileId: 0"

Basically on the left side of the tile, the collision detects the correct tile, but on the right side, it does not. I don't understand why.
