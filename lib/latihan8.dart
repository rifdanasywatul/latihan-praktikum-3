import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan 8',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Tuiter',
            style: TextStyle(color: Colors.white), // Mengubah warna teks di appbar menjadi putih
          ),
          backgroundColor: Color.fromARGB(255, 80, 182, 255), // Ganti warna appbar menjadi hijau
        ),
        body: ProfilePage(),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 200,
              color: Colors.blue,
              child: Image.network(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            SizedBox(
              height: 100, // Setengah dari foto sampul
              child: Container(
                color: Colors.transparent, // Blank space di sebelah kiri
              ),
            ),
          ],
        ),
        Positioned(
          top: 150, // Mengatur posisi foto profil lebih ke bawah
          left: 16, // Mengatur posisi foto profil di sebelah kiri
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
              shape: BoxShape.rectangle,
            ),
            child: Image.network(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
              width: 100,
              height: 100,
              fit: BoxFit.cover, // Untuk mengatur bagaimana gambar ditampilkan dalam kotak
            ),
          ),
        ),
        Positioned(
          top: 250, // Mengatur posisi teks di bawah foto profil
          left: 16,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'UPI Official',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
        ),
        Positioned(
          top: 215, // Mengatur posisi tombol Follow di atas
          right: 16, // Mengatur posisi tombol Follow di kanan
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              'Follow',
              style: TextStyle(color: Colors.white), // Mengubah warna teks tombol menjadi putih
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 80, 182, 255), // Mengubah warna latar belakang tombol
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0), // Mengatur border radius tombol
              ),
            ),
          ),
        ),
      ],
    );
  }
}
