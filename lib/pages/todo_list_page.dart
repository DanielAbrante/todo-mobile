import 'package:flutter/material.dart';
import 'package:todo_app/widgets/new_task_dialog.dart';
import 'package:todo_app/widgets/todo_tile.dart';

class ToDoListPage extends StatefulWidget {
  const ToDoListPage({super.key});

  @override
  State<ToDoListPage> createState() => _ToDoListPageState();
}

class _ToDoListPageState extends State<ToDoListPage> {
  List<Map<String, dynamic>> toDoList = [
    {"taskName": "Fazer a atividade", "taskCompleted": false},
    {"taskName": "Preparar o trabalho", "taskCompleted": false},
    {"taskName": "Logar na conta", "taskCompleted": false},
    {"taskName": "Comprar cenoura", "taskCompleted": false},
    {"taskName": "Desligar aparelho", "taskCompleted": false},
  ];

  @override
  Widget build(BuildContext context) {
    void createNewTask() async {
      String taskTyped = await showDialog(
          context: context, builder: (context) => const NewTaskDialog());

      if (taskTyped.isEmpty) return;

      Map<String, dynamic> newTask = {
        "taskName": taskTyped,
        "taskCompleted": false
      };

      setState(() {
        toDoList.add(newTask);
      });
    }

    void deleteTask(int index) {
      setState(() {
        print(index);
        toDoList.removeAt(index);
      });
    }

    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: const Center(
          child: Text("TODO"),
        ),
        backgroundColor: Colors.yellow,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => createNewTask(),
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 12, top: 12),
        child: ListView.builder(
            itemCount: toDoList.length,
            itemBuilder: (context, index) => GestureDetector(
                onLongPress: () {
                  deleteTask(index);
                },
                child: ToDoTile(listItem: toDoList[index]))),
      ),
    );
  }
}
