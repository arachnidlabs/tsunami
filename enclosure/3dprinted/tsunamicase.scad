// Rev 1.1
// 

// Choose which half you want to render
top = true;

$fn = 50;

// Bounding box for PCB without the BNC-barrels
*cube([50,80,15]);

difference()
{
    // Bounding box extended by 3mm
    translate([-3,-3,-2])
    cube([56,86,20]);
    
    // Bounding Box extended by 1mm (results in 2mm wall)
    translate([-1,-1,-1])
    cube([52,82,17]);
    
    // BNC In
    translate([11,6,8.6])
    rotate([90,0,0])
    cylinder(h=20,d=14);
    
    // BNC Out
    translate([39,6,8.6])
    rotate([90,0,0])
    cylinder(h=20,d=14);
    
    // BNC Aux
    translate([39,74,8.6])
    rotate([90,0,180])
    cylinder(h=20,d=14);
    
    // USB Jack
    translate([6.5,75,1])
    cube([11,12,6.6]);
    
    // Reset button
    translate([21,75,3])
    cube([8,10,8]);
    
    // Bottom Screws
    screwdia=3.4;    // M3 screw
    
    translate([5,19,-5])
    cylinder(d=screwdia,h=10);
    
    translate([5,61,-5])
    cylinder(d=screwdia,h=10);
    
    translate([45,19,-5])
    cylinder(d=screwdia,h=10);
    
    translate([45,61,-5])
    cylinder(d=screwdia,h=10);
    
    // Top Nuts
    nutdia=6;    // M3 screw
    
    translate([5,19,16])
    cylinder(d=nutdia,h=10);
    
    translate([5,61,16])
    cylinder(d=nutdia,h=10);
    
    translate([45,19,16])
    cylinder(d=nutdia,h=10);
    
    translate([45,61,16])
    cylinder(d=nutdia,h=10);
    
    // Top half
    if(top)
    {
        translate([-5,-5,7.6])
        rotate([180,0,90])
        cube(100);
    }
    
    // Bottom half
    if(top != true)
    {
        translate([-5,-5,7.6])
        cube(100);
    }

}

//// Top Screws
if(top)
{
    difference()
    {
        union()
        {
            translate([5,19,13.5])
            cube(7, center=true);
            
            translate([5,61,13.5])
            cube(7, center=true);
            
            translate([45,19,13.5])
            cube(7, center=true);
            
            translate([45,61,13.5])
            cube(7, center=true);
        }


        screwdia = 3.4;
        translate([5,19,7])
        cylinder(d=screwdia,h=10);

        translate([5,61,7])
        cylinder(d=screwdia,h=10);

        translate([45,19,7])
        cylinder(d=screwdia,h=10);

        translate([45,61,7])
        cylinder(d=screwdia,h=10);
    }

    //Alignment tabs
    translate([-1, 30, 6])
    cube([1,20,3]);
    translate([50, 30, 6])
    cube([1,20,3]);
}