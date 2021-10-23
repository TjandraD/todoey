import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task.dart';
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
            final Task task = taskData.tasksList[index];

            return TaskTile(
              isChecked: task.isDone,
              taskTitle: task.title,
              checkboxCallback: () {
                taskData.updateTask(task);
              },
            );
          },
        );
      },
    );
  }
}
