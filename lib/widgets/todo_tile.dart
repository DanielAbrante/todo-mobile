import 'package:flutter/material.dart';

class ToDoTile extends StatefulWidget {
  final Map<String, dynamic> listItem;

  const ToDoTile({super.key, required this.listItem});

  @override
  State<ToDoTile> createState() => _ToDoTileState();
}

class _ToDoTileState extends State<ToDoTile> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: widget.listItem["taskCompleted"],
          onChanged: (value) {
            setState(() {
              widget.listItem["taskCompleted"] = value;
            });
          },
        ),
        Expanded(
          child: ListTile(
            title: Text(
              widget.listItem["taskName"],
              style: TextStyle(
                  decoration: widget.listItem["taskCompleted"]
                      ? TextDecoration.lineThrough
                      : TextDecoration.none),
            ),
          ),
        ),
      ],
    );
  }
}
