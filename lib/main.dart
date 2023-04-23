import 'package:flutter/material.dart';
import 'kuis.dart';
import 'hasil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _soalIndex = 0;
  var totalScore = 0;

  var pertanyaan = [
    {
      'pertanyaan': 'Tempat apa yang akan anda kunjungi ?',
      'jawaban': [
        {'teks': 'Pegunungan', 'skor': 30},
        {'teks': 'Pantai', 'skor': 20},
        {'teks': 'Mall', 'skor': 10},
        {'teks': 'Hutan', 'skor': 40},
      ]
    },
    {
      'pertanyaan': 'Apa warna favorit Anda ?',
      'jawaban': [
        {'teks': 'Merah', 'skor': 10},
        {'teks': 'Kuning', 'skor': 20},
        {'teks': 'Hijau', 'skor': 30},
        {'teks': 'Biru', 'skor': 40},
      ]
    },
    {
      'pertanyaan': 'Apa Hobi Anda ?',
      'jawaban': [
        {'teks': 'Makan', 'skor': 10},
        {'teks': 'Ngoding', 'skor': 20},
        {'teks': 'Tidur', 'skor': 13},
        {'teks': 'Olahraga', 'skor': 40},
      ]
    }
  ];

  void _resetQuiz() {
    setState(() {
      _soalIndex = 0;
      totalScore = 0;
    });
  }

  void _jawaban(int skor) {
    totalScore += skor;
    setState(() {
      _soalIndex += 1;
    });

    if (_soalIndex < pertanyaan.length) {
      print("Masih ada soal");
    } else {
      print("Stop");
    }
    print(_soalIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Basic Quiz"),
        ),
        body: _soalIndex < pertanyaan.length
            ? Kuis(
                jawaban: _jawaban,
                pertanyaan: pertanyaan,
                soalIndex: _soalIndex,
              )
            : Hasil(totalScore, _resetQuiz),
      ),
    );
  }
}
