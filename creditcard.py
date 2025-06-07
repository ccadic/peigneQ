# Script Python pour générer un fichier OpenSCAD d'une carte de crédit de 1.6 mm d'épaisseur

# Dimensions de la carte de crédit (format ID-1)
LARGEUR = 85.60  # en mm
HAUTEUR = 53.98  # en mm
EPAISSEUR = 1.60  # personnalisée, en mm
RAYON_COIN = 3.18  # standard pour les coins arrondis

def generate_scad(filename="credit_card.scad"):
    with open(filename, "w") as f:
        f.write(f"""
// Carte de crédit personnalisée - 1.6 mm d'épaisseur
// Dimensions standard ISO 7810 ID-1

module rounded_card(width, height, radius, thickness) {{
    linear_extrude(height = thickness)
        offset(r = radius)
            square([width - 2*radius, height - 2*radius], center = true);
}}

// Génération de la carte
translate([{LARGEUR/2}, {HAUTEUR/2}, 0])
    rounded_card({LARGEUR}, {HAUTEUR}, {RAYON_COIN}, {EPAISSEUR});
""")
    print(f"✅ Fichier '{filename}' généré avec succès.")

if __name__ == "__main__":
    generate_scad()
