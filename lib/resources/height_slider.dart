import 'package:flutter/material.dart';

class HeightSlider extends StatelessWidget {
  final double height;
  final ValueChanged<double> onChanged;

  const HeightSlider({Key? key, required this.height, required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "HEIGHT",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${height.toInt()}",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Baseline(
                baseline: 40,
                baselineType: TextBaseline.alphabetic,
                child: Text(
                  " cm",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          Slider(
            value: height,
            min: 100,
            max: 250,
            onChanged: onChanged,
            activeColor: Colors.pink,
            inactiveColor: Colors.grey,
          ),
        ],
      ),
    );
  }
}
