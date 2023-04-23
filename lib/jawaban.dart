import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Jawaban extends StatelessWidget {
  Jawaban(this.handlePilihan, this.jawabanText, {super.key});

  Function handlePilihan;

  String jawabanText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          handlePilihan();
        },
        child: Text(jawabanText),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
        ),
      ),
    );
  }
}
