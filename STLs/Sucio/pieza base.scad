//Meta los valores//
x = 59;
y = 22/*ancho de un servo*/*5/*servos*/;
z = 47;

/*---------------------------------*/

/*/Lengüeta para sujección. Me ayuda a guiar en modelado//
translate([10,0,20])
%cube([17,1000,2], center=true);
translate([-10,0,20])
%cube([17,1000,2], center=true);
translate([0,-50,20])
rotate([0,0,90])
%cube([17,1000,2], center=true);*/


//Posiciones de los motores//

translate([0,0,0])
color([0,1,0])
union(){
	translate([25,0,0])
	cube([47,20,40], center=true);
	translate([-25,0,0])
	cube([47,20,40], center=true);
	translate([25,-25,0])
	cube([47,20,40], center=true);
	translate([-25,-25,0])
	cube([47,20,40], center=true);
	translate([0,-65,0])
	rotate([0,0,90])
	cube([47,20,40], center=true);
}

//Soporte para los motores

difference(){
union(){
translate([21,-12,0])
cube([5,60,90], center=true);
translate([-21,-12,0])
cube([5,60,90], center=true);
translate([0,-60,0])
rotate([0,0,90])
cube([5,60,90], center=true);
}

//Enlace a tapa superior e inferior
translate([-20,-12,40])
rotate([0,0,0])
cube([10,30,10], center=true);
translate([20,-12,40])
rotate([0,0,0])
cube([10,30,10], center=true);
translate([0,-60,40])
rotate([0,0,90])
cube([10,30,10], center=true);

translate([-20,-12,-40])
rotate([0,0,0])
cube([10,30,10], center=true);
translate([20,-12,-40])
rotate([0,0,0])
cube([10,30,10], center=true);
translate([0,-60,-40])
rotate([0,0,90])
cube([10,30,10], center=true);

//Agujeros
translate([0,5,23])
rotate([0,90,0])
cylinder(r=3/2, h=100, $fn=40, center=true);
translate([0,-5,23])
rotate([0,90,0])
cylinder(r=3/2, h=100, $fn=40, center=true);
translate([0,-30,23])
rotate([0,90,0])
cylinder(r=3/2, h=100, $fn=40, center=true);
translate([0,-20,23])
rotate([0,90,0])
cylinder(r=3/2, h=100, $fn=40, center=true);

translate([0,5,-23])
rotate([0,90,0])
cylinder(r=3/2, h=100, $fn=40, center=true);
translate([0,-5,-23])
rotate([0,90,0])
cylinder(r=3/2, h=100, $fn=40, center=true);
translate([0,-30,-23])
rotate([0,90,0])
cylinder(r=3/2, h=100, $fn=40, center=true);
translate([0,-20,-23])
rotate([0,90,0])
cylinder(r=3/2, h=100, $fn=40, center=true);
}

difference(){
//TAPA//
union(){
translate([0,-35,-40])
rotate([0,0,0])
cube([105,120,5], center=true);

translate([0,-35,40])
rotate([0,0,0])
cube([105,120,5], center=true);
}

//TORNILLOS//
translate([45,19,0])
cylinder(r=3/2, h=100, $fn=40, center=true);
translate([-45,19,0])
cylinder(r=3/2, h=100, $fn=40, center=true);
translate([-45,-90,0])
cylinder(r=3/2, h=100, $fn=40, center=true);
translate([45, -90, 0])
cylinder(r=3/2, h=100, $fn=40, center=true);
}