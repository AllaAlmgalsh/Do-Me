// ignore_for_file: public_member_api_docs, sort_constructors_first
  import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
  class ToDo extends Equatable {
  final String id;
  final String todoTitle;
  final String description;
  final String date;
  bool? isDone;
  bool? isDeleted;
  bool? isFavorite;

  ToDo({
  required this.id,
  required this.todoTitle,
  required this.description,
  required this.date,
  this.isDone,
  this.isDeleted,
  this.isFavorite,
  }) {
  isDone = isDone ?? false;
  isDeleted = isDeleted ?? false;
  isFavorite = isFavorite ?? false;
  }

  @override
  List<Object?> get props => [
  id,
    todoTitle,
  date,
  description,
  isDeleted,
  isDone,
  isFavorite,
  ];

  Map<String, dynamic> toMap() {
  return <String, dynamic>{
  'id': id,
  'title': todoTitle,
  'description': description,
  'date': date,
  'isDone': isDone,
  'isDeleted': isDeleted,
  'isFavorite': isFavorite,
  };
  }

  ToDo copyWith({
  String? id,
  String? todoTitle,
  String? description,
  String? date,
  bool? isDone,
  bool? isDeleted,
  bool? isFavorite,
  }) {
  return ToDo(
  id: id ?? this.id,
    todoTitle: todoTitle ?? this.todoTitle,
  description: description ?? this.description,
  date: date ?? this.date,
  isDone: isDone ?? this.isDone,
  isDeleted: isDeleted ?? this.isDeleted,
  isFavorite: isFavorite ?? this.isFavorite,
  );
  }

  factory ToDo.fromMap(Map<String, dynamic> map) {
  return ToDo(
  id: map['id'] as String,
    todoTitle: map['title'] as String,
  description: map['description'] as String,
  date: map['date'] as String,
  isDone: map['isDone'] != null ? map['isDone'] as bool : null,
  isDeleted: map['isDeleted'] != null ? map['isDeleted'] as bool : null,
  isFavorite: map['isFavorite'] != null ? map['isFavorite'] as bool : null,
  );
  }
  }
