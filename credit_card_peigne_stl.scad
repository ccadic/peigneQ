// Carte de crédit 3D avec peigne intégré - Export STL

linear_extrude(height = 1.75) {
    difference() {
        // Forme générale de la carte
        offset(r = 3.18)
            square([79.24, 47.62], center = true);

        // Dents évidées
        union() {
            translate([-49.70, 0]) square([1.0, 26.99]);
            translate([-47.70, 0]) square([1.0, 26.99]);
            translate([-45.70, 0]) square([1.0, 26.99]);
            translate([-43.70, 0]) square([1.0, 26.99]);
            translate([-41.70, 0]) square([1.0, 26.99]);
            translate([-39.70, 0]) square([1.0, 26.99]);
            translate([-37.70, 0]) square([1.0, 26.99]);
            translate([-35.70, 0]) square([1.0, 26.99]);
            translate([-33.70, 0]) square([1.0, 26.99]);
            translate([-31.70, 0]) square([1.0, 26.99]);
            translate([-29.70, 0]) square([1.0, 26.99]);
            translate([-27.70, 0]) square([1.0, 26.99]);
            translate([-25.70, 0]) square([1.0, 26.99]);
            translate([-23.70, 0]) square([1.0, 26.99]);
            translate([-21.70, 0]) square([1.0, 26.99]);
            translate([-19.70, 0]) square([1.0, 26.99]);
            translate([-17.70, 0]) square([1.0, 26.99]);
            translate([-15.70, 0]) square([1.0, 26.99]);
            translate([-13.70, 0]) square([1.0, 26.99]);
            translate([-11.70, 0]) square([1.0, 26.99]);
            translate([-9.70, 0]) square([1.0, 26.99]);
            translate([-7.70, 0]) square([1.0, 26.99]);
            translate([-5.70, 0]) square([1.0, 26.99]);
            translate([-3.70, 0]) square([1.0, 26.99]);
            translate([-1.70, 0]) square([1.0, 26.99]);
            translate([0.30, 0]) square([1.0, 26.99]);
            translate([2.30, 0]) square([1.0, 26.99]);
            translate([4.30, 0]) square([1.0, 26.99]);
            translate([6.30, 0]) square([1.0, 26.99]);
            translate([8.30, 0]) square([1.0, 26.99]);
            translate([10.30, 0]) square([1.0, 26.99]);
            translate([12.30, 0]) square([1.0, 26.99]);
            translate([14.30, 0]) square([1.0, 26.99]);
            translate([16.30, 0]) square([1.0, 26.99]);
            translate([18.30, 0]) square([1.0, 26.99]);
            translate([20.30, 0]) square([1.0, 26.99]);
            translate([22.30, 0]) square([1.0, 26.99]);
            translate([24.30, 0]) square([1.0, 26.99]);
            translate([26.30, 0]) square([1.0, 26.99]);
            translate([28.30, 0]) square([1.0, 26.99]);
            translate([30.30, 0]) square([1.0, 26.99]);
            translate([32.30, 0]) square([1.0, 26.99]);
            translate([34.30, 0]) square([1.0, 26.99]);
            translate([36.30, 0]) square([1.0, 26.99]);
            translate([38.30, 0]) square([1.0, 26.99]);
            translate([40.30, 0]) square([1.0, 26.99]);
            translate([42.30, 0]) square([1.0, 26.99]);
            translate([44.30, 0]) square([1.0, 26.99]);
            translate([46.30, 0]) square([1.0, 26.99]);
            translate([48.30, 0]) square([1.0, 26.99]);
            translate([50.30, 0]) square([1.0, 26.99]);
            translate([52.30, 0]) square([1.0, 26.99]);
            translate([54.30, 0]) square([1.0, 26.99]);
            translate([56.30, 0]) square([1.0, 26.99]);
            translate([58.30, 0]) square([1.0, 26.99]);
            translate([60.30, 0]) square([1.0, 26.99]);
            translate([62.30, 0]) square([1.0, 26.99]);
            translate([64.30, 0]) square([1.0, 26.99]);
            translate([66.30, 0]) square([1.0, 26.99]);
            translate([68.30, 0]) square([1.0, 26.99]);
            translate([70.30, 0]) square([1.0, 26.99]);
            translate([72.30, 0]) square([1.0, 26.99]);
            translate([74.30, 0]) square([1.0, 26.99]);
            translate([76.30, 0]) square([1.0, 26.99]);
            translate([78.30, 0]) square([1.0, 26.99]);
            translate([80.30, 0]) square([1.0, 26.99]);
            translate([82.30, 0]) square([1.0, 26.99]);
            translate([84.30, 0]) square([1.0, 26.99]);
            translate([86.30, 0]) square([1.0, 26.99]);
            translate([88.30, 0]) square([1.0, 26.99]);
            translate([90.30, 0]) square([1.0, 26.99]);
            translate([92.30, 0]) square([1.0, 26.99]);
            translate([94.30, 0]) square([1.0, 26.99]);
            translate([96.30, 0]) square([1.0, 26.99]);
            translate([98.30, 0]) square([1.0, 26.99]);
            translate([100.30, 0]) square([1.0, 26.99]);
            translate([102.30, 0]) square([1.0, 26.99]);
            translate([104.30, 0]) square([1.0, 26.99]);
            translate([106.30, 0]) square([1.0, 26.99]);
            translate([108.30, 0]) square([1.0, 26.99]);
            translate([110.30, 0]) square([1.0, 26.99]);
            translate([112.30, 0]) square([1.0, 26.99]);
            translate([114.30, 0]) square([1.0, 26.99]);
        }
    }
}
