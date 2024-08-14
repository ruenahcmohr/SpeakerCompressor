
 outline = "main.dxf";
 L0 = 2;
 
 L1 = 12;
 L2 = 8;

 L3 = 2;
 L4 = 7;
 L5 = 3.5;
 
 L10 = 2;
 L11 = 3;
 
 L20 = 12;
 L30 = 7;
 L31 = 50;
 L40 = 15;
 L50 = 3;
 L51 = 30;

L100 = 2;
L101 = 0.5;

// body();
// cap();


    linear_extrude(height=L100, convexity=5) {
       import(file=outline, layer="100", $fn=280);
     } 
     
     translate([0,0,L100])
    linear_extrude(height=L101, convexity=5) {
       import(file=outline, layer="101", $fn=280);
     }


module body() {
    
difference() {
union() {
    linear_extrude(height=L0, convexity=5) {
       import(file=outline, layer="0", $fn=280);
     } 
     
     translate([0,0,L0])
     linear_extrude(height=L1, convexity=5) {
       import(file=outline, layer="1", $fn=280);
     } 
 }
 // inlet pipe hole
     color([1,0,0])
     translate([0,35,L0+L1/2])
     rotate([90,0,0])
     cylinder(h = 20, d=6.0, $fn=100, center=true);
   
// gasket seat
     color([1,0,0])
     translate([0,40.25-0.5,L0+L1/2])
     rotate([90,0,0])
     cylinder(h = 1, d=9, $fn=100, center=true);
 
 //screw holes
     color([0,1,0])
     translate([-9, 49.7-6,L0+L1/2])
     rotate([90,0,0])
     cylinder(h = 20, d=3, $fn=100, center=true);
 
     color([0,1,0])
     translate([9,49.7-6,L0+L1/2])
     rotate([90,0,0])
     cylinder(h = 20, d=3, $fn=100, center=true); 
 
 
 
 // outlet pipe hole
       color([1,0,0])
     translate([0,-40,L0+L1/2])
     rotate([90,0,0])
     cylinder(h = 20, d=6.0, $fn=100, center=true);
     
 
 // gasket seat
     color([1,0,0])
     translate([0,-40.25+0.5,L0+L1/2])
     rotate([90,0,0])
     cylinder(h = 1, d=9, $fn=100, center=true);    
     
      //screw holes
     color([0,1,0])
     translate([-9, -49.7+6,L0+L1/2])
     rotate([90,0,0])
     cylinder(h = 20, d=3, $fn=100, center=true);
 
     color([0,1,0])
     translate([9,-49.7+6,L0+L1/2])
     rotate([90,0,0])
     cylinder(h = 20, d=3, $fn=100, center=true); 
 
     
 }
 }
 
 module cap() {
     
     color([0,0,1])
     translate([0,0,L0+L1])
     linear_extrude(height=L10, convexity=5) {
       import(file=outline, layer="10", $fn=280);
     } 
    
     color([0,0,1])
     translate([0,0,L0+L1+L0])
     linear_extrude(height=L11, convexity=5) {
       import(file=outline, layer="11", $fn=280);
     } 

 }
  
/*
     translate([0,0,-L4])
     linear_extrude(height=L4, convexity=5) {
       import(file=outline, layer="4", $fn=90);
     }  

     translate([0,0,-L5])
     linear_extrude(height=L5, convexity=5) {
       import(file=outline, layer="5", $fn=188);
     }  
}
*/
/*
     //2x dovetail
     translate([-40.64,0,L10/2])
     rotate([-90,90,-90])    
     linear_extrude(height=L20, convexity=5) {
       import(file=outline, layer="20", $fn=188);
     }
 } // end of the union
 
     
     // 3x bolt
     color([1,0,0])
  translate([0,-0.005,50])
  rotate([-90,0,0]) {
     linear_extrude(height=L30, convexity=5) {
       import(file=outline, layer="30", $fn=188);
     }
     
     translate([0,0,L30-0.006])
     linear_extrude(height=L31, convexity=5) {
       import(file=outline, layer="31", $fn=188);
     }
 }
 
  // 4x side bolt
 color([0, 1, 0])
      translate([0,0,57.005])
      linear_extrude(height=L40, convexity=5) {
       import(file=outline, layer="40", $fn=188);
     }
 
     




  translate([0,0,L0+L1])
     linear_extrude(height=L2, convexity=5) {
       import(file=outline, layer="2", $fn=188);
     }




     translate([10, -0, 25/2])
     rotate([0,90,0])
     cylinder(h = 40, r =2.0, $fn=100, center=true);

}
*/
