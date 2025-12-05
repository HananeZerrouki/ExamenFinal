import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final String value;
  final Color color;

  const InfoCard({
    Key? key,
    required this.title,
    required this.value,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color.withOpacity(0.2),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(value, style: const TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
