import 'package:wifi_iot/wifi_iot.dart' as iot;
import 'package:headless_wifi_connection/models/wifi_network.dart';

class WifiService {
  // Method to scan available WiFi networks
  static Future<List<WifiNetwork>> scanForWifiNetworks() async {
    try {
      List<iot.WifiNetwork> networks = await iot.WiFiForIoTPlugin.loadWifiList();
      return networks.map((network) => WifiNetwork(
        ssid: network.ssid ?? '',
        bssid: network.bssid ?? '',
        signalStrength: network.level ?? 0,
      )).toList();
    } catch (e) {
      print('Error scanning for WiFi networks: $e');
      return [];
    }
  }

  // Method to connect to a WiFi network
  static Future<bool> connectToWifi(String ssid, String password) async {
    try {
      bool isConnected = await iot.WiFiForIoTPlugin.connect(ssid, password: password, joinOnce: true);
      return isConnected;
    } catch (e) {
      print('Error connecting to WiFi: $e');
      return false;
    }
  }
}
