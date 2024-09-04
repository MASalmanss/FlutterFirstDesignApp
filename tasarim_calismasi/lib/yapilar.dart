import 'package:flutter/material.dart';

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
            }, child: const Text("Tıkla"))
          ],
        ),
      ),
    );
  }
}
