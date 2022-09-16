import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  build(context) {
    return MaterialApp(
      title: 'Filmes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(color: Colors.red,width: 100,height: 100),
          Container(color: Colors.blue,width: 50,height: 50,)
        ],
      ),
    );
  }
}
