union () {
	difference() {
		translate([2.5,0,0]) cube([22,20,12]);
		translate([8.5,-1,2]) cube([10,15,11]);
	}
	translate([-12.5,0,0]) cube([10,20,10]);
}