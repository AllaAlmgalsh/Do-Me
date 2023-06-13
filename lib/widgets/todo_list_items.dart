import 'package:do_me/cnstants/colors.dart';
import 'package:flutter/material.dart';
import 'package:test_api/hooks.dart';
import '../standard/todo.dart';

class ToDoItem extends StatefulWidget {
  final ToDo todo;
  final onToDoChanged;
  final onDeleteItem;

  ToDoItem(
      {Key? key,
      required this.todo,
      required this.onDeleteItem,
      required this.onToDoChanged})
      : super(key: key);

  @override
  State<ToDoItem> createState() => _ToDoItemState();
}

class _ToDoItemState extends State<ToDoItem> {
  final _editToDoController = TextEditingController();

  String todovalue = '';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(top: 20),
        child: ListTile(
          onTap: () {
            setState(() {
              // todovalue = _todoText.text;
            });
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          tileColor: Colors.white,
          leading: Icon(
            widget.todo.isDone
                ? Icons.check_box
                : Icons.check_box_outline_blank,
            color: tdBlue,
          ),
          title: Text(
            widget.todo.todotask!,
            style: TextStyle(
              fontSize: 16,
              color: tdBlack,
              decoration:
                  widget.todo.isDone ? TextDecoration.lineThrough : null,
            ),
          ),
          trailing: Container(
            padding: EdgeInsets.all(0),
            margin: EdgeInsets.symmetric(vertical: 12, horizontal: 5),
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(50),
            ),
            child: IconButton(
              color: Colors.white,
              iconSize: 18,
              icon: Icon(Icons.delete),
              onPressed: () {
                widget.onDeleteItem(widget.todo.id);
              },
            ),
          ),
        ),
      ),
      onLongPress: () {
        widget.onToDoChanged(widget.todo);
      },
    );
  }
}



// showMenu(
//           items: <PopupMenuEntry>[
//             PopupMenuItem(
//               child: Row(
//                 children: <Widget>[
//                   IconButton(
//                     color: const Color.fromARGB(255, 235, 9, 9),
//                     iconSize: 20,
//                     icon: Icon(Icons.edit),
//                     onPressed: () => showDialog<String>(
//                       context: context,
//                       builder: (BuildContext context) => AlertDialog(
//                         title: const Text('AlertDialog Title'),
//                         content: const Text('AlertDialog description'),
//                         actions: <Widget>[
//                           TextButton(
//                             onPressed: () => Navigator.pop(context, 'Cancel'),
//                             child: const Text(
//                               'Cancel',
//                               style: TextStyle(color: tdBlue),
//                             ),
//                           ),
//                           TextButton(
//                             onPressed: () => Navigator.pop(context, 'OK'),
//                             child: const Text(
//                               'OK',
//                               style: TextStyle(color: tdBlue),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             )
//           ],
//           context: context,
//           position: RelativeRect.fromSize(
//             Rect.fromCenter(center: Offset.zero, width: 100, height: 100),
//             Size(100, 100),
//           ),
//         );



//  showMenu(
//               items: <PopupMenuEntry>[
//                 PopupMenuItem(
//                   child: Row(
//                     children: <Widget>[
//                       IconButton(
//                         color: const Color.fromARGB(255, 235, 9, 9),
//                         iconSize: 20,
//                         icon: Icon(Icons.edit),
//                         onPressed: () => showDialog<String>(
//                           context: context,
//                           builder: (BuildContext context) => AlertDialog(
//                             title: const Text('AlertDialog Title'),
//                             content: ,
//                             actions: <Widget>[
//                               TextButton(
//                                 onPressed: () =>
//                                     Navigator.pop(context, 'Cancel'),
//                                 child: const Text(
//                                   'Cancel',
//                                   style: TextStyle(color: tdBlue),
//                                 ),
//                               ),
//                               TextButton(
//                                 onPressed: () => Navigator.pop(context, 'OK'),
//                                 child: const Text(
//                                   'OK',
//                                   style: TextStyle(color: tdBlue),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//               context: context,
//               position: RelativeRect.fromSize(
//                 Rect.fromCenter(center: Offset.zero, width: 100, height: 100),
//                 Size(100, 100),
//               ),
//             );