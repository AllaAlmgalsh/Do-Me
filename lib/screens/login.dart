import 'package:flutter/material.dart';
import 'package:flutter_tasks_app/screens/add_task_screen.dart';
import 'package:flutter_tasks_app/screens/completed_tasks_screen.dart';
import 'package:flutter_tasks_app/screens/favorite_tasks_screen.dart';
import 'package:flutter_tasks_app/screens/pending_tasks_screen.dart';
import 'package:flutter_tasks_app/screens/tabs_screen.dart';


class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);
   static const id = "Login_screen";
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final List<Map<String, dynamic>> _pageDetails = [
    {'pageName':  TabsScreen(), "title": "Pending Tasks"},
  ];
  var _selectedPageIndex = 0;
  void _addTask(BuildContext context) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: ((context) {
          return SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: const AddTaskScreen(),
            ),
          );
        }));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pageDetails[_selectedPageIndex]['title']),
        actions: [
          IconButton(
            onPressed: () =>
              Navigator.of(context).pushReplacementNamed(TabsScreen.id),

            icon: const Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
