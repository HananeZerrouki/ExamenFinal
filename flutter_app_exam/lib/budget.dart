import 'package:flutter/material.dart';
import '../widgets/bottomNavigation.dart';
class BudgetPage extends StatelessWidget {
  const BudgetPage({super.key});
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Budget"),
        centerTitle: true,
      ),
      bottomNavigationBar: const AppBottomNav(currentIndex: 3),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // IMAGE EN HAUT
            Image.asset(
              "assets/images/budget.jpg",
              height: 180,
              width: double.infinity,
              fit: BoxFit.contain, // garde les proportions
            ),
            const SizedBox(height: 20),
            // TITRE BUDGET
            const Text(
              "Budget",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            // Lignes du budget
            _budgetLine("Budget", "30000 \$"),
            _budgetLine("Dépenses RH", "3000 \$"),
            _budgetLine("Dépenses IT", "7000 \$"),
            _budgetLine("Dépenses Marketing", "8500 \$"),
            _budgetLine("Bénéfices", "11500 \$"), // visible maintenant
          ],
        ),
      ),
    );
  }
Widget _budgetLine(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6), // réduit l'espace pour tout voir
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(fontSize: 18)),
          Text(value, style: const TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}
