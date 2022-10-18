import 'package:flutter/material.dart';

class Dificuldade extends StatelessWidget {

  final int dificuldadeDoLevel;

  const Dificuldade({
    required this.dificuldadeDoLevel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          size: 15,
          color: (dificuldadeDoLevel >= 1) ? Colors.orange : Colors.yellow,
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (dificuldadeDoLevel >= 2) ? Colors.orange : Colors.yellow,
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (dificuldadeDoLevel >= 3) ? Colors.orange : Colors.yellow,
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (dificuldadeDoLevel >= 4) ? Colors.orange : Colors.yellow,
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (dificuldadeDoLevel >= 5) ? Colors.orange : Colors.yellow,
        ),
      ],
    );
  }
}