sr=8.83; //  standard diameter
T=5; //thickness

module bore(){
	cylinder(h=(T+2),d=sr,center=true);
}
/*
module threadrod(){
	color("Blue",0.5) cylinder(h=
}
*/

module isoplate(){
	difference(){
		cube([110,110,T],center=true);
		bore();
		//translate([0,-35,0]) bore();

		translate([45,45,0]) bore();
		translate([45,-45,0]) bore();
		translate([-45,45,0]) bore();
		translate([-45,-45,0]) bore();
	}
	
}

isoplate();