import 'package:flutter/material.dart';
import '../widgets/bottomNavigation.dart';
class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.access_time, color: Colors.black),
            SizedBox(width: 8),
            Text(
              "Notifications",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const AppBottomNav(currentIndex: 4),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const SizedBox(height: 20), // espace avant la liste de notifications
            Column(
              children: [
                _notif("Nouvelle tâche « créer logos » assignée à Hanane."),
                _notif("Dépenses marketing proche du plafond."),
                _notif("Tâche « créer maquette » terminée."),
              ],
            ),
            const SizedBox(height: 24), // espace avant le bouton
            Center(
              child: SizedBox(
                width: 200,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Retour",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _notif(String msg) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          const Icon(Icons.notifications, color: Colors.orange),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              msg,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
