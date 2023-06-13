import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter_slidable/flutter_slidable.dart';

import '../cnstants/colors.dart';
import '../standard/todo.dart';
import '../widgets/todo_list_items.dart';
// import '../widgets/todo_list_items.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _todoText = TextEditingController();
  bool _validate = false;
  String todovalue = ''; //-----------
  final todoList = ToDo.todoList();
  List<ToDo> _foundToDo = [];
  final _todoController = TextEditingController();
  @override
  void initState() {
    _foundToDo = todoList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: _buildAppBar(),
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              children: [
                searchBox(),
                Expanded(
                  child: ListView(
                    children: [
                      for (ToDo todo in _foundToDo.reversed)
                        ToDoItem(
                          todo: todo,
                          onToDoChanged: _handleToDoChange,
                          onDeleteItem: _deleteToDoItem,
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: const EdgeInsets.only(right: 20, bottom: 30),
              child: ElevatedButton(
                onPressed: () {
                  _todoTextField();
                },
                style: ElevatedButton.styleFrom(
                    primary: tdBlue,
                    minimumSize: Size(60, 60),
                    elevation: 40,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60))),
                child: const Text(
                  "+",
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _deleteToDoItem(String id) {
    setState(() {
      todoList.removeWhere((item) => item.id == id);
    });
  }

  void _todoTextField() {
    showModalBottomSheet(
      //Ok,  i faced a problem which is the bottomsheet overlapped by the keyboard so to fix that issue i have to follow some steps which is 6 steps
      isScrollControlled: true, //step 1

      context: context,
      builder: ((context) {
        return SingleChildScrollView(
          //step 2
          child: Builder(builder: (context) {
            //step 3
            return Wrap(
              //step 4
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.5, //step 5
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      //the new added to do text field starts here
                      TextField(
                        controller: _todoController,
                        autofocus: true, //step 6 bottomsheet overlapped
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(0),
                            prefixIcon: Icon(
                              Icons.check_box_outline_blank,
                              color: tdGrey,
                              size: 20,
                            ),
                            prefixIconConstraints: BoxConstraints(
                              maxHeight: 20,
                              minWidth: 25,
                            ),
                            border: InputBorder.none,
                            hintText: 'Tap to create a Task'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            child: const Text(
                              'Done',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: tdBlue),
                            ),
                            onTap: () {
                              // Clipboard.setData(ClipboardData(text: "text"));
                              setState(() {
                                !_todoController.text.isEmpty
                                    ? _addToDoItem(_todoController.text)
                                    : ScaffoldMessenger.of(context)
                                        .showSnackBar(SnackBar(
                                        content: const Text(
                                            'You Can not add an empty task!'),
                                        behavior: SnackBarBehavior.floating,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(24),
                                        ),
                                        margin: EdgeInsets.only(
                                            bottom: MediaQuery.of(context)
                                                    .size
                                                    .height -
                                                100,
                                            right: 20,
                                            left: 20),
                                      ));
                                Navigator.pop(context);
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            );
          }),
        );
      }),
      clipBehavior: Clip.antiAliasWithSaveLayer, //what doese it do
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25),
        ),
      ),
    );
  }

  void _addToDoItem(String todo) {
    setState(() {
      todoList.add(
        ToDo(
            id: DateTime.now().millisecondsSinceEpoch.toString(),
            todotask: todo), //required todoNote
      );
    });
    _todoController.clear();
  }

  void _handleToDoChange(ToDo todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }

  void _runFilter(String enteredKeyword) {
    List<ToDo> result = [];
    if (enteredKeyword.isEmpty) {
      result = todoList;
    } else {
      result = todoList
          .where(
            (item) => item.todotask!.toLowerCase().contains(
                  enteredKeyword.toLowerCase(),
                ),
          )
          .toList();
    }
    setState(() {
      _foundToDo = result;
    });
  }

  Widget searchBox() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0),
            prefixIcon: Icon(
              Icons.search,
              color: tdBlack,
              size: 20,
            ),
            prefixIconConstraints: BoxConstraints(
              maxHeight: 20,
              minWidth: 25,
            ),
            border: InputBorder.none,
            hintText: 'Search'),
        onChanged: (value) => _runFilter(value),
      ),
    );
  }
}

AppBar _buildAppBar() {
  return AppBar(
    elevation: 0, //removing drop shadow
    backgroundColor: tdBGColor,
    centerTitle: true,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.menu,
          color: tdBlack,
          size: 30,
        ),
        // Container(
        //   height: 40,
        //   width: 40,
        //   child: ClipRRect(
        //     child: Image.asset('assets/images/woman.png'),
        //   ),
        // )
      ],
    ),
  );
}
