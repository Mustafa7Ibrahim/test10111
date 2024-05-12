part of 'singletodo_bloc.dart';

class SingleTodoEvent {
  const SingleTodoEvent();
}

class FetchSingleTodo extends SingleTodoEvent {
  const FetchSingleTodo({required this.id});
  final int id;
}
