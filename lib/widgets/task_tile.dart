import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../bloc/bloc_exports.dart';
import 'package:do_me/standard/todo.dart';
import '../cnstants/colors.dart';
import '../screens/edit_task_screen.dart';
import 'popup_menu.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    Key? key,
    required this.task,
  }) : super(key: key);

  final ToDo task;

  void _removeOrDeleteTask(BuildContext context, ToDo task) {
    task.isDeleted!
        ? context.read<TasksBloc>().add(DeleteTask(task: task))
        : context.read<TasksBloc>().add(RemoveTask(task: task));
  }

  void _editTask(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        isScrollControlled: true,
        builder: ((context) {
          return SingleChildScrollView(
            child: Container(
              padding:
                  EdgeInsets.only(bottom: MediaQuery.of(ctx).viewInsets.bottom),
              child: EditTaskScreen(oldTask: task),
            ),
          );
        }));
  }

  @override
  Widget build(BuildContext ctx) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Row(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                task.isFavorite == false
                    ? const Icon(Icons.star_outline,color: Colors.amber,)
                    : const Icon(Icons.star,color: Colors.amber,),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(task.todoTitle,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 18,
                              decoration: task.isDone!
                                  ? TextDecoration.lineThrough
                                  : null)),
                      Text(DateFormat()
                          .add_yMMMd()
                          .add_Hms()
                          .format(DateTime.parse(task.date))),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Checkbox(
                value: task.isDone,
                onChanged: task.isDeleted == false
                    ? (value) {
                        ctx.read<TasksBloc>().add(UpdateTask(task: task));
                      }
                    : null,
              ),
              PopupMenu(
                cancelOrDeleteCallback: () => _removeOrDeleteTask(ctx, task),
                task: task,
                likeOrDislikeCallback: () => ctx
                    .read<TasksBloc>()
                    .add(MarkFavoriteOrUnFavoriteTask(task: task)),
                editTaskCallback: () {
                  Navigator.of(ctx).pop();
                  _editTask(ctx);
                },
                restoreTaskCallback: () =>
                    ctx.read<TasksBloc>().add(RestoreTask(task: task)),
              )
            ],
          )
        ],
      ),
    );
  }
}
