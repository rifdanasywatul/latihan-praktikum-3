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
        extendBodyBehindAppBar: true, // Membuat body meluas di belakang appbar
        appBar: AppBar(
          title: Text(
            '', // Mengosongkan teks AppBar
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.transparent, // Membuat appbar transparan
          elevation: 0, // Menghapus bayangan di appbar
          leading: Container(
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 216, 210, 210),
            ),
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {},
            ),
          ),
          actions: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color.fromARGB(255, 216, 210, 210),
              ),
              child: IconButton(
                icon: Icon(Icons.search),
                color: Colors.black,
                onPressed: () {},
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 216, 210, 210),
              ),
              child: IconButton(
                icon: Icon(Icons.more_vert),
                color: Colors.black,
                onPressed: () {},
              ),
            ),
          ],
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
              child: Image.asset(
                'assets/cover.jpg',
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            SizedBox(
              height: 100,
              child: Container(
                color: Colors.transparent,
              ),
            ),
          ],
        ),
        Positioned(
          top: 150,
          left: 16,
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
              shape: BoxShape.circle,
            ),
            child: ClipOval(
              child: Image.asset(
                'assets/ppupn.jpg',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          top: 250,
          left: 16,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'UPN Veteran Jawa Timur',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  '@upnvjt_official',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 141, 149, 154),
                  ),
                ),
                Text(
                  'AKUN RESMI UPN "VETERAN" JAWA TIMUR',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                Text(
                  'Dikelola oleh Humas UPN "Veteran" Jawa Timur Kampus Bela Negara',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 8),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Translate bio',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 215,
          right: 16,
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              'Follow',
              style: TextStyle(color: Colors.white,
              fontWeight: FontWeight.bold,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 0, 0, 0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
