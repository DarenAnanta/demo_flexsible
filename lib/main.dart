import 'package:flutter/material.dart';

void main() {
  runApp(const MusicPlayerApp());
}

class MusicPlayerApp extends StatelessWidget {
  const MusicPlayerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music Player UI',
      // a. Menggunakan theme gelap untuk aplikasi
      theme: ThemeData.dark(),
      home: const MusicPlayerHomePage(),
    );
  }
}

class MusicPlayerHomePage extends StatelessWidget {
  const MusicPlayerHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Music Player'),
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.music_note, size: 150, color: Colors.white60),
            SizedBox(height: 20),
            Text(
              'Now Playing',
              style: TextStyle(fontSize: 24, color: Colors.white60),
            ),
          ],
        ),
      ),
      // b. Meletakkan Control Bar di bagian bawah layar
      bottomNavigationBar: BottomAppBar(
        // c. Membungkus Control Bar dengan Container
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          color: Colors.black54,
          // d. Menggunakan Row untuk menyusun ikon secara horizontal
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              // Tombol Shuffle di paling kiri
              // Expanded digunakan untuk mengisi ruang kosong secara merata
              Expanded(
                flex: 1, // Mengambil 1 bagian dari ruang kosong
                child: IconButton(
                  icon: const Icon(Icons.shuffle, color: Colors.white),
                  onPressed: () {},
                ),
              ),

              // Grup tombol tengah (Previous, Play, Next)
              // Flexible digunakan agar grup ini mengambil porsi ruang lebih besar
              Flexible(
                flex: 3, // Mengambil 3 bagian dari ruang kosong
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.skip_previous,
                        size: 36,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                    // Tombol Play dibuat lebih besar untuk penekanan
                    IconButton(
                      icon: const Icon(
                        Icons.play_arrow,
                        size: 48,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.skip_next,
                        size: 36,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),

              // Tombol Repeat di paling kanan
              Expanded(
                flex: 1, // Mengambil 1 bagian dari ruang kosong
                child: IconButton(
                  icon: const Icon(Icons.repeat, color: Colors.white),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
