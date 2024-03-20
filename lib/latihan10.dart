import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.blue, // Mengatur warna latar belakang AppBar
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan 10'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'For You'),
            Tab(text: 'Following'),
          ],
          labelColor: Colors.white, // Mengatur warna teks tab yang dipilih
          indicatorColor: Colors.white, // Mengatur warna indikator TabBar
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ForYouTab(),
          FollowingTab(),
        ],
      ),
    );
  }
}

class ForYouTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
              leading: FlutterLogo(),
              title: Text('Data ke $index'),
              onTap: () {
                // Do something when item is tapped
              },
            ),
            Divider(
              thickness: 1,
              color: const Color.fromARGB(255, 224, 224, 224),
            ),
          ],
        );
      },
    );
  }
}

class FollowingTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 6.0,
        mainAxisSpacing: 6.0,
      ),
      itemCount: 4,
      itemBuilder: (context, index) {
        return Center(
          child: Image(
            image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
            width: 100,
            height: 100,
          ),
        );
      },
    );
  }
}
