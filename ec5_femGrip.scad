use<ec5.scad>

// 2.5mm² * 2 : [8.5, 8.0]
// 2.5mm² / AWG 14: [8.5, 4.0]
// 1.5mm² / AWG 16: [5.0, 3.2]

printable_grip(wiresize = [8.5, 8.0]);


module printable_grip(wiresize = []) {
    translate([0, 10, 6.3]) rotate([90, 0, 0]) half_grip(wiresize = wiresize);
    translate([0, -10, 6.3]) rotate([-90, 0, 0]) half_grip(half=1, wiresize = wiresize);
}


module half_grip(half = 0, wiresize = [8, 4]) {
    difference() {
        hull() {
            translate([0, 0, 3.8]) roundedCube([22.6, 12.6, 7.5], 2, center=true, $fn=60);
            translate([0, 0, -16]) roundedCube([wiresize[0]+2.4, 12.6, 0.5], 2, center=true, $fn=60);
        }
        ec5_female(t=0.3);
        hull() {
            translate([-5.05, 0, 0]) cylinder(d=7, h=0.5, $fn=30);
            translate([5.05, 0, 0]) cylinder(d=7, h=0.5, $fn=30);
            translate([0, 0, -12.1]) roundedCube([wiresize[0], wiresize[1], 0.5], 1, center=true, $fn=30);
        }
        translate([0, 0, -14.1]) roundedCube([wiresize[0], wiresize[1], 6], 1, center=true, $fn=30);
        if(half == 0)
            translate([-20, 0, -20]) cube([40, 20, 40]);
        else
            translate([-20, -20.1, -20]) cube([40, 20, 40]);
    }
    if(half == 0)
        translate([0, -wiresize[1]*0.5, -15.6]) cube([wiresize[0], 0.8, 0.8], center=true);
    else
        translate([0, wiresize[1]*0.5, -12]) cube([wiresize[0], 0.8, 0.8], center=true);
}


module roundedCube(size, radius, center) {
    if(center) translate([0, 0, 0]);
    else translate([size[0]/2, size[1]/2, 0]);
    hull() {
        translate([-size[0]/2 + radius, -size[1]/2 + radius, 0]) cylinder(r=radius, h=size[2], center=center);
        translate([size[0]/2 - radius, -size[1]/2 + radius, 0]) cylinder(r=radius, h=size[2], center=center);
        translate([-size[0]/2 + radius, size[1]/2 - radius, 0]) cylinder(r=radius, h=size[2], center=center);
        translate([size[0]/2 - radius, size[1]/2 - radius, 0]) cylinder(r=radius, h=size[2], center=center);
    }
}