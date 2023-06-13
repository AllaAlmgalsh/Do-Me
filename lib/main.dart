import 'package:do_me/screens/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/todo_list_items.dart';

// in this application you can add, delete, search notes.
void main() {
  runApp(Do_Me());
  //
}

class Do_Me extends StatelessWidget {
  const Do_Me({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
