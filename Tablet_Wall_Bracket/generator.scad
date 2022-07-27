// Customizable Wall Bracket
// (c) 2013 Wouter Robers

// How thick is the thing you want to bracket?
ClampSize=10.3;

// Material thickness (thicker makes stronger, but less flexible).
Thickness=2;

// Height of the rim in the front of the bracket
RimHeight=3;

// Corner bevel size (bigger bevel gives better strength)
Corner=1;

// Screw hole
screwSize=4;

// Clamp width
Width=20;

MakeBracket();

module MakeBracket() {
  rotate([0,0,-90]) difference() {
    linear_extrude(height = Width)
    polygon([[0, 0],[0, 20 + Thickness],[Thickness, 20 + Thickness],[Thickness, Thickness + Corner],[Thickness + Corner,Thickness],[Thickness + ClampSize-Corner, Thickness],[Thickness + ClampSize, Thickness + Corner],[Thickness + ClampSize, Thickness + RimHeight],[2 * Thickness + ClampSize, Thickness + RimHeight],[2 * Thickness + ClampSize, Corner],[2 * Thickness + ClampSize-Corner, 0]]);

    translate([Thickness + 0.01, Width / 2 + Thickness, Width / 2]) 
      rotate([0, 270, 0]) {
        cylinder(h = screwSize / 2, d2 = screwSize, d1 = screwSize * 2, $fn = 75);
        cylinder(h = Thickness + 0.02, d2 = screwSize, d1 = screwSize, $fn = 75);
      }
  }
}