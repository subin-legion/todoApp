// providers/task_provider.dart
import 'package:flutter/foundation.dart';
import 'package:todoapp/Models/task_model.dart';

class TaskProvider with ChangeNotifier {
  List<Task> _tasks = [];

  List<Task> get tasks => _tasks;

  void addTask(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(String id, Task updatedTask) {
    final index = _tasks.indexWhere((task) => task.id == id);
    if (index != -1) {
      _tasks[index] = updatedTask;
      notifyListeners();
    }
  }

  void deleteTask(String id) {
    _tasks.removeWhere((task) => task.id == id);
    notifyListeners();
  }

  Task getTaskById(String id) {
    return _tasks.firstWhere((task) => task.id == id);
  }
}
