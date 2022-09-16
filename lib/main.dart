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
      home: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(color: Colors.black, width: 100, height: 100,),
              Container(color: Colors.yellow,width: 50,height: 50,),
              Container(color: Colors.black, width: 25, height: 25,),
            ],
          ),
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(color: Colors.yellow, width: 100, height: 100,),
              Container(color: Colors.black,width: 50,height: 50,),
              Container(color: Colors.yellow, width: 25, height: 25,),
            ],
          )
        ],
      )
    );
  }
}
