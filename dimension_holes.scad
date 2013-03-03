translate([50,24,0]) cylinder(r=2.5, h=12, $fn=36);
translate([40,24,0]) cylinder(r=4, h=12, $fn=36);
translate([45,8,0]) cylinder(r=8, h=12, $fn=36);

difference() {
	cube([32,32,10]);
	translate([26,7,-1]) cylinder(r=2.5, h=12, $fn=36);
	translate([24,24,-1]) cylinder(r=4, h=12, $fn=36);
	translate([12,12,-1]) cylinder(r=8, h=12, $fn=36);
	rotate([0,0,35]) translate([0,14,-1]) cube([50,20,12]);
}