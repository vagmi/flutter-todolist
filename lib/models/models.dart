class Task {
  String title;
  bool done;

  Task({this.title, this.done = false});

  void toggle() {
    this.done = !this.done;
  }
}
