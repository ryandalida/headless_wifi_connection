import 'package:flutter/material.dart';
import 'wifi_form_screen.dart';
import 'package:flutter/services.dart';

class PairingScreen extends StatelessWidget {
  static const platform = MethodChannel('com.example.app/wifi');

  Future<void> startHotspot() async {
    try {
      await platform.invokeMethod('startHotspot', {
        'ssid': 'YourHotspotSSID',
        'password': 'YourHotspotPassword',
      });
    } on PlatformException catch (e) {
      print("Failed to start hotspot: '${e.message}'.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pairing Mode'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Pairing Mode: Open Hotspot',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                await startHotspot();
                // TODO: Display instructions and handle pairing
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WifiFormScreen()),
                );
              },
              child: Text('Start Hotspot'),
            ),
          ],
        ),
      ),
    );
  }
}