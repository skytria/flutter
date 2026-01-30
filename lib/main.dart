import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/utama1.dart';
void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (contex)=>const MyApp()
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LOGIN PAGE',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Utama1(),
    );
  }
}