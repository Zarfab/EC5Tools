use <ec5.scad>

difference() {
    union() {
        cylinder(d=48, h=3);
        cylinder(d1=48, d2=24, h=16);
        cylinder(d=24, h=20);
    }
    rotate([180, 0, 0]) translate([0, 0, -20-8]) #ec5_male(t=0.4, fill=false);
    translate([0, -30, 10]) cube([16, 36, 24], center=true);
    
}