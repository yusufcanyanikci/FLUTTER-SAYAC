import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<StatefulWidget> createState() {
    return _sayacState();

  }
}

class _sayacState extends State {
  int sayac = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
        title: const Text("Flutter İle Sayaç Uygulaması"),
        ),
        floatingActionButton: FloatingActionButton(
        splashColor: Colors.blueAccent,
        backgroundColor: const Color.fromARGB(255, 0, 255, 64),
        onPressed: () => sayaciArttir(),
        child: const Icon(Icons.add),
        ),
        body: Center(
          child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
              const Text(
                "Arttırmak İçin Artı Butonuna Tıklayınız.",
                style: TextStyle(fontSize: 30)  
                ,
              ),
              Text(sayac.toString(), style: const TextStyle(fontSize: 40))
            ],
          ),
        ),
      ),
    ); 
  }


  void sayaciArttir() {
    setState(() {
      sayac++;
    });
  }
}