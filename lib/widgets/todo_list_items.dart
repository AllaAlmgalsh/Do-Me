// import 'package:do_me/cnstants/colors.dart';
// import 'package:flutter/material.dart';
// import 'package:test_api/hooks.dart';
// import '../standard/todo.dart';
//
// class ToDoItem extends StatefulWidget {
//   final ToDo todo;
//   final onToDoChanged;
//   final onDeleteItem;
//
//   ToDoItem(
//       {Key? key,
//       required this.todo,
//       required this.onDeleteItem,
//       required this.onToDoChanged})
//       : super(key: key);
//
//   @override
//   State<ToDoItem> createState() => _ToDoItemState();
// }
//
// class _ToDoItemState extends State<ToDoItem> {
//   final _editToDoController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       child: Container(
//         margin: EdgeInsets.only(top: 20),
//         child: ListTile(
//           onTap: () {
//             setState(() {
//               widget.onToDoChanged(widget.todo);
//             });
//           },
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(20),
//           ),
//           contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
//           tileColor: Colors.white,
//           leading: Icon(
//             widget.todo.isDone
//                 ? Icons.check_box
//                 : Icons.check_box_outline_blank,
//             color: tdBlue,
//           ),
//           title: Text(
//             widget.todo.todoTitle!,
//             style: TextStyle(
//               fontSize: 16,
//               color: tdBlack,
//               decoration:
//                   widget.todo.isDone ? TextDecoration.lineThrough : null,
//             ),
//           ),
//           trailing: Container(
//             padding: EdgeInsets.all(0),
//             margin: EdgeInsets.symmetric(vertical: 12, horizontal: 5),
//             width: 35,
//             height: 35,
//             decoration: BoxDecoration(
//               color: Colors.amber,
//               borderRadius: BorderRadius.circular(50),
//             ),
//             child: IconButton(
//               color: Colors.white,
//               iconSize: 18,
//               icon: Icon(Icons.delete),
//               onPressed: () {
//                 widget.onDeleteItem(widget.todo.id);
//               },
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
//
