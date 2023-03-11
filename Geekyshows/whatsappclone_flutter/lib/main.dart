import 'package:flutter/material.dart';
import 'package:whatsappclone_flutter/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      theme: ThemeData(
        primaryColor: const Color(0xff075e54),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: const Color(0xff25d366),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'WhatsApp'),
    );
  }
}
