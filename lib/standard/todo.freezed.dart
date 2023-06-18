// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ToDo _$ToDoFromJson(Map<String, dynamic> json) {
  return _ToDo.fromJson(json);
}

/// @nodoc
mixin _$ToDo {
  String get id => throw _privateConstructorUsedError;
  String get todoTitle => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  bool? get isDone => throw _privateConstructorUsedError;
  bool? get isDeleted => throw _privateConstructorUsedError;
  bool? get isFavorite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToDoCopyWith<ToDo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToDoCopyWith<$Res> {
  factory $ToDoCopyWith(ToDo value, $Res Function(ToDo) then) =
      _$ToDoCopyWithImpl<$Res, ToDo>;
  @useResult
  $Res call(
      {String id,
      String todoTitle,
      String description,
      String date,
      bool? isDone,
      bool? isDeleted,
      bool? isFavorite});
}

/// @nodoc
class _$ToDoCopyWithImpl<$Res, $Val extends ToDo>
    implements $ToDoCopyWith<$Res> {
  _$ToDoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? todoTitle = null,
    Object? description = null,
    Object? date = null,
    Object? isDone = freezed,
    Object? isDeleted = freezed,
    Object? isFavorite = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      todoTitle: null == todoTitle
          ? _value.todoTitle
          : todoTitle // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      isDone: freezed == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ToDoCopyWith<$Res> implements $ToDoCopyWith<$Res> {
  factory _$$_ToDoCopyWith(_$_ToDo value, $Res Function(_$_ToDo) then) =
      __$$_ToDoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String todoTitle,
      String description,
      String date,
      bool? isDone,
      bool? isDeleted,
      bool? isFavorite});
}

/// @nodoc
class __$$_ToDoCopyWithImpl<$Res> extends _$ToDoCopyWithImpl<$Res, _$_ToDo>
    implements _$$_ToDoCopyWith<$Res> {
  __$$_ToDoCopyWithImpl(_$_ToDo _value, $Res Function(_$_ToDo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? todoTitle = null,
    Object? description = null,
    Object? date = null,
    Object? isDone = freezed,
    Object? isDeleted = freezed,
    Object? isFavorite = freezed,
  }) {
    return _then(_$_ToDo(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      todoTitle: null == todoTitle
          ? _value.todoTitle
          : todoTitle // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      isDone: freezed == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ToDo with DiagnosticableTreeMixin implements _ToDo {
  const _$_ToDo(
      {required this.id,
      required this.todoTitle,
      required this.description,
      required this.date,
      this.isDone,
      this.isDeleted,
      this.isFavorite});

  factory _$_ToDo.fromJson(Map<String, dynamic> json) => _$$_ToDoFromJson(json);

  @override
  final String id;
  @override
  final String todoTitle;
  @override
  final String description;
  @override
  final String date;
  @override
  final bool? isDone;
  @override
  final bool? isDeleted;
  @override
  final bool? isFavorite;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ToDo(id: $id, todoTitle: $todoTitle, description: $description, date: $date, isDone: $isDone, isDeleted: $isDeleted, isFavorite: $isFavorite)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ToDo'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('todoTitle', todoTitle))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('isDone', isDone))
      ..add(DiagnosticsProperty('isDeleted', isDeleted))
      ..add(DiagnosticsProperty('isFavorite', isFavorite));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ToDo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.todoTitle, todoTitle) ||
                other.todoTitle == todoTitle) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.isDone, isDone) || other.isDone == isDone) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, todoTitle, description, date,
      isDone, isDeleted, isFavorite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ToDoCopyWith<_$_ToDo> get copyWith =>
      __$$_ToDoCopyWithImpl<_$_ToDo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ToDoToJson(
      this,
    );
  }
}

abstract class _ToDo implements ToDo {
  const factory _ToDo(
      {required final String id,
      required final String todoTitle,
      required final String description,
      required final String date,
      final bool? isDone,
      final bool? isDeleted,
      final bool? isFavorite}) = _$_ToDo;

  factory _ToDo.fromJson(Map<String, dynamic> json) = _$_ToDo.fromJson;

  @override
  String get id;
  @override
  String get todoTitle;
  @override
  String get description;
  @override
  String get date;
  @override
  bool? get isDone;
  @override
  bool? get isDeleted;
  @override
  bool? get isFavorite;
  @override
  @JsonKey(ignore: true)
  _$$_ToDoCopyWith<_$_ToDo> get copyWith => throw _privateConstructorUsedError;
}
