import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TasksData extends ChangeNotifier {
  List<Task> tasksList = [
    Task(title: "Buy milk"),
    Task(title: "Buy eggs"),
    Task(title: "This is the first task"),
  ];

  int get taskCount => tasksList.length;
}
