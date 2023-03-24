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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Kalan Hak:",
              style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),Text(
              "Yardım: ",
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: "Sayı giriniz...",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  labelText: 'Tahmin',
                ),
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
