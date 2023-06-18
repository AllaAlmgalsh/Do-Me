part of 'tasks_bloc.dart';

class TasksState extends Equatable {
  final List<ToDo> pendingTasks;
  final List<ToDo> completedTasks;
  final List<ToDo> favoriteTasks;
  final List<ToDo> removedTasks;

  const TasksState({
    this.pendingTasks = const <ToDo>[],
    this.completedTasks = const <ToDo>[],
    this.favoriteTasks = const <ToDo>[],
    this.removedTasks = const <ToDo>[],
  });

  @override
  List<Object> get props => [
        pendingTasks,
        completedTasks,
        favoriteTasks,
        removedTasks,
      ];

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pendingTasks': pendingTasks.map((x) => x.toJson()).toList(),
      'completedTasks': pendingTasks.map((x) => x.toJson()).toList(),
      'favoriteTasks': pendingTasks.map((x) => x.toJson()).toList(),
      'removedTasks': pendingTasks.map((x) => x.toJson()).toList(),
    };
  }

  factory TasksState.fromMap(Map<String, dynamic> map) {
    return TasksState(
      pendingTasks: List<ToDo>.from(
        (map['pendingTasks'])?.map<ToDo>(
          (x) => ToDo.fromJson(x),
        ),
      ),
      completedTasks: List<ToDo>.from(
        (map['completedTasks'])?.map<ToDo>(
          (x) => ToDo.fromJson(x),
        ),
      ),
      favoriteTasks: List<ToDo>.from(
        (map['favoriteTasks'])?.map<ToDo>(
          (x) => ToDo.fromJson(x),
        ),
      ),
      removedTasks: List<ToDo>.from(
        (map['removedTasks'])?.map<ToDo>(
          (x) => ToDo.fromJson(x),
        ),
      ),
    );
  }
}
