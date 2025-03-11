# Headless WiFi Connection

Headless WiFi Connection is a Flutter app that scans available WiFi networks and automatically connects to a predefined one without user intervention. It also allows a device to connect via hotspot and submit WiFi credentials to the app, which then connects to the specified network.

## Features

- Scan available WiFi networks
- Automatically connect to a predefined WiFi network
- Operate in background mode
- Pairing mode using hotspot to receive WiFi credentials

## Requirements

- Flutter (latest stable version)
- Android device or emulator
- Internet connection

## Setup

1. **Clone the repository**

   ```bash
   git clone https://github.com/ryandalida/HeadlessWiFiConnection.git
   cd HeadlessWiFiConnection
   ```

2. **Install Flutter dependencies**

   Make sure you have Flutter installed. Follow the [official Flutter installation guide](https://flutter.dev/docs/get-started/install) if you don't have it installed.

   ```bash
   flutter pub get
   ```

3. **Build the Flutter app**

   ```bash
   flutter build apk
   ```

## Running the App

1. **Connect an Android device or start an emulator**

2. **Run the app**

   ```bash
   flutter run
   ```

## Usage

1. **Start Pairing Mode**
   - Open the app and press the "Start Hotspot" button to enter pairing mode.
   - The app will start a hotspot with a predefined SSID and password.

2. **Connect Tester Device**
   - Connect the tester device (phone or computer) to the hotspot using the specified password.
   - Open a web browser on the tester device and navigate to the provided URL or IP address to access the form.

3. **Submit WiFi Credentials**
   - Enter the WiFi credentials (SSID and password) in the form and submit.
   - The app will attempt to connect to the specified WiFi network and display the connection status.

- **End Notes**
  - This is app is made for illustration purposes only.
  - Security measures can still be added (i.e. Login page for users, encryption etc.)
