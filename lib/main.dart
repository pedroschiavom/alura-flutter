import 'package:flutter/material.dart';
import 'package:projeto_alura_flutter/initial_screen.dart';
import 'package:projeto_alura_flutter/task.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  build(context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InitialScreen(),
    );
  }
}
