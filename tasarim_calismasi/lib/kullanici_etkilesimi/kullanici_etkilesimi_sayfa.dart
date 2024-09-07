import 'package:flutter/material.dart';

class KullaniciEtkilesimi extends StatefulWidget {
  const KullaniciEtkilesimi({super.key});

  @override
  State<KullaniciEtkilesimi> createState() => _KullaniciEtkilesimiState();
}

class _KullaniciEtkilesimiState extends State<KullaniciEtkilesimi> {
  var tfCotrol = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kullanici etkileşimi"),),
      body: Center(
          child: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  setState(() {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Silmek istiyor musunuz ?"),
                          action: SnackBarAction(label: "Evet", onPressed: (){
                            SnackBar(content: const Text("Silind"),);
                          },)
                          ,)
                      );
                  });
                }, child: const Text(" SnackBar Özel  ")),

                ElevatedButton(onPressed: (){
                  setState(() {
                      showDialog(context: context, builder: (BuildContext context){
                        return AlertDialog(
                          title: const Text("Başlık"),
                          content: const Text("İçerik"),
                          actions: [
                            TextButton(onPressed: (){
                              Navigator.pop(context);
                            } , child: Text("İptal")),
                            TextButton(onPressed: (){} , child: Text("Bas")),
                          ],
                        );
                      });
                  });
                }, child: const Text("Alert")),

                ElevatedButton(onPressed: (){
                  setState(() {

                    showDialog(context: context, builder: (BuildContext context){
                      return AlertDialog(
                        title: const Text("Başlık"),
                        content: TextField(controller: tfCotrol,),
                        actions: [
                          TextButton(onPressed: (){
                            Navigator.pop(context);
                          } , child: Text("İptal")),

                          TextButton(onPressed: (){

                          } , child: Text("Bas")),
                        ],
                      );
                    });

                  });
                }, child: const Text(" Alert ")),
            ],
            ),
          )
      ),
    );

  }
}
