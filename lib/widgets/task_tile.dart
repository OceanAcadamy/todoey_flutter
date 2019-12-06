import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final Function longPress;
  final Function toggleCheckboxState;
  TaskTile(
      {this.isChecked, this.title, this.toggleCheckboxState, this.longPress});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPress,
      title: Text(
        title,
        style: TextStyle(
          fontSize: 18.0,
          color: Colors.black54,
          decoration: isChecked ? TextDecoration.lineThrough : null,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: toggleCheckboxState,
      ),
    );
  }
}
