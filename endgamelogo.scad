$fn = 30;
difference(){
    cylinder(r =5, h =1);
    cylinder(r = 4.5, h=1);
}
rotate([0,0,90]){
union() {
   difference(){
   difference(){
   difference() {
    ee();
    ff();
}
translate(v=[-5.7,-3.2,0]) cube([2.25,2.5,1]);
}
scale ([1,1.35,1]) 
rotate([0,0,45]){
translate(v=[-2,-1.2,0]) triangle(2.1,2.2,0.01,1);
}
}
}
}

module ee(){

difference(){
 difference(){
   translate(v=[-5,-3,0])triangle(13,10,0.01,1);

   rotate([0,0,-4]) translate(v=[-0.2,-1,0]) triangle(3,1.5,0.01,1); 

  
     
}
translate (v=[6,-3,0]) triangle(2,1.7,0.01,1);
}
}


module triangle(a,b,r1,h1){
hull(){
    cylinder(r=r1,h=h1);
    translate([a,0,0])cylinder(r=r1,h=h1);
    translate([0,b,0])cylinder(r=r1,h=h1);
}
}

module ff(){
 mirror(v= [3, 0, 0] ){
  translate(v=[1,-1,0]) triangle2(5,2,0.01,1);
 } 
mirror(v=[0,3,0]){
    translate(v=[-5,-3,0]) triangle3(1,4,0.01,1);
}
}
module triangle2(a,b,r1,h1){
    hull(){
    cylinder(r=r1,h=h1);
    translate([a,b+3,0]) cylinder(r=r1,h=h1);
    translate([0,b,0]) cylinder(r=r1,h=h1);
    }   
}

module triangle3(a,b,r1,h1){
    hull(){
    cylinder(r=r1,h=h1);
    translate([a+3,b,0]) cylinder(r=r1,h=h1);
    translate([0,b,0]) cylinder(r=r1,h=h1);
    }   
}



rotate([0,0,90]){
scale ([0.97,1.3,1])
rotate([0,0,45]){
translate(v=[-2,-1.15,0]) triangle(2,2,0.01,1);
}



scale (v = [1,1.1,1]){
translate(v=[-1.3,-1,0]) cube([1.3,3,1]);
}
}

       

