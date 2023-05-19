import 'package:flutter/material.dart';

void main() {
  runApp(PinterestApp());
}

class PinterestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pinterest',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: PinterestScreen(),
    );
  }
}

class PinterestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pinterest'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(6, (index) {
          return Container(
            alignment: Alignment.topCenter,
            margin: EdgeInsets.all(8.0),
            child: Image.asset(
                    'assets/jk.jpg',
                    fit: BoxFit.cover,
                  ),
          );
        }),
      ),
    );
  }
}