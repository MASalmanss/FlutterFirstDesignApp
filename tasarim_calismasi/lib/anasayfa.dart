import 'package:flutter/material.dart';
import 'package:tasarim_calismasi/renkler.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pizza" , style: TextStyle(color: Yazirenk , fontFamily: "Pacifico" , fontSize: 22),),
        backgroundColor: Anarenk,
        centerTitle: true,
      ),
      body:
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text("Beef Cheese" , style: TextStyle(fontSize: 36 ,color: Anarenk , fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(top:  8.0),
              child: Image.asset("resimler/pizza_resim.png"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(onPressed: (){},
                  child: Text("Cheese" , style: TextStyle(color: Yazirenk),),
                  style: TextButton.styleFrom(backgroundColor: Anarenk),
                ),
                TextButton(onPressed: (){},
                  child: Text("Sausage" , style: TextStyle(color: Yazirenk),),
                  style: TextButton.styleFrom(backgroundColor: Anarenk),
                ),
                TextButton(onPressed: (){},
                  child: Text("Olive" , style: TextStyle(color: Yazirenk),),
                  style: TextButton.styleFrom(backgroundColor: Anarenk),
                ),
                TextButton(onPressed: (){},
                  child: Text("Pepper" , style: TextStyle(color: Yazirenk),),
                  style: TextButton.styleFrom(backgroundColor: Anarenk),
                ),
              ],
            ),
            Column(
              children: [
                Text("20 dakika" , style: TextStyle(color: yazirenk2  , fontSize: 22),),
                Text("Delivery" , style: TextStyle(color: yazirenk2  , fontSize: 22),),
                Text("Meet lower , get ready to meet your beef" , style: TextStyle(color: yazirenk2  , fontSize: 22),),
              ],
            )

          ],
        )
    );
  }
}
