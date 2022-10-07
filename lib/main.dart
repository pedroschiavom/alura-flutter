
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
          leading: Container(),
          title: Text('Tarefas'),
        ),
        body: ListView(
          children: [
            Task('Aprender Flutter no café da manhã comendo sucrilhos','https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',5),
            Task('Aprender Pentest','https://acaditi.com.br/wp-content/uploads/2021/03/O-que-e-pentest-saiba-tudo-na-ACADI-TI-1280x720.jpg',4),
            Task('Aprender Spring','https://blog.oxiane.com/wp-content/uploads/2021/02/spring_boog_400x400.png',5),
            Task('Tocar Guitarra','https://tfcrd2.vteximg.com.br/arquivos/ids/191915-1000-1000/Guitarra-Strinberg-LPS230-Black-Satin-Les-Paul.jpg?v=637703572800930000',5),
            Task('Pilotar','https://www.folhadelondrina.com.br/img/inline/3220000/0x1200/Londrina-recebe-etapa-do-Brasileiro-de-Drift-no-fi0322114500202209091808.webp?fallback=https%3A%2F%2Fwww.folhadelondrina.com.br%2Fimg%2Finline%2F3220000%2FLondrina-recebe-etapa-do-Brasileiro-de-Drift-no-fi0322114500202209091808.jpg%3Fxid%3D5829423&xid=5829423',4),
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {}),
      ),
    );
  }
}

class Task extends StatefulWidget {
  final String nome;
  final String url;
  final int dificuldade;
  const Task(this.nome, this.url, this.dificuldade, {super.key});

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
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.blue
            ),
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
                      child: Image.network(
                          widget.url,
                          fit: BoxFit.cover,),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: 200,
                            child: Text(
                              widget.nome,
                              style: TextStyle(
                                fontSize: 24,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )),
                       Row(
                         children: [
                           Icon(Icons.star,size: 15,color: (widget.dificuldade >= 1) ? Colors.blue : Colors.blue[100]),
                           Icon(Icons.star,size: 15,color: (widget.dificuldade >= 2) ? Colors.blue : Colors.blue[100]),
                           Icon(Icons.star,size: 15,color: (widget.dificuldade >= 3) ? Colors.blue : Colors.blue[100]),
                           Icon(Icons.star,size: 15,color: (widget.dificuldade >= 4) ? Colors.blue : Colors.blue[100]),
                           Icon(Icons.star,size: 15,color: (widget.dificuldade >= 5) ? Colors.blue : Colors.blue[100]),
                         ],
                       ),
                      ],
                    ),
                    Container(
                      height: 52,
                      width: 52,
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              nivel++;
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Icon(Icons.arrow_drop_up),
                              Text(
                                'UP',
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          )),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: LinearProgressIndicator(
                        color: Colors.white,
                        value: (widget.dificuldade > 0) ?
                        (nivel/widget.dificuldade) / 10 : 1,
                      ),
                      width: 200,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      'Nível: $nivel',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      )),
    );
  }
}
