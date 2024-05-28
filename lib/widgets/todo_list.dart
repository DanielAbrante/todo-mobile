import 'package:flutter/material.dart';
import 'package:todo_app/widgets/todo_tile.dart';

class ToDoList extends StatelessWidget {
  ToDoList({super.key});

  final List<Map<String, dynamic>> todoList = [
    {"taskName": "Fazer exercício físico", "taskCompleted": false},
    {"taskName": "Ler uma linha do livro", "taskCompleted": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, top: 12),
      child: ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (context, index) => ToDoTile(listItem: todoList[index])),
    );
  }
}
