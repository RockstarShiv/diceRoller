import 'package:flutter/material.dart';
import 'package:first_app_duplicate/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer([Colors.blue,Colors.black]),
      ),
    ),
  );
}
