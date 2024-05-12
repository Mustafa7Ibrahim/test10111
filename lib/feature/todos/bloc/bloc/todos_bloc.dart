import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:test10111/feature/todos/controllers/todos_controller.dart';
import 'package:test10111/feature/todos/models/todos_model.dart';

part 'todos_event.dart';
part 'todos_state.dart';

class TodosBloc extends Bloc<TodosEvent, TodosState> {
  TodosBloc() : super(const TodosState()) {
    on<TodosEvent>(
      (event, emit) async {
        if (event is FetchTodos) {
          await fetchToDos(event: event, emit: emit);
        } else if (event is FilterTodos) {
          await filterToDos(event: event, emit: emit);
        }
      },
    );
  }

  final ToDoSController _toDosController = ToDoSController();
  final List<ToDos> todosList = [];

  /// fetch all todos
  Future<void> fetchToDos({event, emit}) async {
    try {
      final todos = await _toDosController.fetchToDos();
      todosList.addAll(todos);
      emit(state.copyWith(
        status: TodosStatus.success,
        todos: todos,
      ));
    } catch (e) {
      emit(
        state.copyWith(
          status: TodosStatus.failure,
          error: e.toString(),
        ),
      );
    }
  }

  // fetch one todo

  Future<void> fetchOneToDos({event, emit}) async {
    try {
      final todo = await _toDosController.fetchOneToDos(event.id);
      emit(state.copyWith(
        status: TodosStatus.success,
        todos: [todo],
      ));
    } catch (e) {
      emit(state.copyWith(status: TodosStatus.failure));
    }
  }

  // filter todos
  Future<void> filterToDos({event, emit}) async {
    if (state.isFiltering == false) {
      emit(
        state.copyWith(
          todos: List.from(
            state.todos.where((todo) => todo.completed).toList(),
          ),
          isFiltering: true,
        ),
      );
      log('filtered');
    } else {
      emit(
        state.copyWith(todos: List.from(todosList), isFiltering: false),
      );
      log('unfiltered');
    }
  }
}
