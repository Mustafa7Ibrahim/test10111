import 'package:dio/dio.dart';
import 'package:easix/easix.dart';
import 'package:test10111/feature/todos/models/todos_model.dart';

class ToDoSController {
  final Dio dio = Dio();

  Future<List<ToDos>> fetchToDos() async {
    try {
      final response =
          await dio.get('https://jsonplaceholder.typicode.com/todos');
      // you can use it like this
      final todos = getTypeList<ToDos>(
        response.data,
        ToDos.fromJson,
      );
      return todos;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  /// get one todo
  Future<ToDos> fetchOneToDos(int id) async {
    try {
      final response =
          await dio.get('https://jsonplaceholder.typicode.com/todos/$id');
      return ToDos.fromJson(response.data);
    } catch (e) {
      throw Exception('Failed to load todos');
    }
  }
}
