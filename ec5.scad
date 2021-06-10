$fn = 120;

ec5_male();
translate([0, 12, 0]) ec5_female();


module ec5_male(t=0.2, fill=false) {
    difference() {
        union() {
            translate([-(19.3-9.2)/2, -(9.2+t)/2, 0]) {
                translate([0, -0.6/2, 0]) cube([10+t, 7.8+t, 0.8]);
                cube([10+t, 7.2+t, 7.8]);
            }
            translate([-(19.3-9.2)/2, 0, 0]) {
                cylinder(d=9.8+t, h=0.8);
                cylinder(d=9.2+t, h=25);
            }
            translate([(19.3-9.2)/2, 0, 0]) {
                ec5_plus(d=9.8+t, h=0.8);
                ec5_plus(d=9.2+t, h=25);
            }
        }
        if(fill == false) {
            translate([-(19.3-9.2)/2, 0, 8]) cylinder(d=8-t, h=25.1);
            translate([(19.3-9.2)/2, 0, 8]) ec5_plus(d=8-t, h=25.1);
        }
    }
    translate([-(19.3-9.2)/2, 0, 0]) cylinder(d=5+t, h=21.2+t);
    translate([(19.3-9.2)/2, 0, 0]) cylinder(d=5+t, h=21.2+t);
}



module ec5_female(t=0.2, fill=false) {
    difference() {
        union() {
            translate([-(19.3-9.2)/2, -(9.2+t)/2+2, 0]) {
                translate([0, -0.6/2, 0]) cube([10+t, 7.8+t, 0.8]);
                cube([10+t, 7.2+t, 7.8]);
            }
            translate([-(19.3-9.2)/2, 0, 0]) {
                cylinder(d=9.8+t, h=0.8);
                cylinder(d=9.2+t, h=7.8);
                cylinder(d=7.7+t, h=23.7);
            }
            translate([(19.3-9.2)/2, 0, 0]) {
                ec5_plus(d=9.8+t, h=0.8);
                ec5_plus(d=9.2+t, h=7.8);
                ec5_plus(d=7.7+t, h=23.7);
            }
        }
        if(fill == false) {
            translate([-(19.3-9.2)/2, 0, 8]) cylinder(d=6.3+t, h=25.1);
            translate([(19.3-9.2)/2, 0, 8]) cylinder(d=6.3+t, h=25.1);
        }
    }
    translate([-(19.3-9.2)/2, 0, 0]) difference() {
        cylinder(d=6.5, h=20.4+t);
        cylinder(d=5+t, h=20.6+t);
    }
    translate([(19.3-9.2)/2, 0, 0]) difference() {
        cylinder(d=6.5, h=20.4+t);
        cylinder(d=5+t, h=20.6+t);
    }
}


module ec5_plus(d, h) {
    hull() {
        cylinder(d=d, h=h);
        translate([0, -d/2, 0]) cube([d/2, d, h]);
    }
}