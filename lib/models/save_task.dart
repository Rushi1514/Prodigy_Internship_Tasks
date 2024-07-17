import 'package:flutter/material.dart';
import 'package:todo_list/models/task_model.dart';

class SaveTask extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(title: 'Assignments', isCompleted: true),
    Task(title: 'Gym', isCompleted: false),
    Task(title: 'Cricket', isCompleted: true),
    Task(title: 'Vlogging', isCompleted: false),
  ];

  List<Task> get tasks => _tasks;

  void addTask(Task task) {
    tasks.add(task);
    notifyListeners();
  }

  void removeTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }

  void checkTask(int index) {
    tasks[index].isDone();
    notifyListeners();
  }
}
