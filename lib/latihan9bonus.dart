import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Peduli Lindungi',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            '', // Mengosongkan teks AppBar
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.transparent, // Membuat appbar transparan
          elevation: 0, // Menghapus bayangan di appbar
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 67, 154, 216),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              height: 100,
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Entering a Public Space?',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Stay alert to stay safe',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/hp.jpg', // Contoh gambar lokal pertama
                      width: 80,
                      height: 80,
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                    border: Border.all( // Tambahkan border
                      color: Colors.grey, // Warna border
                      width: 1.0, // Lebar border
                    ),
                  ),
                  height: 80,
                ),
                Positioned(
                  right: 20,
                  top: 0,
                  bottom: 0,
                  child: Image.asset(
                    'assets/scan.jpg', // Gambar kecil di kanan
                    width: 120,
                    height: 120,
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 0,
                  bottom: 0,
                  child: Row(
                    children: [
                      Icon(Icons.arrow_drop_down), // Panah ke bawah diganti
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Check-In Preference',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: MenuGrid(),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuGrid extends StatelessWidget {
  final List<MenuItem> menuItems = [
    MenuItem(title: 'Covid19 Vaccine', image: 'assets/vaccine.jpg'),
    MenuItem(title: 'Covid19 Test Result', image: 'assets/result.jpg'),
    MenuItem(title: 'EHAC', image: 'assets/ehac.jpg'),
    MenuItem(title: 'Travel Regulations', image: 'assets/koper.jpg'),
    MenuItem(title: 'Telemedicine', image: 'assets/stetoskop.jpg'),
    MenuItem(title: 'Healthcare Facility', image: 'assets/rs.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(20),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
      ),
      itemCount: menuItems.length,
      itemBuilder: (context, index) {
        return menuItems[index];
      },
    );
  }
}

class MenuItem extends StatelessWidget {
  final String title;
  final String image;

  MenuItem({required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            image,
            height: 64,
            width: 64,
          ),
          SizedBox(height: 4),
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
