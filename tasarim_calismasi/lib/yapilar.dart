import 'package:flutter/material.dart';
import 'package:tasarim_calismasi/kisiler.dart';
import 'package:tasarim_calismasi/oyunEkrani.dart';

class Anasayfa1 extends StatefulWidget {
  const Anasayfa1({super.key});

  @override
  State<Anasayfa1> createState() => _Anasayfa1State();
}

class _Anasayfa1State extends State<Anasayfa1> {
  int sayac = 0;
  @override
  Widget build(BuildContext context) {
    print("Build() çalıştı");
    return  Scaffold(
      appBar: AppBar(title: Text("Anasayfa"),),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
              Text("$sayac"),
            ElevatedButton(onPressed: (){
              setState(() {
                sayac = sayac +1 ;
              });
            }, child: const Text("Tıkla")),
            ElevatedButton(onPressed: (){
              var Kisi = Kisiler(ad: "Akof", yas: 123, boy: 1.90, bekar: false);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>  OyunEkrani(kisi: Kisi)));
            }
                , child: const Text("Başla")),


          ],
        ),
      ),
    );
  }
}
