# Script Python pour générer un fichier OpenSCAD STL d'une carte de crédit avec peigne intégré

LARGEUR = 85.60      # mm
HAUTEUR = 53.98      # mm
EPAISSEUR = 1.75     # mm
RAYON_COIN = 3.18    # mm

LARGEUR_DENT = 1.0   # mm
ESPACEMENT = 1.0     # mm
HAUTEUR_DENTS = HAUTEUR / 2  # ≈ 26.99 mm

def generate_stl_scad(filename="credit_card_peigne_stl.scad"):
    pas = LARGEUR_DENT + ESPACEMENT
    nb_dents = 2 * int((LARGEUR + ESPACEMENT)  // pas) - 3
    total_largeur_dents = nb_dents * pas - ESPACEMENT
    decalage_x = (LARGEUR - total_largeur_dents) / 2 - 10

    with open(filename, "w") as f:
        f.write(f"""// Carte de crédit 3D avec peigne intégré - Export STL

linear_extrude(height = {EPAISSEUR}) {{
    difference() {{
        // Forme générale de la carte
        offset(r = {RAYON_COIN})
            square([{LARGEUR - 2 * RAYON_COIN}, {HAUTEUR - 2 * RAYON_COIN}], center = true);

        // Dents évidées
        union() {{
""")
        for i in range(nb_dents):
            x = decalage_x + i * pas
            f.write(f"            translate([{x:.2f}, 0]) square([{LARGEUR_DENT}, {HAUTEUR_DENTS}]);\n")
        
        f.write("""        }
    }
}
""")
    print(f"✅ Fichier SCAD pour STL généré : {filename}")
    print("➡️ Dans OpenSCAD : F6 puis Fichier → Exporter → STL")

if __name__ == "__main__":
    generate_stl_scad()
