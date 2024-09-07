import 'package:flutter/material.dart';

class Sayfa_Uc extends StatefulWidget {
  const Sayfa_Uc({super.key});

  @override
  State<Sayfa_Uc> createState() => _Sayfa_UcState();
}

class _Sayfa_UcState extends State<Sayfa_Uc> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Sayfa Üç" ,style: TextStyle(fontSize: 30 , color: Colors.black54),),);
  }
}
