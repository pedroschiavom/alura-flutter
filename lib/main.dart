import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  build(context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter: Meus primeiros passos'),
        ),
        body: ListView(
          children: [
            Task('Aprender Flutter no café da manhã comendo sucrilhos'),
            Task('Aprender Pentest'),
            Task('Aprender Spring'),
            Task('Aprender Spring'),
            Task('Aprender Spring'),
            Task('Aprender Spring'),
            Task('Aprender Spring'),
            Task('Aprender Spring'),
            Task('Aprender Spring'),
            Task('Aprender Spring'),
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {}),
      ),
    );
  }
}

class Task extends StatefulWidget {
  final String nome;
  const Task(this.nome, {super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
   int nivel = 0;
   
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          child: Stack(
        children: [
          Container(
            color: Colors.blue,
            height: 140,
          ),
          Column(
            children: [
              Container(
                color: Colors.white,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      color: Colors.black26,
                      width: 72,
                      height: 100,
                    ),
                    Container(
                        width: 200,
                        child: Text(
                          widget.nome,
                          style: TextStyle(
                            fontSize: 24,
                            overflow: TextOverflow.ellipsis,
                          ),
                        )),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            nivel++;
                          });
                          print(nivel);
                        },
                        child: Icon(Icons.arrow_drop_up))
                  ],
                ),
              ),
              Text(
                'Nível: $nivel',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
