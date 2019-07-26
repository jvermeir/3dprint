$fn = 100;

translate([-25, -78, 5]) {
    mirror([1,0,0]) {
        support_bar(75, 20, 15);
    }
}

translate([25, -78, 5]) {
    support_bar(75, 20, 15);
}

translate([-95, -85, 0]) {
    cube_with_rounded_edges(190, 170, 5);    
}

module support_bar(x, y, z) {
    rotate([0, 0, 31]) {
        tilted_bar(x, y, z);
    }    
}

module tilted_bar(x, y, z) {
    rotate([-5,0,0]) {
        difference() {
            cube_with_rounded_edges(x, y, z);
            translate([-z,y,0]) {
                cube([x+2*z,y,z]);
            }
        }
    }
}

module cube_with_rounded_edges(x, y, z) {
 
    cube([x, y, z]);
    
    translate([x, y, z/2]) {
        sphere(z/2);
    }
    
    translate([x, 0, z/2]) {
        sphere(z/2);
    }

    translate([0, y, z/2]) {
        sphere(z/2);
    }

    translate([0, 0, z/2]) {
        sphere(z/2);
    }

    translate([0, 0, z/2]) {
        rotate([0, 90, 0]) {
            cylinder(x, z/2, z/2);
        }
    }
    
    translate([0, y, z/2]) {
        rotate([0, 90, 0]) {
            cylinder(x, z/2, z/2);
        }
    }

    translate([0, 0, z/2]) {
        rotate([-90, 0, 0]) {
            cylinder(y, z/2, z/2);
        }
    }
    
    translate([x, 0, z/2]) {
        rotate([-90, 0, 0]) {
            cylinder(y, z/2, z/2);
        }
    }
       
} 
