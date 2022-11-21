ww = 20;
wh = 65;
wo = 150;
wd = 70;

module ratf_machine() {
  difference() {
    union() {
      translate([0, 0, wh])
      cube([2 * wo + 2 * ww/2, ww, 2 * wh], center = true);

      translate([-wo, 0, wh/2])
      cube([ww, 2 * wd + ww, wh], center = true);

      translate([0, 0, wh/2])
      cube([ww, 2 * wd + ww, wh], center = true);

      translate([wo, 0, wh/2])
      cube([ww, 2 * wd + ww, wh], center = true);
    }  
  }
}

module ratf_warehouse() {
  difference() {
    union() {
      translate([0, 0, wh])
      cube([4 * wo + 2 * ww/2, ww, 2 * wh], center = true);

      translate([-2 * wo, -wd/2, wh/2])
      cube([ww, wd + ww, wh], center = true);

      translate([-wo,  -wd/2, wh/2])
      cube([ww, wd + ww, wh], center = true);

      translate([0,  -wd/2, wh/2])
      cube([ww, wd + ww, wh], center = true);

      translate([wo,  -wd/2, wh/2])
      cube([ww, wd + ww, wh], center = true);

      translate([2 * wo,  -wd/2, wh/2])
      cube([ww, wd + ww, wh], center = true);
    }  
  }
}


ratf_warehouse();
//ratf_machine();