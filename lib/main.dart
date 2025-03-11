import 'package:flutter/material.dart';
import 'package:headless_wifi_connection/screens/pairing_screen.dart';

void main() {
  runApp(HeadlessWiFiConnectionApp());
}

class HeadlessWiFiConnectionApp extends StatelessWidget {
  const HeadlessWiFiConnectionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Headless WiFi Connection',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PairingScreen(),
    );
  }
}