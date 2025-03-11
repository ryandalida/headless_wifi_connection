import 'package:flutter/material.dart';
import 'package:headless_wifi_connection/services/wifi_service.dart';

class WifiFormScreen extends StatefulWidget {
  @override
  _WifiFormScreenState createState() => _WifiFormScreenState();
}

class _WifiFormScreenState extends State<WifiFormScreen> {
  final _formKey = GlobalKey<FormState>();
  String _wifiName = '';
  String _wifiPassword = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Connect to WiFi'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'WiFi Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter WiFi name';
                  }
                  return null;
                },
                onSaved: (value) {
                  _wifiName = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'WiFi Password'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter WiFi password';
                  }
                  return null;
                },
                onSaved: (value) {
                  _wifiPassword = value!;
                },
                obscureText: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState?.validate() ?? false) {
                    _formKey.currentState?.save();
                    bool isConnected = await WifiService.connectToWifi(_wifiName, _wifiPassword);
                    if (isConnected) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Connected to WiFi!')),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Failed to connect to WiFi.')),
                      );
                    }
                  }
                },
                child: Text('Connect'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}