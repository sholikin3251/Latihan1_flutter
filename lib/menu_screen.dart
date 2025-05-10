import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.yellowAccent,
        title: Text("Menu"),
      ),
      body: Column(
        children: [
          Image.asset("assets/gambar5.jpg"),
          SizedBox(height: 20),
          Text(
            "selamat memilih menunya",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
