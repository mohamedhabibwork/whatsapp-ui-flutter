import 'package:flutter/material.dart';
import 'package:testapp/colors.dart';
import 'package:testapp/responsive/responsive_layout.dart';
import 'package:testapp/screens/mobile_screen_layout.dart';
import 'package:testapp/screens/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Whatsapp UI',
      theme: ThemeData.dark().copyWith(
        backgroundColor: backgroundColor,
        primaryColor: Colors.green,
      ),
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}
