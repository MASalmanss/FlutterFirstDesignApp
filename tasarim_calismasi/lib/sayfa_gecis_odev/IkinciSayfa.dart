import 'package:flutter/material.dart';

class IkinciSayfa extends StatefulWidget {
  const IkinciSayfa({super.key});

  @override
  State<IkinciSayfa> createState() => _IkinciSayfaState();
}

class _IkinciSayfaState extends State<IkinciSayfa> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("İkinci Sayfa"),
      ),
    );
  }
}
