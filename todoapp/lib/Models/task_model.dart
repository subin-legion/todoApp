// models/task_model.dart
class Task {
  final String id;
  final String name;
  final String description;
  final DateTime date;
  final String startTime;
  final String endTime;
  final String priority;
  final bool getAlert;

  Task({
    required this.id,
    required this.name,
    required this.description,
    required this.date,
    required this.startTime,
    required this.endTime,
    required this.priority,
    required this.getAlert,
  });

  Task copyWith({
    String? id,
    String? name,
    String? description,
    DateTime? date,
    String? startTime,
    String? endTime,
    String? priority,
    bool? getAlert,
  }) {
    return Task(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      date: date ?? this.date,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      priority: priority ?? this.priority,
      getAlert: getAlert ?? this.getAlert,
    );
  }
}
