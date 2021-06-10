use <ec5.scad>
use <cableDuct.scad>

$fn=240;
w = 72;

// cableDuct(50);


difference() {
    hull() {
        cube([w, 76, 12]);
        translate([0, 6, 0]) cube([w, 64, 24]);
    }
    translate([-1, 20, -0.01]) cableDuct(w+2);
    translate([18, 51.2, 6.8]) rotate([-63, 0, 0]) ec5_male(t=0.35, fill=true);
    translate([w-18, 51.2, 6.8]) rotate([-63, 0, 0]) ec5_male(t=0.35, fill=true);
    hull() {
        translate([7.2, 32, -0.01]) cube([w-14.4, 23, 0.8]);
        translate([7.2, 9, 20]) cube([w-14.4, 35, 2]);
        translate([7.2, 4, 12]) cube([w-14.4, 24, 0.8]);
    }
    
    // screw
    translate([w/2, 62, -0.01]) {
        cylinder(d=4.4, h=25);
        translate([0, 0, 21.02]) cylinder(d1=4.4, d2=8.4, h=3);
    }
    //translate([-0.1, -0.1, -0.1]) cube([10, 80, 30]);
}