import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan 7',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Goyek',
            style: TextStyle(color: Colors.white), // Mengubah warna teks di appbar menjadi putih
          ),
          backgroundColor: Color.fromARGB(255, 80, 182, 255), // Ganti warna appbar menjadi hijau
        ),
        body: MenuGrid(),
      ),
    );
  }
}

class MenuGrid extends StatelessWidget {
  final List<String> menuItems = [
    'GoRide','GoCar','GoFood','GoSend','GoMart','GoPulsa','Check In'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Your favorites',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {
                  // Tambahkan aksi untuk tombol edit di sini
                },
                child: Text(
                  'Edit',
                  style: TextStyle(color: Colors.white), // Mengubah warna teks tombol edit menjadi putih
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 80, 182, 255), // Mengubah warna latar belakang tombol edit
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0), // Mengatur border radius tombol
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.all(20),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, // Mengubah jumlah kolom menjadi 4
              mainAxisSpacing: 8.0,
              crossAxisSpacing: 8.0,
            ),
            itemCount: menuItems.length,
            itemBuilder: (context, index) {
              return MenuItem(
                title: menuItems[index],
                image: 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
              );
            },
          ),
        ),
      ],
    );
  }
}

class MenuItem extends StatelessWidget {
  final String title;
  final String image;

  MenuItem({required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.network(
          image,
          height: 64,
          width: 64,
        ),
        SizedBox(height: 4),
        Text(
          title,
          style: TextStyle(
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
