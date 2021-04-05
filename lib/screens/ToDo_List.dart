import 'package:flutter/material.dart';
import 'package:test_login/screens/Add_task.dart';

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  Widget _buildtask(int index) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Card(
            elevation: 5,
            child: ListTile(
              title: Text('title'),
              subtitle: Text('Oct 2,2021 - High'),
              trailing: Checkbox(
                  activeColor: Colors.green[200],
                  value: true,
                  onChanged: (value) {
                    print(value);
                  }),
            ),
          ),
          Divider(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green[300], title: const Text('To-Do List')),
      body: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'My Tasks',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'data',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              );
            }
            return _buildtask(index);
          }),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green[400],
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AddTaskScreen()));
          },
          tooltip: 'Add Task',
          child: Icon(Icons.add)),
    );
  }
}
