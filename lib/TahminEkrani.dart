import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sayi_tahmin_oyunu/SonucEkrani.dart';

class TahminEkrani extends StatefulWidget {
  const TahminEkrani({Key? key}) : super(key: key);

  @override
  State<TahminEkrani> createState() => _TahminEkraniState();
}

class _TahminEkraniState extends State<TahminEkrani> {
  var tahmin = TextEditingController();
  int rastgelesayi = 0;
  int haklar = 5;
  String yonlendirme = "";

  @override
  void initState() {
    super.initState();
    rastgelesayi = Random().nextInt(101);
    print("Rastgele sayı: $rastgelesayi");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tahmin Ekrani"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Kalan Hak: $haklar",
              style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),Text(
              "Yardım: $yonlendirme ",
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: tahmin,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: "Sayı giriniz...",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  labelText: 'Tahmininiz',
                ),
              ),
            ),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    int tahmn = int.parse(tahmin.text);
                    if (tahmn == rastgelesayi){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SonucEkrani(sonuc: true,)));
                    }
                    else{
                      haklar -= 1;
                      if(tahmn > rastgelesayi){
                        yonlendirme = "TAHMİNİ AZALT";
                      }
                      else if(tahmn < rastgelesayi ){
                        yonlendirme = "TAHMİNİ ARTIR";
                      }
                    }
                    if(haklar == 0){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>  SonucEkrani(sonuc: false,)));
                    }
                  });
                },
                child: Text("TAHMİN ET")),
          ],
        ),
      ),
    );
  }
}
