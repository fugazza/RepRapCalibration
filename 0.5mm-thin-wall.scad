// 0,5mm thin wall cube or cylinder
length = 20;
width = 20;
height = 10;
thickness = 0.5;
cubes = true; // true = cube; false = cylinder

module thin_wall_object(l,w,h,t) {
	translate([0,0,h/2])
	if (cubes) {
		difference() {
			cube([l+t,w+t,h],true);
			cube([l-t,w-t,h+1],true);	
		}
	} else {
		difference() {
			cylinder(r=length/2+t/2,h=h,center=true);
			cylinder(r=length/2-t/2,h=h+1,center=true);
		}
	}
}

thin_wall_object(length,width,height,thickness);


// debug code for testing, how slicing software treats different wall thickness
//he = 0.3;
//woh = 2.3;
//wi = he*woh;
//
//for (i=[ [-2,      1.5, 0.1*wi],		
//		 [-0.75,  1.5, 0.5*wi],
//		 [0.75,   1.5, 1.0*wi],
//		 [2,      1.5, 1.5*wi],
//		 [-2,    -1.5, 2.0*wi],
//		 [-0.75, -1.5, 2.4*wi],
//		 [0.75,  -1.5, 2.5*wi],
//		 [2,     -1.5, 2.6*wi],
//		 [-2,    -3,   3.5*wi],
//		 [-0.75, -3,   3.8*wi],
//		 [0.75,  -3,   3.9*wi],
//		 [2,     -3,   4.0*wi]
//       ]) {
//	translate([i[0]*length,i[1]*width,0]) thin_wall_object(length,width,height,i[2]);
//}