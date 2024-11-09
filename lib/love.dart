import 'package:flutter/material.dart';

void main() {
  runApp(LoveApp());
}

class LoveApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoveScreen(),
    );
  }
}

class LoveScreen extends StatefulWidget {
  @override
  _LoveScreenState createState() => _LoveScreenState();
}

class _LoveScreenState extends State<LoveScreen> {
  String message = "Tap tombol di bawah ini!";

  void showLoveMessage() {
    setState(() {
      message = "Aku Sayang Kamu! ❤️";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text("Pesan Cinta untuk Kamu 💖"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/flutter_image.png',
              width: 150,
              height: 150,
            ),
            SizedBox(height: 20),
            Text(
              message,
              style: TextStyle(
                fontSize: 24,
                color: Colors.pinkAccent,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: showLoveMessage,
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Colors.pinkAccent, // Ganti primary dengan backgroundColor
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                "Aku Sayang Kamu Uyung❤️",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
