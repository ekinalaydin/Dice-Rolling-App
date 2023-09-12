import 'package:flutter/material.dart';
import 'package:second_app/gradient_container.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
        body: GradientContainer(Color.fromARGB(255, 227, 108, 148),
            Color.fromARGB(255, 243, 163, 44))),
  ));
}
