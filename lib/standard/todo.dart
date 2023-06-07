class ToDo {
  String? id;
  String? todoText;
  bool isDone;
  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });
  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: ' fajr salah', isDone: true),
      ToDo(
        id: '02',
        todoText: ' Check out emails!',
      ),
      ToDo(
        id: '03',
        todoText: ' make a Logo for the application',
      ),
      ToDo(id: '04', todoText: ' go to the graduation ', isDone: true),
      ToDo(id: '05', todoText: ' Update the CV', isDone: true),
      ToDo(
          id: '06',
          todoText: ' Find out how to start learning spain',
          isDone: true),
      ToDo(id: '07', todoText: ' Read Quran', isDone: true),
    ];
  }
}
