import 'package:flutter/material.dart';
import '../widgets/bottomNavigation.dart';
import '../widgets/infocard.dart';
class AcceuilPage extends StatelessWidget {
    const AcceuilPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Accueil")),
      bottomNavigationBar: AppBottomNav(currentIndex: 0),
      body: SingleChildScrollView(
      child:Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [//je donne le titre ici ainsi l'image
            Text(
              "M M GRAPHICS INC",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
// ici on va inserer notre image 
            Container(
              height: 180,
              width: double.infinity,
                           child: Image.asset(
                'assets/images/hanane1.jpeg',  
            ),
            ),
            SizedBox(height: 20),
            Text(
              "Conception et Installation\nde panneaux publicitaires",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoCard(title: "Budget", value: "30000 \$", color: Colors.green),
                InfoCard(title: "Tâches", value: "3", color: Colors.blue),
              ],
            ),
          ],
        ),
      ),
    ),
    );
  }
}


