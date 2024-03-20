import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan 9',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Penuhi Lindungi',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
          elevation: 30, // Tambahkan elevation untuk bayangan
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.blue,
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
                    child: Image.network(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                      width: 80,
                      height: 80,
                    ),
                  ),
                ],
              ),
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
  final List<String> menuItems = [
    'Covid19 Vaccine','Covid19 Test Result','EHAC','Covid19 Vaccine','Covid19 Test Result','EHAC'
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
        return MenuItem(
          title: menuItems[index],
          image: 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
        );
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
