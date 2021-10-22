import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/tasks_data.dart';
import 'package:todoey/screens/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TasksData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.taskCount,
          itemBuilder: (_, index) {
            return TaskTile(
              isChecked: taskData.tasksList[index].isDone,
              taskTitle: taskData.tasksList[index].title,
              checkboxCallback: () {
                // setState(() {
                //   widget.tasks[index].toggleDone();
                // });
              },
            );
          },
        );
      },
    );
  }
}
