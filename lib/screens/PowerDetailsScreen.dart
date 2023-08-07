import 'package:flutter/material.dart';

class PowerDetailsScreen extends StatefulWidget {
  //final String colorName;

  // PowerDetailsScreen({required this.colorName});

  @override
  _PowerDetailsScreenState createState() => _PowerDetailsScreenState();
}

class _PowerDetailsScreenState extends State<PowerDetailsScreen> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();

  String result = 'Sonuç: ';

  @override
  void initState() {
    super.initState();
    controller1.addListener(_updateResult);
    controller2.addListener(_updateResult);
    controller3.addListener(_updateResult);
    controller4.addListener(_updateResult);
  }

  void _updateResult() {
    double powerResult = calculatePower();
    setState(() {
      result = 'Sonuç: $powerResult';
    });
  }

  double calculatePower() {
    double value1 = double.tryParse(controller1.text) ?? 0.0;
    double value2 = double.tryParse(controller2.text) ?? 0.0;
    double value3 = double.tryParse(controller3.text) ?? 0.0;
    double value4 = double.tryParse(controller4.text) ?? 0.0;

    // Burada güç hesaplama işlemlerini gerçekleştirin, örneğin:
    double result = value1 + value2 + value3 + value4;

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Güç Hesaplama',
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              result,
              style: TextStyle(fontSize: 24, color: Colors.black),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildSquare(controller1),
                SizedBox(width: 10),
                _buildSquare(controller2),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildSquare(controller3),
                SizedBox(width: 10),
                _buildSquare(controller4),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Add your code here to handle the tap/click action
                      // For example, you can show a dialog or navigate to a new screen.
                      print('calculate container tapped!');
                    },
                    child: Container(
                      width: 210,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white38,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      alignment: Alignment.center,
                      child: Text('HESAPLA'),
                    ),
                  ),
                ],
              ),
            )

            //),
          ],
        ),
      ),
    );
  }

  Widget _buildSquare(TextEditingController controller) {
    return GestureDetector(
      onTap: () {
        _showInputDialog(controller);
      },
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white38,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(5),
        ),
        alignment: Alignment.center,
        child: Text(
          controller.text,
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }

  void _showInputDialog(TextEditingController controller) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Veri Girin"),
          content: TextField(
            controller: controller,
            keyboardType: TextInputType.text,
          ),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Tamam"),
            ),
          ],
        );
      },
    );
  }
}