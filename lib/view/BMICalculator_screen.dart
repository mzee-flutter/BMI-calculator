import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../resources/IncrementDecrementCard.dart';
import '../resources/gender_card.dart';
import '../resources/height_slider.dart';
import '../view_model/BMICalculator_view_model.dart';
import 'BMIResult_screen.dart';

class BMICalculatorScreen extends StatelessWidget {
  const BMICalculatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<BMICalculatorViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BMI Calculator",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black,
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 20.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: GenderCard(
                    label: "Male",
                    isSelected: provider.gender == "Male",
                    onTap: () => provider.setGender("Male"),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: GenderCard(
                    label: "Female",
                    isSelected: provider.gender == "Female",
                    onTap: () => provider.setGender("Female"),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            HeightSlider(
                height: provider.height, onChanged: provider.setHeight),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: IncrementDecrementCard(
                    label: "Weight",
                    value: provider.weight,
                    onIncrement: provider.increaseWeight,
                    onDecrement: provider.decreaseWeight,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: IncrementDecrementCard(
                    label: "Age",
                    value: provider.age,
                    onIncrement: provider.increaseAge,
                    onDecrement: provider.decreaseAge,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Container(
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  provider.calculateBMI();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const BMIResultScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
                child: const Text(
                  "Calculate BMI",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
