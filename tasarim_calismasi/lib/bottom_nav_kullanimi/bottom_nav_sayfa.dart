import 'package:flutter/material.dart';
import 'package:tasarim_calismasi/bottom_nav_kullanimi/sayfa_%C3%BC%C3%A7.dart';
import 'package:tasarim_calismasi/bottom_nav_kullanimi/sayfa_bir.dart';
import 'package:tasarim_calismasi/bottom_nav_kullanimi/sayfa_iki.dart';

class BottomNavigationSayfa extends StatefulWidget {
  const BottomNavigationSayfa({super.key});

  @override
  State<BottomNavigationSayfa> createState() => _BottomNavigationSayfaState();
}

class _BottomNavigationSayfaState extends State<BottomNavigationSayfa> {
  int secilen_index = 0;
  var sayfalar = [const SayfaBir() , const SayfaIki() , const Sayfa_Uc()];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("Bottom Navigation"), backgroundColor: Colors.deepPurple,),
      body: sayfalar[secilen_index],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.looks_one_outlined) , label: "Bir" , ),
          BottomNavigationBarItem(icon: Icon(Icons.looks_two_outlined) , label: "İki"),
          BottomNavigationBarItem(icon: Icon(Icons.looks_3_outlined) , label: "Bir"),
        ],
        currentIndex: secilen_index,
        backgroundColor: Colors.deepPurple,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.white,
        onTap: (index){
          setState(() {
            secilen_index = index;
          });
        },
      ),
    );
  }
}
