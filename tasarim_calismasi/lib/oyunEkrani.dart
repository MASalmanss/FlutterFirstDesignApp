import 'package:flutter/material.dart';
import 'package:tasarim_calismasi/kisiler.dart';
import 'package:tasarim_calismasi/sonucEkrani.dart';

class OyunEkrani extends StatefulWidget {

  Kisiler kisi;


  OyunEkrani({required this.kisi});

  @override
  State<OyunEkrani> createState() => _OyunEkraniState();
}

class _OyunEkraniState extends State<OyunEkrani> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Oyun Ekrani"),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_new)), ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("${widget.kisi.ad} - ${widget.kisi.yas} - ${widget.kisi.bekar} - ${widget.kisi.boy}"),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const SonucEkrani()));
            }, child: const Text("Tıkla")),



          ],
        ),
      ),
    );
  }
}
