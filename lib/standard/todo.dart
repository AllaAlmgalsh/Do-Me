import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

@immutable
class ToDo extends Equatable {
  String? id;
  String? todotask;
  String? todoNote;
  bool isDone;
  ToDo({
    required this.id,
    required this.todotask,
     this.todoNote,
    this.isDone = false,
  });
  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todotask: ' fajr salah',todoNote:'at 4:16', isDone: true),
      ToDo(
        id: '02',
        todotask: ' Check out emails!',todoNote:'at 4:16'
      ),
      ToDo(
        id: '03',
        todotask: ' make a Logo for the application',todoNote:'at 4:16'
      ),
      ToDo(id: '04', todotask: ' go to the graduation ',todoNote:'at 4:16', isDone: true),
      ToDo(id: '05', todotask: ' Update the CV',todoNote:'at 4:16' ,isDone: true),
      ToDo(
          id: '06',
          todotask: ' Find out how to start learning spain',todoNote:'at 4:16',
          isDone: true),
      ToDo(id: '07', todotask: ' Read Quran',todoNote:'at 4:16', isDone: true),
    ];
  }

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
