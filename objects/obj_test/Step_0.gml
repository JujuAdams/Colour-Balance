//Swap between colour targets
if (keyboard_check_pressed(ord("1"))) colour = 0;
if (keyboard_check_pressed(ord("2"))) colour = 1;
if (keyboard_check_pressed(ord("3"))) colour = 2;
if (keyboard_check_pressed(ord("4"))) colour = 3;

//Modify the targeted colour
if (keyboard_check(ord("Q"))) colours[colour][0] = clamp(colours[colour][0] + 0.003, 0.0, 1.0);
if (keyboard_check(ord("A"))) colours[colour][0] = clamp(colours[colour][0] - 0.003, 0.0, 1.0);
if (keyboard_check(ord("W"))) colours[colour][1] = clamp(colours[colour][1] + 0.003, 0.0, 1.0);
if (keyboard_check(ord("S"))) colours[colour][1] = clamp(colours[colour][1] - 0.003, 0.0, 1.0);
if (keyboard_check(ord("E"))) colours[colour][2] = clamp(colours[colour][2] + 0.003, 0.0, 1.0);
if (keyboard_check(ord("D"))) colours[colour][2] = clamp(colours[colour][2] - 0.003, 0.0, 1.0);

//Toggle the help panel
if (keyboard_check_pressed(vk_f1)) help = !help;