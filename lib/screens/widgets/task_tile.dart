import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({
    Key? key,
  }) : super(key: key);

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(
        "This is the first task",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      controlAffinity: ListTileControlAffinity.trailing,
      value: isChecked,
      onChanged: (value) {
        setState(() {
          isChecked = !isChecked;
        });
      },
    );
  }
}
