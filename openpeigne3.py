# Script Python pour générer un fichier OpenSCAD DXF d'une carte de crédit avec peigne intégré

LARGEUR = 85.60      # mm
HAUTEUR = 53.98      # mm
RAYON_COIN = 3.18    # mm

LARGEUR_DENT = 1.0   # mm
ESPACEMENT = 1.0     # mm
HAUTEUR_DENTS = HAUTEUR / 2  # ≈ 26.99 mm

def generate_dxf_scad(filename="credit_card_peigne_dxf.scad"):
    pas = LARGEUR_DENT + ESPACEMENT

    # Étape 1 : calcul initial brut
    nb_dents_raw = int((LARGEUR + ESPACEMENT) // pas)

    # Étape 2 : on double (pour ton style plus dense) puis ajuste à impair si nécessaire
    nb_dents = 2 * nb_dents_raw - 3
    if nb_dents % 2 == 0:
        nb_dents -= 1  # pour symétrie parfaite

    # Étape 3 : calcul de la largeur réelle occupée par les dents
    total_largeur_dents = nb_dents * pas - ESPACEMENT

    # Étape 4 : décalage centré automatiquement
    decalage_x = (LARGEUR - total_largeur_dents) / 2

    with open(filename, "w") as f:
        f.write(f"""// Carte de crédit 2D avec peigne intégré - DXF export

module carte() {{
    offset(r = {RAYON_COIN})
        square([{LARGEUR - 2*RAYON_COIN}, {HAUTEUR - 2*RAYON_COIN}], center = true);
}}

module dents_peigne() {{
""")
        for i in range(nb_dents):
            x = decalage_x + i * pas
            f.write(f"    translate([{x:.2f}, 0]) square([{LARGEUR_DENT}, {HAUTEUR_DENTS}]);\n")
        
        f.write("""}

difference() {
    carte();
    dents_peigne();
}
""")
    print(f"✅ Fichier SCAD avec centrage automatique généré : {filename}")
    print("➡️ Dans OpenSCAD : appuyez sur F6 puis Fichier → Exporter → DXF 2D")

if __name__ == "__main__":
    generate_dxf_scad()
