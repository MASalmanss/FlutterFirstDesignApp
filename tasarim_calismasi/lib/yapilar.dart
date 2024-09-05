import 'package:flutter/cupertino.dart';
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

  bool kontrol = false;

  Future<int> toplama(int sayi1, int sayi2) async{
    int toplam = sayi1 + sayi2;
    return toplam;
  }


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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>  OyunEkrani(kisi: Kisi)))
                  .then((value) => {

              });
            }
                , child: const Text("Başla")),
            Visibility( visible: kontrol,
                child: const Text("Merhaba")),
            Text( kontrol ? "Merhaba" : "X"),
            Text("Merhaba"),


            ElevatedButton(onPressed: (){
              setState(() {
                kontrol = true;
              });
            }, child: const Text("Durum 1 ")),

            ElevatedButton(onPressed: (){
              setState(() {
               kontrol = false;
              });
            }, child: const Text("Durum 2 ")),
            FutureBuilder<int>(future: toplama(10, 20 ), builder: (context ,snapshot){
              if(snapshot.hasError){
                return const Text("Hata Oluştu");
              }
              if(snapshot.hasData){
                return  Text("Sonuc ${snapshot.data}");
              }
              else{
                return const Text("Sonuc yok");
              }
            })

          ],
        ),
      ),
    );
  }
}
