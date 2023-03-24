import 'package:flutter/material.dart';
import 'package:sayi_tahmin_oyunu/main.dart';

class SonucEkrani extends StatefulWidget {
  const SonucEkrani({Key? key}) : super(key: key);

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
            Image.asset("images/mutlu_resim.png"),
            Text("KAZANDIN!",
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text("BAŞTAN BAŞLA")),
          ],
        ),
      ),
    );
  }
}
