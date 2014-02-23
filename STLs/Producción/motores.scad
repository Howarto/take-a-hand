//Posiciones de los motores//

translate([0,0,0])
color([0,1,0])
union(){
	translate([25,0,0])
	cube([48,21,41], center=true);
	translate([-25,0,0])
	cube([48,21,41], center=true);
	translate([25,-25,0])
	cube([48,21,41], center=true);
	translate([-25,-25,0])
	cube([48,21,41], center=true);
	translate([0,-65,0])
	rotate([0,0,90])
	cube([48,21,41], center=true);
}
