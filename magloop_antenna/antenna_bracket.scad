// A bracket for the antenna's pipe

brack_len=80;
brack_width=20;
brack_rad=9.6; // about 3/8"
sr=8.83; // standard diameter
T=5; //thickness

module bore(){
  cylinder(h=(T+2),d=sr,center=true);
}

module bracket(){
  difference(){
    cube([brack_len,brack_width,T],center=true);
    cube([brack_rad+9.8,brack_width,T],center=true);
    rotate([90,0,0]) cylinder(h=brack_width+2,r=brack_rad,center=true);
    translate([30,0,0]) bore();
    translate([-30,0,0]) bore();
	}

  rotate([90,0,0]){
    difference(){
      cylinder(h=brack_width,r=brack_rad+T,center=true);
      cylinder(h=brack_width,r=brack_rad,center=true);
      rotate([-90,0,0]) translate([0,0,-10]){
        cube([brack_rad+(5*T),brack_width+T,2*brack_rad],center=true);
      }
    }
  }
}

rotate([90,0,0])bracket();
