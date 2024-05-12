// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todos_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ToDos _$ToDosFromJson(Map<String, dynamic> json) {
  return _ToDos.fromJson(json);
}

/// @nodoc
mixin _$ToDos {
  int get userId => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToDosCopyWith<ToDos> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToDosCopyWith<$Res> {
  factory $ToDosCopyWith(ToDos value, $Res Function(ToDos) then) =
      _$ToDosCopyWithImpl<$Res, ToDos>;
  @useResult
  $Res call({int userId, int id, String title, bool completed});
}

/// @nodoc
class _$ToDosCopyWithImpl<$Res, $Val extends ToDos>
    implements $ToDosCopyWith<$Res> {
  _$ToDosCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? id = null,
    Object? title = null,
    Object? completed = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ToDosImplCopyWith<$Res> implements $ToDosCopyWith<$Res> {
  factory _$$ToDosImplCopyWith(
          _$ToDosImpl value, $Res Function(_$ToDosImpl) then) =
      __$$ToDosImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userId, int id, String title, bool completed});
}

/// @nodoc
class __$$ToDosImplCopyWithImpl<$Res>
    extends _$ToDosCopyWithImpl<$Res, _$ToDosImpl>
    implements _$$ToDosImplCopyWith<$Res> {
  __$$ToDosImplCopyWithImpl(
      _$ToDosImpl _value, $Res Function(_$ToDosImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? id = null,
    Object? title = null,
    Object? completed = null,
  }) {
    return _then(_$ToDosImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ToDosImpl implements _ToDos {
  _$ToDosImpl(this.userId, this.id, this.title, this.completed);

  factory _$ToDosImpl.fromJson(Map<String, dynamic> json) =>
      _$$ToDosImplFromJson(json);

  @override
  final int userId;
  @override
  final int id;
  @override
  final String title;
  @override
  final bool completed;

  @override
  String toString() {
    return 'ToDos(userId: $userId, id: $id, title: $title, completed: $completed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToDosImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, id, title, completed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToDosImplCopyWith<_$ToDosImpl> get copyWith =>
      __$$ToDosImplCopyWithImpl<_$ToDosImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ToDosImplToJson(
      this,
    );
  }
}

abstract class _ToDos implements ToDos {
  factory _ToDos(final int userId, final int id, final String title,
      final bool completed) = _$ToDosImpl;

  factory _ToDos.fromJson(Map<String, dynamic> json) = _$ToDosImpl.fromJson;

  @override
  int get userId;
  @override
  int get id;
  @override
  String get title;
  @override
  bool get completed;
  @override
  @JsonKey(ignore: true)
  _$$ToDosImplCopyWith<_$ToDosImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
