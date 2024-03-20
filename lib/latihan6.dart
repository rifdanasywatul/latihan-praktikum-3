import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Daftar Pengguna'),
        ),
        body: UserList(),
      ),
    );
  }
}

class UserList extends StatelessWidget {
  // Data pengguna
  final List<Map<String, String>> users = [
    {"name": "Rifda", "hobby": "Memasak"},
    {"name": "Devita", "hobby": "Travelling"},
    {"name": "Nadiyah", "hobby": "Menonton Film"},
    {"name": "Engie", "hobby": "Berolahraga"},
    {"name": "Alfina", "hobby": "Berkebun"},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        return UserCard(
          name: users[index]['name']!,
          hobby: users[index]['hobby']!,
        );
      },
    );
  }
}

class UserCard extends StatelessWidget {
  final String name;
  final String hobby;

  UserCard({required this.name, required this.hobby});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
        ),
        title: Text(name),
        subtitle: Text(hobby),
      ),
    );
  }
}
