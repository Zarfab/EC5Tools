
//freeboxUSB();
cableUSB();

module freeboxUSB() {
    translate([0, 0, -28.4]) union() {
        translate([0, 0, 28.4/2]) cube([17.8, 10.4, 28.4], center=true);
        translate([-2.4/2, 10.4/2, 0]) cube([2.4, 2.0, 24.0]);
        translate([0, 0, -5.4]) cylinder(d=6.0, h=5.4, $fn=30);
        translate([0, 0, -16]) cylinder(d=4.0, h=16, $fn=24);
    }
}

module cableUSB() {
    translate([0, 0, -40.8]) {
        hull() {
            cube([13.0, 10.2, 0.1], center=true);
            translate([0, 0, 10]) cube([18.0, 10.2, 0.1], center=true);
            translate([0, 0, 30]) cube([18.0, 10.2, 0.1], center=true);
        }
        translate([0, 0, 30+10.8/2]) cube([15.0, 7.6, 10.8], center=true);
        translate([0, 0, -2.8]) cylinder(d=8.0, h=2.8, $fn=30);
        translate([0, 0, -16]) cylinder(d=4.2, h=16, $fn=24);
    }
}