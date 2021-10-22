import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/tasks_data.dart';
import 'package:todoey/screens/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Provider.of<TasksData>(context).tasksList.length,
      itemBuilder: (_, index) {
        return TaskTile(
          isChecked: Provider.of<TasksData>(context).tasksList[index].isDone,
          taskTitle: Provider.of<TasksData>(context).tasksList[index].title,
          checkboxCallback: () {
            // setState(() {
            //   widget.tasks[index].toggleDone();
            // });
          },
        );
      },
    );
  }
}
