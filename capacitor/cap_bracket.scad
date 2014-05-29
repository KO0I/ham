// Capacitor Bracket - used to attach capacitor to the antenna's "spine"

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
translate([0,20,17.5])rotate([90,0,0]){
			difference(){
			translate([0,0,0])cube([110,40,T],center=true);
			translate([45,10,0]) bore();
			translate([-45,10,0]) bore();
		}
	}

	difference(){
		translate([0,0,0])cube([110,40,T],center=true);
		//translate([0,-35,0]) bore();

		translate([45,0,0]) bore();
		//translate([45,-45,0]) bore();
		translate([-45,0,0]) bore();
		//translate([-45,-45,0]) bore();
	}
	
}

isoplate();