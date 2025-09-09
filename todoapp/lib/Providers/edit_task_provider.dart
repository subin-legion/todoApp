// providers/edit_task_provider.dart

import 'package:flutter/foundation.dart';

class EditTaskProvider with ChangeNotifier {
  int _selectedDayIndex = 3;
  int _selectedPriority = 0;
  bool _getAlert = false;
  String _taskId = '';

  // Private priorities list
  final List<String> _priorities = ['High', 'Medium', 'Low'];

  // Public getter for priorities
  List<String> get priorities => List.unmodifiable(_priorities);

  int get selectedDayIndex => _selectedDayIndex;
  int get selectedPriority => _selectedPriority;
  bool get getAlert => _getAlert;
  String get taskId => _taskId;

  void initialize(String taskId, int dayIndex, int priority, bool alert) {
    _taskId = taskId;
    _selectedDayIndex = dayIndex;
    _selectedPriority = priority;
    _getAlert = alert;
    notifyListeners();
  }

  void updateSelectedDay(int index) {
    _selectedDayIndex = index;
    notifyListeners();
  }

  void updatePriority(int index) {
    _selectedPriority = index;
    notifyListeners();
  }

  void toggleAlert(bool value) {
    _getAlert = value;
    notifyListeners();
  }

  void reset() {
    _selectedDayIndex = 3;
    _selectedPriority = 0;
    _getAlert = false;
    _taskId = '';
    notifyListeners();
  }
}
