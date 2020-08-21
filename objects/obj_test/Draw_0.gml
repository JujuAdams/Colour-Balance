//Run the colour balance shader
shader_set(shd_balance);
shader_set_uniform_f(shader_get_uniform(shd_balance, "u_vLow"   ), colours[0][0], colours[0][1], colours[0][2]);
shader_set_uniform_f(shader_get_uniform(shd_balance, "u_vMid"   ), colours[1][0], colours[1][1], colours[1][2]);
shader_set_uniform_f(shader_get_uniform(shd_balance, "u_vHigh"  ), colours[2][0], colours[2][1], colours[2][2]);
shader_set_uniform_f(shader_get_uniform(shd_balance, "u_vTint"  ), colours[3][0], colours[3][1], colours[3][2]);
shader_set_uniform_f(shader_get_uniform(shd_balance, "u_vAmount"), mouse_x/room_width);
draw_sprite(spr_sample, 0, 0, 0);
shader_reset();

//Draw the help panel
if (help)
{
    var _string = "";
    _string = "Colour Balance @jujuadams\n\n";
    if (colour == 0) _string += "Editing lows:\n";
    if (colour == 1) _string += "Editing mids:\n";
    if (colour == 2) _string += "Editing highs:\n";
    if (colour == 3) _string += "Editing tint:\n";
    _string += "red="   + string(floor(255*colours[colour][0])) + "\n";
    _string += "green=" + string(floor(255*colours[colour][1])) + "\n";
    _string += "blue="  + string(floor(255*colours[colour][2])) + "\n\n";
    _string += "1,2,3,4: Swap target colour\n";
    _string += "QAWSED: Tweak colour\n";
    _string += "F1: Close this panel\n";
    
    var _w = string_width(_string);
    var _h = string_height(_string);
    
    draw_set_colour(c_black);
    draw_set_alpha(0.4);
    draw_rectangle(5, 5, 15 + _w, 15 + _h, false);
    draw_rectangle(20 + _w, 7, 70 + _w, 57, false);
    draw_set_alpha(1.0);
    
    draw_set_colour(make_colour_rgb(255*colours[colour][0], 255*colours[colour][1], 255*colours[colour][2]));
    draw_rectangle(20 + _w, 5, 70 + _w, 55, false);
    draw_set_colour(c_black);
    draw_rectangle(20 + _w, 5, 70 + _w, 55, true);
    
    draw_text( 9, 10, _string);
    draw_text(10,  9, _string);
    draw_text(11, 10, _string);
    draw_text(10, 11, _string);
    draw_set_colour(c_black);
    draw_set_alpha(0.3);
    draw_text(10, 13, _string);
    draw_set_alpha(1.0);
    draw_set_colour(c_white);
    draw_text(10, 10, _string);
}