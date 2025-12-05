
import 'package:flutter/material.dart';
import 'widgets/bottomNavigation.dart';

class TachesPage extends StatefulWidget {
  const TachesPage({super.key});

  @override
  State<TachesPage> createState() => _TachesPageState();
}

class _TachesPageState extends State<TachesPage> {
  // 🔹 Liste des tâches (en mémoire)
  final List<Map<String, String>> taches = [
    {"nom": "Créer la maquette", "statut": "Fini"},
    {"nom": "Valider le visuel", "statut": "En cours"},
    {"nom": "Installer les panneaux", "statut": "En cours"},
    {"nom":"acheter les machines","statut":"fini"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tâches"),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // 🔹 Image
            Center(
              child: SizedBox(
                width: 180,
                child: Image.asset(
                  "assets/images/canada.jpg",
                  fit: BoxFit.contain,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // 🔹 Tableau dynamique
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Table(
                border: const TableBorder(
                  horizontalInside: BorderSide(color: Colors.grey),
                  verticalInside: BorderSide(color: Colors.black),
                ),
                columnWidths: const {
                  0: FlexColumnWidth(2),
                  1: FlexColumnWidth(1),
                },
                children: [
                  // 🔹 Ligne titre
                  const TableRow(
                    decoration: BoxDecoration(color: Color(0xFFEFEFEF)),
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Text("Tâche", style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Text("Statut", style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                  // 🔹 Génération dynamique des lignes
                  for (var tache in taches)
                    TableRow(
                      children: [
                        Padding(padding: const EdgeInsets.all(12), child: Text(tache["nom"]!)),
                        Padding(padding: const EdgeInsets.all(12), child: Text(tache["statut"]!)),
                      ],
                    ),
                ],
              ),
            ),
          ],
        ),
      ),

      // 🔹 Barre de navigation
      bottomNavigationBar: const AppBottomNav(currentIndex: 2),
    );
  }
}
