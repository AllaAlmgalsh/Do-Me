import 'package:flutter/material.dart';
import '../services/guid_gen.dart';
import '../bloc/bloc_exports.dart';
import 'package:do_me/standard/todo.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    TextEditingController descriptionController = TextEditingController();
    return Container(

      padding:  EdgeInsets.all(20.0),
      child: Column(
        children: [
          const Text(
            'Add Task',
            style: TextStyle(fontSize: 24),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding:  EdgeInsets.only(top: 10, bottom: 10),
            child: TextField(
              controller: titleController,
              autofocus: true,
              minLines: 1,
              maxLines: 3,
              decoration:  InputDecoration(
                  label: Text("Title"), border: OutlineInputBorder(borderSide: BorderSide(
                  width: 2, color: Colors.amber),
              ),
              ),
            ),
          ),
          TextField(
            controller: descriptionController,
            autofocus: true,
            minLines: 1,
            maxLines: 3,
            decoration:  InputDecoration(
                label: Text("Description"), enabledBorder: OutlineInputBorder( borderSide: BorderSide(
                width: 2, color: Colors.amber),
            ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                  onPressed: (() {
                    Navigator.pop(context);
                  }),
                  child: const Text('Cancel')),
              ElevatedButton( style: ElevatedButton.styleFrom(
                primary: Colors.amber
              ),
                  onPressed: () {
                    var task = ToDo(
                        id: GUIDGen.generate(),
                        todoTitle: titleController.text,
                        description: descriptionController.text,
                        date: DateTime.now().toString());
                    context.read<TasksBloc>().add(AddTask(task: task));
                    Navigator.pop(context);
                  },
                  child: const Text('Add')),
            ],
          ),
        ],
      ),
    );
  }
}
