import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1;
  var activeDiceImage = 'assets/images/dice-1.png';

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
            // padding: const EdgeInsets.only(top: 20),
            backgroundColor: const Color.fromARGB(255, 234, 106, 67),
            foregroundColor: const Color.fromARGB(255, 240, 181, 4),
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text('Roll Dice'),
        ),
        Text(
          'Dice Value: $currentDiceRoll',
          style: const TextStyle(
            fontSize: 20,
            color: Color.fromARGB(255, 101, 33, 120),
          ),
        )
      ],
    );
  }
}
