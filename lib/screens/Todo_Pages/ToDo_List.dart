import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:test_login/helpers/database_help.dart';
import 'package:test_login/models/Tasks/Tasks.dart';
import 'package:test_login/screens/ToDo_Pages/Add_task.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_login/translations/local_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  Future<List<Tasks>> _taskslist;
  final DateFormat _dateFormatter = DateFormat('MMM dd, yyyy');

  @override
  void initState() {
    super.initState();
    _updatetaskslist();
  }

  _updatetaskslist() {
    setState(() {
      _taskslist = DatabaseHelper.instance.getTaskList();
    });
  }

  // _delete() {
  //   DatabaseHelper.instance.deleteTask(widget.task.id);
  //   widget.updateTaskList();
  //   Navigator.pop(context);
  // }

  Widget _buildtask(Tasks task) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Card(
            elevation: 5,
            child: ListTile(
                title: Text(
                  '${task.title}',
                  style: TextStyle(
                      fontSize: 18,
                      decoration: task.status == 0
                          ? TextDecoration.none
                          : TextDecoration.lineThrough),
                ),
                subtitle: Text(
                  '${_dateFormatter.format(task.date)} - ${task.priority.tr()}',
                  style: TextStyle(
                      fontSize: 15,
                      decoration: task.status == 0
                          ? TextDecoration.none
                          : TextDecoration.lineThrough),
                ),
                trailing: Checkbox(
                    activeColor: Colors.green[200],
                    value: task.status == 1 ? true : false,
                    onChanged: (value) {
                      task.status = value ? 1 : 0;
                      DatabaseHelper.instance.updateTask(task);
                      _updatetaskslist();
                    }),
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => AddTaskScreen(
                          task: task,
                          updateTaskList: _updatetaskslist,
                        ),
                      ),
                    )),
          ),
          // Divider(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green[300], title: const Text('To-Do List')),
      body: FutureBuilder(
        future: _taskslist,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          final int completedTasksCount = snapshot.data
              .where((Tasks task) => task.status == 1)
              .toList()
              .length;

          return ListView.builder(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
              itemCount: 1 + snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                if (index == 0) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          LocaleKeys.Tasks_tasks_text.tr(),
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          '$completedTasksCount of ${snapshot.data.length}',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  );
                }
                return _buildtask(snapshot.data[index - 1]);
              });
        },
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green[400],
          onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => AddTaskScreen(
                        updateTaskList: _updatetaskslist,
                      ))),
          tooltip: LocaleKeys.Tasks_add_task.tr(),
          child: Icon(Icons.add)),
    );
  }
}
