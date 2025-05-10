import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.yellowAccent, title: Text("Home")),
      body: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              autoPlayAnimationDuration: Duration(seconds: 3),
              viewportFraction: 1,
            ),
            items:
                [1, 2, 3, 4].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(color: Colors.amber),
                        child: Image.asset(
                          'assets/gambar$i.jpg',
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  );
                }).toList(),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Filosofi sate taichan adalah tentang menyederhanakan dan menghargai rasa alami daging ayam yang dibakar. Ia menolak kompleksitas bumbu kacang dan fokus pada kelezatan yang langsung berasal dari bahan utamanya, yaitu daging ayam yang dibakar, dengan sedikit bumbu tambahan seperti garam, jeruk nipis, dan sambal pedas. ",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Filosofi sate taichan adalah tentang menyederhanakan dan menghargai rasa alami daging ayam yang dibakar. Ia menolak kompleksitas bumbu kacang dan fokus pada kelezatan yang langsung berasal dari bahan utamanya, yaitu daging ayam yang dibakar, dengan sedikit bumbu tambahan seperti garam, jeruk nipis, dan sambal pedas. ",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Filosofi sate taichan adalah tentang menyederhanakan dan menghargai rasa alami daging ayam yang dibakar. Ia menolak kompleksitas bumbu kacang dan fokus pada kelezatan yang langsung berasal dari bahan utamanya, yaitu daging ayam yang dibakar, dengan sedikit bumbu tambahan seperti garam, jeruk nipis, dan sambal pedas. ",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
