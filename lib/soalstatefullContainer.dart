import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;
  void tekanTombol() {
    setState(() {
      number = number + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Belajar Flutter"),
        ),
        body: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(colors: <Color>[
                Color.fromRGBO(100, 20, 20, 90),
                Color.fromRGBO(20, 100, 21, 0.651),
              ])),
          margin: EdgeInsets.fromLTRB(10, 17, 5, 100),
          padding: EdgeInsets.only(bottom: 20, top: 20),
          child: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    number.toString(),
                    style: TextStyle(fontSize: 10 + number.toDouble()),
                  ),
                  ElevatedButton(
                    child: Text("Tambah Bilangan"),
                    onPressed: tekanTombol,
                  ),
                ],
              ),
            ),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Colors.amber,
                    Colors.blue,
                  ],
                )),
          ),
        ),
      ),
    );
  }
}


/* Soal Gabungan statefull widget dan container */