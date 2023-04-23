import 'package:flutter/material.dart';

class Hasil extends StatelessWidget {
  Hasil(this.totalSkor, this.resetQuis, {super.key});

  int totalSkor;

  Function resetQuis;

  // getter
  String get hasilText {
    String hasil = 'Anda Berhasil';

    if (totalSkor <= 30) {
      hasil = 'Anda Hebat';
    } else if (totalSkor <= 50) {
      hasil = 'Anda Arogan';
    } else {
      hasil = 'Anda Aneh Sekali';
    }

    return hasil;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            hasilText,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
            onPressed: () {
              resetQuis();
            },
            child: const Text(
              "Reset Quiz",
            ),
            style: TextButton.styleFrom(primary: Colors.amber),
          )
        ],
      ),
    );
  }
}
