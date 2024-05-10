import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hallo Dunia'),
          backgroundColor: Color(0xFF57A7D5),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TeksUtama(teks1: 'AULIYAAHDA WANNURA', teks2: 'NIM: STI202102214'),
            TeksUtama(teks1: 'DWIKI LUKITO', teks2: 'NIM: STI202102216'),
            TeksUtama(
              teks1: 'AFFAN NUR AFTO ',
              teks2: 'NIM: STI202102422',
              backgroundColor: Color.fromARGB(255, 163, 255, 142),
            ),
            TeksUtama(teks1: 'WIDYANTIKA', teks2: 'NIM: STI202102220'),
            TeksUtama(teks1: 'ALIF IRVAN IRAWAN', teks2: 'NIM: STI202102227'),
          ],
        ),
      ),
    );
  }
}

class TeksUtama extends StatelessWidget {
  final String teks1;
  final String teks2;
  final Color? backgroundColor;

  TeksUtama({
    required this.teks1,
    required this.teks2,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            teks1,
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 9, 9, 9),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                bottom: 8.0), // Atur padding di bagian bawah
            child: Text(
              teks2,
              style: TextStyle(
                color: const Color.fromARGB(255, 9, 9, 9),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
