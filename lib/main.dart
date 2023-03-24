import 'package:flutter/material.dart';
import 'package:sayi_tahmin_oyunu/TahminEkrani.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    var ekran = MediaQuery.of(context);
    final double yukseklik = ekran.size.height;
    final double genislik = ekran.size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Sayı Tahmin Oyunu'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Tahmin Oyunu",
                style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),
              Image.asset(
                "images/zar_resim.png",
                width: 700.0,
              ),
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const TahminEkrani()),
                    );
                  },
                  child: Text("OYUNA BAŞLA")
              ),
            ],
          ),
        ),
      ),
    );
  }
}
