part of 'todos_bloc.dart';

class TodosEvent {
  const TodosEvent();
}

class FetchTodos extends TodosEvent {
  const FetchTodos();
}

class FilterTodos extends TodosEvent {
  const FilterTodos({required});
}
