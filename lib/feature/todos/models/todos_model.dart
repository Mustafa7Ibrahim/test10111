import 'package:freezed_annotation/freezed_annotation.dart';

part 'todos_model.g.dart';
part 'todos_model.freezed.dart';

@freezed
class ToDos with _$ToDos {
  factory ToDos(
    int userId,
    int id,
    String title,
    bool completed,
  ) = _ToDos;

  factory ToDos.fromJson(Map<String, dynamic> json) => _$ToDosFromJson(json);
}
