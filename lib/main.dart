import 'package:flutter/material.dart';
import 'package:solid_calculator/screens/debi.dart';
//import 'package:solid_calculator/screens/PowerDetailsScreen.dart';

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
          return GestureDetector(
            onTap: () {
              _openColorDetails(context, _colorNames[index]);
            },
            child: Padding(
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
            ),
          );
        },
      ),
    );
  }
}

void _openColorDetails(BuildContext context, String colorName) {
  switch (colorName) {
    case 'Güç':
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PowerDetailsScreen(),
        ),
      );
      break;
    case 'Hidrolik Verim':
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HydraulicEfficiencyDetailsScreen(),
        ),
      );
      break;
    case 'Debi':
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PowerDetailsScreen(),
        ),
      );
      break;
    case 'Basma Yüksekliği':
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PowerDetailsScreen(),
        ),
      );
      break;
    case 'Motor Verimi':
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PowerDetailsScreen(),
        ),
      );
      break;
    case 'Kablo Maliyet':
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PowerDetailsScreen(),
        ),
      );
      break;
    case 'Sürtünme Kaybı':
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PowerDetailsScreen(),
        ),
      );
      break;
    default:
    // For other colors, you can handle navigation or show an error page.
      break;
  }
}

/*class PowerDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Power',
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'This is the details screen for Power',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}*/
