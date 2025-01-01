import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const GenderCard({
    Key? key,
    required this.label,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 185,
        decoration: BoxDecoration(
          color: isSelected ? Colors.pink : Colors.grey[800],
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Icon(
              label == "Male" ? Icons.male_rounded : Icons.female_rounded,
              color: Colors.white,
              size: 90,
            ),
            const SizedBox(height: 10),
            Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
