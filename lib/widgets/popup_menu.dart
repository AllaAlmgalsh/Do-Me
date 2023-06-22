// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:do_me/cnstants/colors.dart';
import 'package:flutter/material.dart';


import 'package:do_me/models/todo.dart';

class PopupMenu extends StatelessWidget {
  final ToDo task;
  final VoidCallback cancelOrDeleteCallback;
  final VoidCallback likeOrDislikeCallback;
  final VoidCallback editTaskCallback;
  final VoidCallback restoreTaskCallback;

  const PopupMenu({
    Key? key,
    required this.task,
    required this.cancelOrDeleteCallback,
    required this.likeOrDislikeCallback,
    required this.editTaskCallback,
    required this.restoreTaskCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        itemBuilder: task.isDeleted == false
            ? ((context) => [
                  PopupMenuItem(
                      onTap: null,
                      child: TextButton.icon(
                          onPressed: editTaskCallback,
                          icon: const Icon(Icons.edit,color: tdBlue,),
                          label: const Text('Edit'))),
                  PopupMenuItem(
                    onTap: likeOrDislikeCallback,
                    child: TextButton.icon(
                        onPressed: null,
                        icon: task.isFavorite == false
                            ? const Icon(Icons.star_border_outlined,color: Colors.amber,)
                            : const Icon(Icons.star),
                        label: task.isFavorite == false
                            ? const Text('Add to favorites')
                            : const Text('Remove from favorites')),
                  ),
                  PopupMenuItem(
                      onTap: cancelOrDeleteCallback,
                      child: TextButton.icon(
                          onPressed: null,
                          icon: const Icon(Icons.delete,color: tdRed,),
                          label: const Text('Delete')))
                ])
            : (context) => [
                  PopupMenuItem(
                      onTap: restoreTaskCallback,
                      child: TextButton.icon(
                          onPressed: null,
                          icon: const Icon(Icons.restore_from_trash,color: Colors.amber,),
                          label: const Text('Restore'))),
                  PopupMenuItem(
                    child: TextButton.icon(
                        onPressed: null,
                        icon: const Icon(Icons.delete_forever,color: tdRed,),
                        label: const Text('Delete Forever')),
                    onTap: cancelOrDeleteCallback,
                  )
                ]);
  }
}
