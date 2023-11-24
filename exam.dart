import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'List View Builder',
    theme: ThemeData(
      primarySwatch: Colors.teal,
    ),
    home: const LaKasa(),
  ));
}



class LaKasa extends StatefulWidget {
  const LaKasa({Key? key}) : super(key: key);

  @override
  State<LaKasa> createState() => _LaKasaEstado();
}

class _LaKasaEstado extends State<LaKasa> {

  List students = [
    {'name': 'Judith Baal'},
    {'name': 'Johnas Baal'},
    {'name': 'Clark Anthony Baal'},
    {'name': 'Mark Anthony Baal'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Builder'), 
        leading: Icon(Icons.featured_video),
        backgroundColor: Colors.teal
      ),
      body: ListView.builder(
          itemCount: students.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(students[index]['name']),
              leading: Icon(Icons.ad_units),
              subtitle: Text("${((students[index]['name'])).length - ' '.allMatches((students[index]['name'])).length}"),
            );
          }
      )
    );
  }
}
