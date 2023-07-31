import 'package:flutter/material.dart';

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
  final List<Color> _colors = [
    Colors.deepPurple,
    Colors.deepOrange,
    Colors.amber,
    Colors.teal,
    Colors.blueGrey,
    Colors.indigo,
    Colors.pink,
  ];

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
        itemCount: _colors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                color: _colors[index],
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
          );
        },
      ),
    );
  }
}
