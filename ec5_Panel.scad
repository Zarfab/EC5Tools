use <ec5.scad>

$fn=240;

difference() {
    union() {
        cylinder(d1=42, d2=40, h=2);
        rotate([180, 0, 0]) cylinder(d=36, h=21.9);
    }
    for(y = [-1, 1]) {
        translate([0, y*8, -22]) {
            ec5_male(t=0.35, fill=true);
            translate([-5.05, 0, -10]) cylinder(d=7, h=12, $fn=30);
            translate([5.05, 0, -10]) cylinder(d=7, h=12, $fn=30);
        }
    }
}