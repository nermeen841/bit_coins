
import 'package:bit_coins/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_core/core.dart';

void main() {
  // Register your license here
  SyncfusionLicense.registerLicense('ADD YOUR LICENSE KEY HERE');
  return runApp(ChartApp());
}

class ChartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chart Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home:  HomePage(),
    );
  }
}

