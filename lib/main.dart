import 'package:flutter/material.dart';
import 'package:solid_calculator/screens/guc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(), // Use dark theme
      home: ColorfulListViewScreen(),
    );
  }
}

class ColorfulListViewScreen extends StatelessWidget {
  final List<String> _colorNames = [
    'Güç',
    'Hidrolik Verim',
    'Debi',
    'Basma Yüksekliği',
    'Motor Verimi',
    'Kablo Maliyet',
    'Sürtünme Kaybı',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Solid Calculator',
          textAlign: TextAlign.center, // Başlık metnini ortalama
        ),
        centerTitle: true, // Başlığı ortala
      ),
      body: ListView.builder(
        itemCount: _colorNames.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              _openPowerPage(context, _colorNames[index]);
            },
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white38, // Tüm container'lar açık gri olacak
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    _colorNames[index], // Renk isimlerini yazdırıyoruz
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _openPowerPage(BuildContext context, String colorName) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PowerPage(colorName: colorName),
      ),
    );
  }
}
