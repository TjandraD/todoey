import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TasksData extends ChangeNotifier {
  final List<Task> _tasksList = [
    Task(title: "Buy milk"),
    Task(title: "Buy eggs"),
    Task(title: "This is the first task"),
  ];

  UnmodifiableListView<Task> get tasksList {
    return UnmodifiableListView(_tasksList);
  }

  int get taskCount => _tasksList.length;

  void addTask(String title) {
    final task = Task(title: title);
    _tasksList.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasksList.remove(task);
    notifyListeners();
  }
}
