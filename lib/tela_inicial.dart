import 'package:flutter/material.dart';
import 'package:primeiro_projeto_tarefas/tarefas.dart';

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
        title: Text('Tarefas'),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: Duration(milliseconds: 1000),
        child: ListView(
          children: [
            Tarefa('Ler', '', 2),
            Tarefa('Estudar', '', 3),
            Tarefa('Aprender Flutter', '', 5),
            Tarefa('Jogar', '', 1),
            Tarefa('Lavar louça', '', 4),
            Tarefa('Academia', '', 5),
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
    );
  }
}