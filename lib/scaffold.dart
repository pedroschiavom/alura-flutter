Scaffold(
        appBar: AppBar(
          leading: Container(),
          title: Text('Tarefas'),
        ),
        body: AnimatedOpacity(
          opacity: opacidade ? 1 : 0,
          duration: Duration(milliseconds: 800),
          child: ListView(
            children: [
              Task(
                  'Aprender Flutter no café da manhã comendo sucrilhos',
                  'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
                  5),
              Task(
                  'Aprender Pentest',
                  'https://acaditi.com.br/wp-content/uploads/2021/03/O-que-e-pentest-saiba-tudo-na-ACADI-TI-1280x720.jpg',
                  4),
              Task(
                  'Aprender Spring',
                  'https://blog.oxiane.com/wp-content/uploads/2021/02/spring_boog_400x400.png',
                  5),
              Task(
                  'Tocar Guitarra',
                  'https://tfcrd2.vteximg.com.br/arquivos/ids/191915-1000-1000/Guitarra-Strinberg-LPS230-Black-Satin-Les-Paul.jpg?v=637703572800930000',
                  5),
              Task(
                  'Pilotar',
                  'https://www.folhadelondrina.com.br/img/inline/3220000/0x1200/Londrina-recebe-etapa-do-Brasileiro-de-Drift-no-fi0322114500202209091808.webp?fallback=https%3A%2F%2Fwww.folhadelondrina.com.br%2Fimg%2Finline%2F3220000%2FLondrina-recebe-etapa-do-Brasileiro-de-Drift-no-fi0322114500202209091808.jpg%3Fxid%3D5829423&xid=5829423',
                  4),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              opacidade = !opacidade;
            });
          },
          child: Icon(Icons.remove_red_eye),
        ),
      ),