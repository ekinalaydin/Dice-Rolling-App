import 'package:flutter/material.dart';
import 'package:second_app/dice_roller.dart';

const gradientBegin = Alignment.topLeft;
const gradientEnd = Alignment.topRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1, color2;

  // const GradientContainer.orange({super.key}) you can add multiple constructor function a class

  //     : color1 = Colors.indigo,
  //       color2 = Colors.blue;

  // final Color color1;
  // final Color color2;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2], begin: gradientBegin, end: gradientEnd),
      ),
      child: const Center(child: DiceRoller()),
    );
  }
}
