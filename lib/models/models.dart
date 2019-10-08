import 'package:flutter/foundation.dart';

class Task with ChangeNotifier {
  String title;
  bool done;

  Task({this.title, this.done = false});

  void toggle() {
    this.done = !this.done;
    this.notifyListeners();
  }
}

class TodoList {
  List<Task> tasks;
  int get taskCount => tasks.length;
  TodoList({this.tasks});
}
