import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: const Text(
        "This is the first task",
        style: TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
      controlAffinity: ListTileControlAffinity.trailing,
      value: false,
      onChanged: (value) {},
    );
  }
}
