import 'package:flutter/material.dart';
import 'package:tasarim_calismasi/anasayfa.dart';
import 'package:tasarim_calismasi/bottom_nav_kullanimi/bottom_nav_sayfa.dart';
import 'package:tasarim_calismasi/kullanici_etkilesimi/kullanici_etkilesimi_sayfa.dart';
import 'package:tasarim_calismasi/sayfa_gecis_odev/main.dart';
import 'package:tasarim_calismasi/yapilar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: true,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Odev(),
    );
  }
}

