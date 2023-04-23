import 'package:flutter/material.dart';
import 'pertanyaan.dart';
import 'jawaban.dart';

class Kuis extends StatelessWidget {
  Kuis(
      {required this.jawaban,
      required this.pertanyaan,
      this.soalIndex,
      super.key});

  Function jawaban;
  List<Map<String, Object>> pertanyaan;
  var soalIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Pertanyaan(pertanyaan[soalIndex]['pertanyaan']),
          ...(pertanyaan[soalIndex]['jawaban'] as List<Map<String, Object>>)
              .map((jawabanText) {
            return Jawaban(
              () => jawaban(jawabanText['skor']),
              jawabanText['teks'].toString(),
            );
          }).toList(),
        ],
      ),
    );
  }
}
