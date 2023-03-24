import 'package:flutter/material.dart';
import 'package:sayi_tahmin_oyunu/main.dart';

class SonucEkrani extends StatefulWidget {
  late bool sonuc;
  late int rastgle;

  SonucEkrani({required this.sonuc, required this.rastgle});

  @override
  State<SonucEkrani> createState() => _SonucEkraniState();
}

class _SonucEkraniState extends State<SonucEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sonuç Ekranı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            widget.sonuc
                ? Image.asset("images/mutlu_resim.png")
                : Image.asset("images/uzgun_resim.png"),
            Text(
              widget.sonuc ? "KAZANDIN!" : "KAYBETTİN!",
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
                color: widget.sonuc ?  Colors.green : Colors.red,
              ),
            ),
            Text("DOĞRU SAYI: ${widget.rastgle}",
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 18.0,
                  color: Colors.black),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("BAŞTAN BAŞLA")),
          ],
        ),
      ),
    );
  }
}
