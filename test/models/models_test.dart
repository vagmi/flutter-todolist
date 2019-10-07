import 'package:flutter_test/flutter_test.dart';
import 'package:todolist/models/models.dart';

void main() {
  test('It creates a task', () {
    var task = Task(title: "Learn Dart");
    expect(task.title, equals("Learn Dart"));
    expect(task.done, equals(false));
  });
  test('Toggle completes a task if unfinished', () {
    var task = Task(title: "Learn Dart");
    expect(task.done, equals(false));
    task.toggle();
    expect(task.done, equals(true));
  });
  test('Toggle uncompletes a task if finished', () {
    var task = Task(title: "Learn Dart", done: true);
    expect(task.done, equals(true));
    task.toggle();
    expect(task.done, equals(false));
  });

  test('It creates a list to store tasks', () {
    var list = TodoList(
      tasks: List<Task>.generate(10, (i) => Task(title: "Task $i")),
    );
    expect(list.taskCount, equals(10));
    expect(list.tasks[5].title, equals("Task 5"));
  });
}
