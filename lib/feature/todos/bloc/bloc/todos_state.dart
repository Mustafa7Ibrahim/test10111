part of 'todos_bloc.dart';

final class TodosState extends Equatable {
  const TodosState({
    this.status = TodosStatus.loading,
    this.todos = const <ToDos>[],
    this.error = '',
    this.isFiltering = false,
  });

  final TodosStatus status;
  final List<ToDos> todos;
  final String error;
  final bool isFiltering;

  TodosState copyWith({
    TodosStatus? status,
    List<ToDos>? todos,
    String? error,
    bool? isFiltering,
  }) {
    return TodosState(
      status: status ?? this.status,
      todos: todos ?? this.todos,
      error: error ?? this.error,
      isFiltering: isFiltering ?? this.isFiltering,
    );
  }

  @override
  List<Object?> get props => [status, todos, error, isFiltering];
}

enum TodosStatus {
  loading,
  success,
  failure,
}
