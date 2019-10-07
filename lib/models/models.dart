class Task {
  String title;
  bool done;

  Task({this.title, this.done = false});

  void toggle() {
    this.done = !this.done;
  }
}

class TodoList {
  List<Task> tasks;
  int get taskCount => tasks.length;
  TodoList({this.tasks});
}
