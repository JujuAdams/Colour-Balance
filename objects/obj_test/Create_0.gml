//Set up colour array
colours = array_create(4);
var _i = 0;
repeat(4) colours[_i++] = array_create(3);

colours[0][0] = 0.177; //Low red
colours[0][1] = 0.035; //Low green
colours[0][2] = 0.365; //Low blue

colours[1][0] = 0.200; //Mid red
colours[1][1] = 0.255; //Mid green
colours[1][2] = 0.745; //Mid blue

colours[2][0] = 0.494; //High red
colours[2][1] = 0.275; //High green
colours[2][2] = 0.000; //High blue

colours[3][0] = 0.602; //Tint red
colours[3][1] = 0.686; //Tint green
colours[3][2] = 0.909; //Tint blue

//Start editing the tint
colour = 3;

//Turn on the help panel
help = true;