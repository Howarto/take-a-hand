//Meta los valores
x = 59;
y = 22/*ancho de un servo*/*5/*servos*/;
z = 47;


difference(){
cube([x, y, z], center=true);
#cube([x-2, y-2, z-2], center=true);
translate([0, 0, -27])
#cube([x-2, y-2, z+50], center=true);
translate([0,0,0])
rotate([0,0,90])
#cube([20*5, 40, 50], center=true); /*Hueco del motor*/
#cube([x+50, y-2, z-2], center=true);
#cube([x-2, y+50, z-2], center=true);
}