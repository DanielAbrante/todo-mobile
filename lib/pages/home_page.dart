import 'package:flutter/material.dart';
import 'package:todo_app/widgets/todo_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow[200],
        appBar: AppBar(
          title: const Center(
            child: Text("TODO"),
          ),
          backgroundColor: Colors.yellow,
        ),
        body: ToDoList());
  }
}
