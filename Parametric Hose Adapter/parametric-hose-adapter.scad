/* [Basics] */

// Inner Diameter of Part A (mm)
part_a_inner_diameter = 15;

// Outer Diameter of Part B (mm)
part_b_outer_diameter = 8;

/* [Advanced] */

// Material Strength (mm)
material_strength = 2;

// How long is the slide on section per part? (mm)
slide_on_length = 20;

// How long is the connection section between the parts? (mm)
connection_length = 5;

// What is the slide on ramp for creating a tight fit? (mm)
slide_on_ramp = 0;

/* [Hidden] */
//  Number of fragments for rendering a circle
$fn = 100;

//projection(cut = true) rotate([90,0,0])
//projection(cut = false) rotate([90,0,0])
adapter(
    part_a_inner_diameter, 
    part_b_outer_diameter, 
    material_strength, 
    slide_on_length, 
    connection_length,
    slide_on_ramp
);


module adapter(partA, partB, strength, length, con_length, ramp) {
    union() {
        // Part A
        translate([0, 0, length + con_length]) {
            difference() {
                cylinder(length, d1 = partA + 0.4 + strength + ramp, d2 = partA + 0.4 + strength - ramp);
                cylinder(length, d1 = partA + 0.4 + strength - strength, d2 = partA + 0.4 + strength - strength);
            }
        }

        // Connection between Part A and Part B
        translate([0, 0, length]) {
            difference() {
                cylinder(con_length, d1 = partB - strength + strength, d2 = partA + 0.4 + strength + ramp);
                cylinder(con_length, d1 = partB - strength - ramp, d2 = partA + 0.4 + strength - strength);
            }
        }

        // Part B
        difference() {
            cylinder(length, d1 = partB - strength + strength, d2 = partB - strength + strength);
            cylinder(length, d1 = partB - strength + ramp, d2 = partB - strength - ramp);
        }
    }
}