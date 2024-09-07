import 'package:flutter/material.dart';
import 'package:tasarim_calismasi/sayfa_gecis_odev/IkinciSayfa.dart';

class Odev extends StatefulWidget{
  const Odev({super.key});

  @override
  State<Odev> createState() => _OdevState();
}

class _OdevState extends State<Odev> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("Ana Sayfa"), backgroundColor: Colors.amber,),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Text("Ana Sayfa" , style: TextStyle(fontSize: 30),),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> IkinciSayfa())
                );
              }, style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
              ), child:
                Text("Diğer Sayfaya Git" , style: TextStyle(color: Colors.black),)
              )
            ],
          )
      ),
    );
  }
}
