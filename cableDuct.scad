cableDuct(l=60);

module cableDuct(l=30) {
    translate([0, -35.2/2, 0]) cube([l, 35.2, 0.8]);
    hull() {
      translate([0, -32.8/2, 0]) cube([l, 32.8, 0.8]);
      translate([0, -32.8/2+6, 10.8]) rotate([0, 90, 0]) scale([1, 2, 1]) cylinder(r=3, h=l, $fn=30);
      translate([0, 32.8/2-6, 10.8]) rotate([0, 90, 0]) scale([1, 2, 1]) cylinder(r=3, h=l, $fn=30);
    }
}