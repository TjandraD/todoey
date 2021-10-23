import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function() checkboxCallback, longPressCallback;

  const TaskTile({
    Key? key,
    required this.isChecked,
    required this.taskTitle,
    required this.checkboxCallback,
    required this.longPressCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () => longPressCallback(),
      child: CheckboxListTile(
        title: Text(
          taskTitle,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            decoration: isChecked ? TextDecoration.lineThrough : null,
          ),
        ),
        controlAffinity: ListTileControlAffinity.trailing,
        value: isChecked,
        onChanged: (value) => checkboxCallback(),
      ),
    );
  }
}
