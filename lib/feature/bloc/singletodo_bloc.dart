import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:test10111/feature/todos/controllers/todos_controller.dart';
import 'package:test10111/feature/todos/models/todos_model.dart';

part 'singletodo_event.dart';
part 'singletodo_state.dart';

class SingletodoBloc extends Bloc<SingleTodoEvent, SingleTodosState> {
  SingletodoBloc() : super(const SingleTodosState()) {
    on<SingleTodoEvent>(
      (event, emit) async {
        if (event is FetchSingleTodo) {
          await fetchOneToDos(event, emit);
        }
      },
    );
  }

  final ToDoSController _toDosController = ToDoSController();

  Future<void> fetchOneToDos(FetchSingleTodo event, emit) async {
    try {
      final todo = await _toDosController.fetchOneToDos(event.id);
      emit(state.copyWith(
        status: TodosStatus.success,
        todo: todo,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: TodosStatus.failure,
        error: e.toString(),
      ));
    }
  }
}
