import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HydraulicEfficiencyDetailsScreen extends StatefulWidget {
  @override
  _HydraulicEfficiencyDetailsScreenState createState() =>
      _HydraulicEfficiencyDetailsScreenState();
}

class _HydraulicEfficiencyDetailsScreenState
    extends State<HydraulicEfficiencyDetailsScreen> {
  // Declare any mutable state variables here, if needed.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hydraulic Efficiency',
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'This is the details screen for Hydraulic Efficiency',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
