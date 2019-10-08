import 'package:flutter/material.dart';
import 'package:todolist/models/models.dart';

class AppState {
  TodoList list;
  AppState({this.list});
}

var appState = AppState(
    list: TodoList(
  tasks: List<Task>.generate(10, (i) => Task(title: "Item $i")),
));

void main() {
  appState.list.tasks[5].toggle();
  runApp(TodoListApp(appState));
}

class TodoListApp extends StatelessWidget {
  AppState state;
  TodoListApp(this.state);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
              child: ListView.builder(
        itemCount: state.list.taskCount,
        itemBuilder: (_, i) => new TaskTile(task: state.list.tasks[i]),
      ))),
    );
  }
}

class TaskTile extends StatefulWidget {
  final Task task;
  const TaskTile({
    Key key,
    @required this.task,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return TaskState();
  }
}

class TaskState extends State<TaskTile> {
  @override
  void initState() {
    super.initState();
    widget.task.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    print("${widget.task.title}'s status is ${widget.task.done}");
    return ListTile(
      onTap: () {
        print("I have been tapped");
        widget.task.toggle();
      },
      title: Text(widget.task.title),
      trailing: widget.task.done
          ? Icon(
              Icons.check_circle,
              color: Colors.green[300],
            )
          : null,
    );
  }
}
