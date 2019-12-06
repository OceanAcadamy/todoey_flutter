import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'task_tile.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          longPress: () {
            if (Provider.of<TaskData>(context).tasks[index].isDone)
              Provider.of<TaskData>(context).deleteTask(index);
          },
          title: Provider.of<TaskData>(context).tasks[index].name,
          isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
          toggleCheckboxState: (checkboxState) {
            Provider.of<TaskData>(context)
                .updateTask(Provider.of<TaskData>(context).tasks[index]);
          },
        );
      },
      itemCount: Provider.of<TaskData>(context).tasks.length,
    );
  }
}
