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
}
