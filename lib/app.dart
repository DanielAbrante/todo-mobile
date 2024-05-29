import 'package:flutter/material.dart';
import 'package:todo_app/pages/todo_list_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ToDoListPage(),
      title: "ToDo App",
    );
  }
}
