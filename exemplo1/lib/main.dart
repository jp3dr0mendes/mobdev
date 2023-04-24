import 'package:device_preview/device_preview.dart';
import 'package:exemplo1/pages/home/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (_) => MyApp(),
    enabled: true,
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Curso de Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      home: HomePage(),
    );
  }
}
