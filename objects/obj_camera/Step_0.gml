/// @description Insert description here
// You can write your code in this editor

if(instance_exists(follow)) {
	xTo = follow.x;
	yTo = follow.y;
}

x += (xTo - x) / CAMERA_SNAP_SPEED;
y += (yTo - y) / CAMERA_SNAP_SPEED;

x = clamp(x, viewWidthHalf, room_width - viewWidthHalf);
y = clamp(y, viewHeightHalf, room_height - viewHeightHalf);

x += random_range(-shakeRemain, shakeRemain);
y += random_range(-shakeRemain, shakeRemain);

shakeRemain = max(0, shakeRemain - ((1/shakeLength) * shakeMagnitude));

camera_set_view_pos(cam, x - viewWidthHalf, y - viewHeightHalf);

