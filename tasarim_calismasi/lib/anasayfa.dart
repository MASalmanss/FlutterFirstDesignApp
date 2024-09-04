import 'dart:ui';

import 'package:flutter/cupertino.dart';
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
                Chip("Cheese"),
                Chip("Sausage"),
                Chip("Olive"),
                Chip("Pepper"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text("20 dakika" , style: TextStyle(color: yazirenk2  , fontSize: 22 , fontWeight: FontWeight.bold),),
                  Text("Delivery" , style: TextStyle(color: yazirenk2  , fontSize: 22),),
                  Text("Meet lower , get ready to meet your beef" , style: TextStyle(color: yazirenk2  , fontSize: 22), textAlign: TextAlign.center,),
                ],
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("5.98\$" , style: TextStyle(fontSize: 36 ,color: Anarenk , fontWeight: FontWeight.bold),),
                SizedBox(width: 200,height: 50,
                  child: TextButton(onPressed: (){},
                    child: Text("Add to Cart" , style: TextStyle(color: Yazirenk , fontSize: 18),),
                    style: TextButton.styleFrom(backgroundColor: Anarenk,
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))
                    ),
                  ),
                )
              ],
            ),

          ],
        )
    );
  }
}

class Chip extends StatelessWidget {
  String yazi;
  Chip(this.yazi);

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){},
      child: Text(yazi , style: TextStyle(color: Yazirenk),),
      style: TextButton.styleFrom(backgroundColor: Anarenk),
    );
  }
}
