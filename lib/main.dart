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
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tarefas'),
        ),
        body: ListView(
          children: [
            Task('Aprender Flutter no café da manhã comendo sucrilhos'),
            Task('Andar de Bike'),
            Task('Meditar'),
            Task('Meditar'),
            Task('Meditar'),
            Task('Meditar'),
            Task('Meditar'),
            Task('Meditar'),
            Task('Meditar'),
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {}),
      ),
    );
  }
}

class Task extends StatelessWidget {
  const Task(this.name, {Key? key}) : super(key: key);

  final String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          children: [
            Container(color: Colors.blue, height: 140),
            Container(
              color: Colors.white,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: Colors.black26,
                    width: 72,
                    height: 100,
                  ),
                  Container(
                    width: 200,
                      child: Text(
                    name,
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      fontSize: 24,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )),
                  ElevatedButton(
                      onPressed: () {}, child: Icon(Icons.arrow_drop_up)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
