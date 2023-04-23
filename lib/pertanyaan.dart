import 'package:flutter/material.dart';

class Pertanyaan extends StatelessWidget {
  Pertanyaan(this.pertanyaan, {super.key});

  var pertanyaan;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        pertanyaan,
        style: const TextStyle(
          fontSize: 20,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
