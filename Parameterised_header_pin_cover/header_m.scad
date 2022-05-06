s = 2;      // width of sides
base = 1;   // height of base
gap = .25;  // minimum gap to allow for printer inaccuracies
hr = 1.5;   // hinge radius

bigHole = 1.5;  // radius of large single cable hole
ribbonHole = 0; // radius of each core of ribbon cable

columns = 4; // number of pins
pitch = 2.54;// distance between pins

pin = [.67, 14.22, .67];
sep = [2.7, 3.3, 2.36];

solder = 3; // length of soldered bit of pins
wire = 10;  // length of wire within plug cavity

render = 100;

f = 1;      // length of front pin anchor
m = 1;      // length of middle pin anchor
b = 3;      // length of back of cavity

// Default values
hGap = gap*1.414;   // hinge gap in y-direction

// Do not alter below here
h = base + sep[2] + gap;

length = columns * pitch + 2 * (s+gap);

width = f + sep[1] + solder + wire + b + 2*gap;

hsup = [[hr,-gap],[-hr-gap,-gap],[-hr-gap,-h],[0,-h]];

//!mirror([1,0,0])rotate([90, 0, 0])linear_extrude(height=10)polygon(hsup);
module void()
{
    // Metal pins
    for (i = [0:columns-1]) 
        translate([pitch/2+gap+pitch*i-pin[0]/2, f+sep[1]+solder-pin[1      ], sep[2]/2-pin[2]/2])
            cube([pin[0]+2*gap, pin[1]+2*gap, pin[2]+2*gap]);   
    // Space for plastic pin mount
    translate([0,f,0]) cube([2*gap+columns*sep[0], 2*gap+sep[1], 2*gap+sep[2]]); 
    // Space for wiring
    translate([0,f+2*gap+sep[1]+m,0]) cube([2*gap+columns*sep[0], solder    +wire, 2*gap+sep[2]]); 
    if (bigHole>0)
    {
        translate([gap+columns*pitch/2,f+sep[1]+m+wire+solder+2*gap,h/4]) rotate([-90, 0, 0])      
        translate([0,0,b/3]) union()
        {
            cylinder(r=bigHole, h=width/2, $fn = render);
            translate([-2*bigHole/3,-2*bigHole/3,-b/2])cube([4*bigHole/3, 4*bigHole/3, b/2]);
        };
    }
    if (ribbonHole>0)
    {
        union()
        {
            for (i = [0:columns-1]) 
            {
                translate([pitch/2+pitch*i/2+columns*pitch/4-gap, f+sep[1]+m+wire+solder+2*gap+b, sep[2]/2+gap])
                    rotate(90,[1,0,0]) 
                    cylinder(r=ribbonHole, h=b, $fn=12);
            }
        }
    }
}

module top()
{
    difference()
    {
        union() 
        {   
            // Hinge attach   
            translate([0,width/4-hGap])mirror([1,0,0])rotate([90,0,0])            linear_extrude(width/2-2*hGap)polygon(hsup);
            // Top base
            translate([hr+gap,-width/2,-h]) cube([length-gap,            width, h-gap]);
            // Hinge
            translate([0,hGap-width/4,0]) rotate([-90, 0, 0]) cylinder(h=width/2-2*hGap, r=hr, $fn = render);
            difference()
            {
                translate([length+hr,-width/4,-h]) cube([2*h                 /3, width/2, 2*h]);
                translate([length+hr,-width/4,-gap]) cube([gap, width/2, h+gap]);
                translate([length+hr+gap,-width/4,h/3]) rotate([-90, 0, 0])            cylinder(r=h/6+gap, h=width/2, $fn = render);
            };

        };
        // Front hinge taper
        translate([0,hGap-width/4,0]) rotate([-90, 0, 0])cylinder(h=width/8        , r1=hr, r2=0, $fn = render);
        // Rear hinge taper
        translate([0,width/8-hGap,0]) rotate([-90, 0, 0])cylinder(h=width/8        , r1=0, r2=       hr, $fn = render);
     }
}

module bottom()
{
    union() 
    {   
        //Front hinge attach   
        translate([0,-width/4-hGap])rotate([90,0,0])linear_extrude(          height=width/4-hGap)polygon(hsup);
         //Rear hinge attach
        translate([0,width/2])rotate([90,0,0])linear_extrude(height=          width/4-hGap)polygon(hsup);
        //Bottom base           
        translate([-(hr+gap+length),-width/2,-h]) cube([length, width,          h-gap]);  
        //Front hinge main
        translate([0,-width/2,0]) rotate([-90, 0, 0]) cylinder(width/4          -hGap,r=hr, $fn = render);
        // Rear hinge main
        translate([0,width/4+hGap,0]) rotate([-90, 0, 0]) cylinder(          width/4-hGap, r=hr, $fn = render);
        // Front hinge taper
        translate([0,-width/4-hGap,0]) rotate([-90, 0, 0])cylinder(h=          width/8, r1=hr, r2=0, $fn = render);
        // Rear hinge taper
        translate([0,width/8+hGap,0]) rotate([-90, 0, 0])cylinder(h=          width/8, r1=0, r2=hr, $fn = render);
        // Catch
        translate([-length-hr-gap,-width/4,-h/3]) rotate([-90, 0, 0])          cylinder(r=h/6, h=width/2, $fn = render);
    }
}

difference()
{
    bottom();
    rotate([0, -180, 0])
        translate([hr+gap+s,-width/2,-(gap+sep[2]/2)]) void();
};
//rotate([0, -180, 0])  // Un-comment to see what it looks like closed
difference()
{
    top();
    translate([hr+gap+s,-width/2,-(gap+sep[2]/2)]) void();
}
