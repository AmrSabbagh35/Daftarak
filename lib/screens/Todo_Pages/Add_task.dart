import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:test_login/helpers/database_help.dart';
import 'package:test_login/models/Tasks/Tasks.dart';

class AddTaskScreen extends StatefulWidget {
  final Function updateTaskList;
  final Tasks task;

  AddTaskScreen({this.updateTaskList, this.task});
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final _formkey = GlobalKey<FormState>();
  String _title = '';
  String _priority = '';
  DateTime _date = DateTime.now();
  TextEditingController _dateController = TextEditingController();

  final DateFormat _dateFormatter = DateFormat('MMM dd, yyyy');

  final List<String> _priorities = ['Low', 'Meduim', 'High'];

  @override
  void initState() {
    super.initState();
    _dateController.text = _dateFormatter.format(_date);
    if (widget.task != null) {
      _title = widget.task.title;
      _date = widget.task.date;
      _priority = widget.task.priority;
    }
  }

  @override
  void dispose() {
    super.dispose();
    _dateController.dispose();
  }

  _handleDatePicker() async {
    final DateTime date = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (date != null && date != _date) {
      setState(() {
        _date = date;
      });
      _dateController.text = _dateFormatter.format(date);
    }
  }

  _delete() {
    DatabaseHelper.instance.deleteTask(widget.task.id);
    widget.updateTaskList();
    Navigator.pop(context);
  }

  _submit() {
    if (_formkey.currentState.validate()) {
      _formkey.currentState.save();
      Tasks task = Tasks(title: _title, date: _date, priority: _priority);
      if (widget.task == null) {
        task.status = 0;
        DatabaseHelper.instance.insertTask(task);
      } else {
        task.id = widget.task.id;
        task.status = widget.task.status;

        DatabaseHelper.instance.updateTask(task);
      }
      widget.updateTaskList();
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.green[300],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  widget.task == null ? 'Add a Task :' : 'Update Task',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Form(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: TextFormField(
                          style: TextStyle(fontSize: 18),
                          decoration: InputDecoration(
                              labelText: 'Title',
                              labelStyle: TextStyle(fontSize: 18),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          validator: (input) => input.trim().isEmpty
                              ? 'Please Enter a task title !'
                              : null,
                          onSaved: (input) => _title = input,
                          initialValue: _title,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: TextFormField(
                          style: TextStyle(fontSize: 18),
                          controller: _dateController,
                          readOnly: true,
                          decoration: InputDecoration(
                              labelText: 'Date',
                              labelStyle: TextStyle(fontSize: 18),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          onTap: _handleDatePicker,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: DropdownButtonFormField(
                          isDense: true,
                          icon: Icon(Icons.arrow_drop_down_circle),
                          iconSize: 22,
                          iconEnabledColor: Colors.green[200],
                          items: _priorities
                              .map((String priority) => DropdownMenuItem(
                                  value: priority,
                                  child: Text(
                                    priority,
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.black),
                                  )))
                              .toList(),
                          style: TextStyle(fontSize: 18),
                          decoration: InputDecoration(
                              labelText: 'Priority',
                              labelStyle: TextStyle(fontSize: 18),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          validator: (input) => _priority == null
                              ? 'Please Enter a Priority Level !'
                              : null,
                          onSaved: (input) => _priority = input,
                          onChanged: (value) {
                            setState(() {
                              _priority = value;
                            });
                          },
                          // value: _priority,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.green[200],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: FlatButton(
                            onPressed: _submit,
                            child: Text(
                              widget.task == null ? 'Add' : 'Update',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )),
                      ),
                      widget.task != null
                          ? Container(
                              margin: EdgeInsets.symmetric(vertical: 20),
                              height: 60,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.green[200],
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: FlatButton(
                                  color: Colors.red[200],
                                  onPressed: _delete,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Text(
                                    'Delete',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  )),
                            )
                          : SizedBox.shrink()
                    ],
                  ),
                  key: _formkey,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
