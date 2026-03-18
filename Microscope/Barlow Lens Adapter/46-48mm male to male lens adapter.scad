// 46mm-48mm Double-Male Step-Up Adapter (FDM-friendly)
// Hollow center, thin, loose-fit
// Smooth male surfaces for easy printing; threads can be tapped afterward if needed

$fn = 180;

// Parameters
male1_d = 46.0;        // smaller male diameter (mm)
male2_d = 48.0;        // larger male diameter (mm)
inner_clear = 47.5;    // central bore (mm)
length_each = 3.0;     // length of each male section (mm)
ring_thickness = 6.0;  // total adapter thickness (mm)
clearance = 0.2;       // loose fit

// Module for smooth male stub with hollow center
module male_stub(diam, length, hole_d) {
    difference() {
        cylinder(d = diam + clearance, h = length, center=false);
        cylinder(d = hole_d, h = length + 0.1, center=false);
    }
}

// Adapter assembly
module double_male_adapter() {
    union() {
        // Central ring body with hollow core
        translate([0,0,length_each])
            difference() {
                cylinder(d = male2_d + 2*clearance, h = ring_thickness - 2*length_each, center=false);
                cylinder(d = inner_clear, h = ring_thickness - 2*length_each + 0.1, center=false);
            }

        // 46mm male end
        male_stub(male1_d - 0.75, length_each + 3, inner_clear - 5);

        // Link
        translate([0,0,ring_thickness - length_each + 3])
            male_stub(male2_d + 2, length_each - 1, inner_clear - 5);

        // 48mm male end
        translate([0,0,ring_thickness - length_each + 5])
            male_stub(male2_d + 2, length_each + 3, inner_clear + 0);
//            male_stub(male2_d + 2, length_each + 3, inner_clear + 0.1); Too Big
    }
}

// Render adapter
double_male_adapter();
