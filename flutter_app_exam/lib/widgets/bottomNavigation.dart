import 'package:flutter/material.dart';
import '../acceuil.dart';
import '../employe.dart';
import '../taches.dart';
import '../budget.dart';
import '../notifications.dart';

class AppBottomNav extends StatelessWidget {
  final int currentIndex;

  const AppBottomNav({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,       // important pour >3 items
      selectedItemColor: Colors.deepOrange,      // couleur onglet actif
      unselectedItemColor: Colors.grey,          // couleur onglets inactifs
      onTap: (index) {
        Widget page;
        switch (index) {
          case 0:
            page = const AcceuilPage();
            break;
          case 1:
            page =  EmployeesPage();
            break;
          case 2:
            page = const TachesPage();
            break;
          case 3:
            page = const BudgetPage();
            break;
          case 4:
            page = NotificationsPage();
            break;
          default:
            page = const AcceuilPage();
        }
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => page),
        );
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Accueil"),
        BottomNavigationBarItem(icon: Icon(Icons.group), label: "Employés"),
        BottomNavigationBarItem(icon: Icon(Icons.check_circle), label: "Tâches"),
        BottomNavigationBarItem(icon: Icon(Icons.monetization_on), label: "Budget"),
        BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Notifications"),
      ],
    );
  }
}