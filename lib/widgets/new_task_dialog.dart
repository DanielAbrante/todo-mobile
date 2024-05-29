import 'package:flutter/material.dart';

class NewTaskDialog extends StatelessWidget {
  const NewTaskDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController taskController = TextEditingController();

    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: SizedBox(
        height: 120,
        child: Column(
          children: [
            TextField(
              controller: taskController,
              autofocus: true,
              decoration: const InputDecoration(hintText: "Add a new task"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                      onPressed: () {
                        final String input = taskController.text;

                        if (input.isEmpty) return;

                        Navigator.pop(context, input);
                      },
                      child: const Text("Save")),
                  OutlinedButton(
                      onPressed: () => Navigator.pop(context, ""),
                      child: const Text("Cancel")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
