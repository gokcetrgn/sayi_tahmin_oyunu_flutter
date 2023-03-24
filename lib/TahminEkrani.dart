import 'package:flutter/material.dart';
import 'package:sayi_tahmin_oyunu/SonucEkrani.dart';

class TahminEkrani extends StatefulWidget {
  const TahminEkrani({Key? key}) : super(key: key);

  @override
  State<TahminEkrani> createState() => _TahminEkraniState();
}

class _TahminEkraniState extends State<TahminEkrani> {

  int haklar = 5;
  late int kalanhak;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tahmin Ekrani"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Sayı giriniz...",
                border: OutlineInputBorder(),
                labelText: 'Tahmin',
              ),
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SonucEkrani()),
                  );
                },
                child: Text("TAHMİN ET")),
          ],
        ),
      ),
    );
  }
}
