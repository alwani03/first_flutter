import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Belajar Flutter",
              style: TextStyle(
                color: Color.fromARGB(181, 0, 50, 32),
                fontSize: 24,
              )),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/flutter_image.png'),
              SizedBox(height: 20),
              Text(
                'Belajar Flutter',
                style: TextStyle(
                  fontSize: 24,
                  color: Color.fromARGB(255, 0, 100, 0), // Hijau Tua
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
