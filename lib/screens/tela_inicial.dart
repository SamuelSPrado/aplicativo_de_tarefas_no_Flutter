import 'package:flutter/material.dart';
import 'package:primeiro_projeto_tarefas/components/tarefas.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Tarefas'),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: const Duration(milliseconds: 1000),
        child: ListView(
          children: const [
            Tarefa('Ler', 'assets/images/ler.jpg', 2),
            Tarefa('Estudar', 'assets/images/estudar.png', 3),
            Tarefa('Aprender Flutter', 'assets/images/aprender_flutter.png', 5),
            Tarefa('Jogar', 'assets/images/jogar.jpg', 1),
            Tarefa('Academia', 'assets/images/academia.png', 5),
            SizedBox(
              height: 65,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
