part of 'singletodo_bloc.dart';

final class SingleTodosState extends Equatable {
  const SingleTodosState({
    this.status = TodosStatus.loading,
    this.todo,
    this.error = '',
  });

  final TodosStatus status;
  final ToDos? todo;
  final String error;

  SingleTodosState copyWith({
    TodosStatus? status,
    ToDos? todo,
    String? error,
    bool? isFiltering,
  }) {
    return SingleTodosState(
      status: status ?? this.status,
      error: error ?? this.error,
      todo: todo ?? this.todo,
    );
  }

  @override
  List<Object?> get props => [status, todo, error];
}

enum TodosStatus {
  loading,
  success,
  failure,
}
