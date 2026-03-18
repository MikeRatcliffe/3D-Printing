width=30;
height=20;
depth=10;
hole=3;

difference() {
    union() {
        translate(v=[width/2, 0, 0])
            cylinder(h=height, d=depth, center=false, $fn=100);

        translate(v=[-width/2, 0, 0])
            cylinder(h=height, d=depth, center=false, $fn=100);

        translate(v=[-width/2, -5, 0])
            cube(size = [width, depth, height/2], center = false, $fn=100);
    }

    cylinder(h=height+2, d=hole, center=true, $fn=100);
}
