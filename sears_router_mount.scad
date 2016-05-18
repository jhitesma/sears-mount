$fs=.5;

union() {
difference() {
    union(){
        translate([0,0,45]) cylinder(90,55,55,true);
        translate([0,58,80]) cube([15,14,10],true);
        translate([0,58,5]) cube([15,14,10],true);
    }
    translate([0,0,46]) cylinder(93,45,45,true);
    translate([0,55,46]) cube([5,25,93],true);
    translate([0,60,80]) rotate([0,90,0]) cylinder(50,1.5,1.5,true);
    translate([0,60,5]) rotate([0,90,0]) cylinder(50,1.5,1.5,true);
}

translate([26,-72,-5])import("d:/3dprinting/umTallSlider.stl");
}