
//Soporte para los motores

difference(){
union(){
translate([21,-12,0])
cube([5,60,70], center=true);
translate([-21,-12,0])
cube([5,60,70], center=true);
translate([0,-60,0])
rotate([0,0,90])
cube([5,60,70], center=true);
}

//Enlace a tapa superior e inferior
translate([-21,-12,32.5])
rotate([0,0,0])
#cube([5,30,5], center=true);
translate([21,-12,32.5])
rotate([0,0,0])
#cube([5,30,5], center=true);
translate([0,-60,32.5])
rotate([0,0,90])
#cube([5,30,5], center=true);

translate([-21,-12,-32.5])
rotate([0,0,0])
#cube([5,30,5], center=true);
translate([21,-12,-32.5])
rotate([0,0,0])
#cube([5,30,5], center=true);
translate([0,-60,-32.5])
rotate([0,0,90])
#cube([5,30,5], center=true);

//Agujeros
translate([0,5,24])
rotate([0,90,0])
cylinder(r=3/2, h=100, $fn=40, center=true);
translate([0,-5,24])
rotate([0,90,0])
cylinder(r=3/2, h=100, $fn=40, center=true);
translate([0,-30,24])
rotate([0,90,0])
cylinder(r=3/2, h=100, $fn=40, center=true);
translate([0,-20,24])
rotate([0,90,0])
cylinder(r=3/2, h=100, $fn=40, center=true);

translate([0,5,-24])
rotate([0,90,0])
cylinder(r=3/2, h=100, $fn=40, center=true);
translate([0,-5,-24])
rotate([0,90,0])
cylinder(r=3/2, h=100, $fn=40, center=true);
translate([0,-30,-24])
rotate([0,90,0])
cylinder(r=3/2, h=100, $fn=40, center=true);
translate([0,-20,-24])
rotate([0,90,0])
cylinder(r=3/2, h=100, $fn=40, center=true);

translate([-12,-30,0])
rotate([0,0,90])
union(){
translate([0,5,24])
rotate([0,90,0])
cylinder(r=3/2, h=100, $fn=40, center=true);
translate([0,-5,24])
rotate([0,90,0])
cylinder(r=3/2, h=100, $fn=40, center=true);
translate([0,-30,24])
rotate([0,90,0])
cylinder(r=3/2, h=100, $fn=40, center=true);
translate([0,-20,24])
rotate([0,90,0])
cylinder(r=3/2, h=100, $fn=40, center=true);

translate([0,5,-24])
rotate([0,90,0])
cylinder(r=3/2, h=100, $fn=40, center=true);
translate([0,-5,-24])
rotate([0,90,0])
cylinder(r=3/2, h=100, $fn=40, center=true);
translate([0,-30,-24])
rotate([0,90,0])
cylinder(r=3/2, h=100, $fn=40, center=true);
translate([0,-20,-24])
rotate([0,90,0])
cylinder(r=3/2, h=100, $fn=40, center=true);
}
}
