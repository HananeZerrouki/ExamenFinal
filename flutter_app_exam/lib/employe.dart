import 'package:flutter/material.dart';
import '../widgets/bottomNavigation.dart';

class EmployeesPage extends StatelessWidget {
  EmployeesPage({super.key});

  final List<Map<String, String>> employees = [
    {"nom": "Z. Hanane", "poste": "Développeur", "contact": "438.354.0921"},
    {"nom": "S. Karim", "poste": "Chef", "contact": "438.330.1023"},
    {"nom": "A. Matine", "poste": "Adjoint", "contact": "438.112.3023"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Employés")),
      bottomNavigationBar: AppBottomNav(currentIndex: 1),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Row avec image et texte côte à côte
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(width: 40), // décale un peu plus l'image vers le centre
                // Image un peu plus grande
                Container(
                  width: 220,  // largeur augmentée
                  height: 200, // hauteur augmentée
                  child: Image.asset(
                    "assets/images/employe.webp",
                    fit: BoxFit.contain, // l'image reste entière
                  ),
                ),
                const SizedBox(width: 16),
                // Texte à côté
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Mon équipe",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Voici les membres de notre équipe avec leur rôle et contact.",
                        style: TextStyle(fontSize: 16, color: Colors.black54),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Tableau des employés
            Table(
              border: TableBorder.all(color: Colors.grey),
              columnWidths: const {
                0: FlexColumnWidth(2),
                1: FlexColumnWidth(2),
                2: FlexColumnWidth(2),
              },
              children: [
                // Ligne des titres
                const TableRow(
                  decoration: BoxDecoration(
                    color: Color(0xFFD6D6D6),
                  ),
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Nom",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Poste",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Contact",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                // Lignes des employés
                ...employees.map((e) {
                  return TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(e["nom"]!),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(e["poste"]!),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(e["contact"]!),
                      ),
                    ],
                  );
                }).toList(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
