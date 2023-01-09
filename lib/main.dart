import 'package:flutter/material.dart';
import 'package:projeto_alura_flutter/data/task_inherited.dart';
import 'package:projeto_alura_flutter/screens/form_screen.dart';
import 'package:projeto_alura_flutter/screens/initial_screen.dart';
import 'package:projeto_alura_flutter/components/task.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  build(context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TaskInherited(child: const InitialScreen()),
    );
  }
}
