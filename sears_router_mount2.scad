$fs=.5;
$fa=1;

union() {
    difference() {
        hull(){
            // Outer Shell
            translate([0,0,35]) cylinder(70,55,55,true);
            // Upper Tab
            union() {
            translate([0,58,60]) cube([15,14,10],true);
            translate([0,55.8,53]) rotate([45,0,0]) cube([15,16,10],true);
            }
            union() {
            // Lower Tab
            translate([0,58,5]) cube([15,14,10],true);
            translate([0,55.8,12]) rotate([-45,0,0]) cube([15,16,10],true);
            }
        }
        // Router Body
        translate([0,0,50]) cylinder(93,45,45,true);
        // Bottom opening
        union() {
            translate([0,0,00]) cylinder(10,42.5,42.5,true);
            rotate([0,0,-30]) translate([0,42.5,0]) cube([5,5,10],true);
        }

        // Left cutout
        difference() {
            translate([50,0,35]) rotate([90,0,0]) cylinder(123,30,20,true);
            translate([20,0,67]) rotate([90,0,0]) rotate([0,0,45]) cube([60,60,125],true);
        }
        // Right Cutout
        difference() {
        translate([-50,0,35]) rotate([90,0,0]) cylinder(123,30,20,true);
            translate([-20,0,67]) rotate([90,0,0]) rotate([0,0,45]) cube([60,60,125],true);
        }

        hull() {
            translate([-15,55,35]) rotate([90,0,25]) cylinder(50,3,3,true);
            translate([-30,13,58]) rotate([90,0,25]) cylinder(50,3,3,true);
        }
        hull() {
            translate([15,55,35]) rotate([90,0,-25]) cylinder(50,3,3,true);
            translate([30,13,58]) rotate([90,0,-25]) cylinder(50,3,3,true);
        }

        // Clamp gap
        translate([0,55,46]) cube([5,26,93],true);
        
        // Upper Clamp bolt
        union() {
            translate([0,60,60]) rotate([0,90,0]) cylinder(50,1.5,1.5,true);
            translate([8,60,60]) rotate([0,90,0]) cylinder(h=20, r=5.5 / 2 / cos(180 / 6) + 0.05, $fn=6);
            translate([-28,60,60]) rotate([0,90,0]) cylinder(h=20, r=5.5 / 2 / cos(180 / 6) + 0.05);
        }

        // Lower Clamp bolt
        union() {
            translate([0,60,5]) rotate([0,90,0]) cylinder(50,1.5,1.5,true);
            translate([8,60,5]) rotate([0,90,0]) cylinder(h=20, r=5.5 / 2 / cos(180 / 6) + 0.05, $fn=6);
            translate([-28,60,5]) rotate([0,90,0]) cylinder(h=20, r=5.5 / 2 / cos(180 / 6) + 0.05);
        }

    }


    // Universal Mount
    difference() {
        translate([26,-72,-5]) import("./umTallSlider_fixed.stl");
        // Router Body mockup
        hull() {
            translate ([0,0,70]) cylinder(10,45,45,true); 
            translate([0,0,90]) cylinder(30,57,57,true);
        }
    }
}
