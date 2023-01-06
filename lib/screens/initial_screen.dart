import 'package:flutter/material.dart';
import 'package:projeto_alura_flutter/components/task.dart';

import 'form_screen.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Tarefas'),
      ),
      body: ListView(
        children: const [
          Task('Aprender Flutter no café da manhã comendo sucrilhos',
              'assets/images/flutter.png', 5),
          Task('Aprender Pentest', 'assets/images/pentest.jpg', 4),
          Task('Aprender Spring', 'assets/images/spring.png', 5),
          Task('Tocar Guitarra', 'assets/images/guitarra.jpg', 5),
          Task('Pilotar', 'assets/images/drift.jpg', 4),
          SizedBox(
            height: 100,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FormScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
