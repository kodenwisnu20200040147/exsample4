import 'package:flutter/material.dart';

void main() {
  runApp(ListApp());
}

class ListApp extends StatelessWidget {
  final List<Map<String,dynamic>> fruit = [

    {'name':'Apel', 'image' : 'http://image1.com'},
    {'name' : 'Pepaya', 'image': 'http://image2.com'},
    {'name' : 'Nanas' ,'image': 'http://image3.com'}
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Scaffold(
    appBar:AppBar(title: Text ("List View")),
    body: ListView(
    children: fruit.map((fruit){
    return ListTile(
    title: Text(fruit['name']),
    );
    }).toList(),
    )
    )

    );
    }
}