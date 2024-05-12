import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test10111/feature/single_todo/views/single_todo_screen.dart';
import 'package:test10111/feature/todos/bloc/bloc/todos_bloc.dart';

class TodosScreen extends StatelessWidget {
  const TodosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodosBloc()..add(const FetchTodos()),
      child: BlocBuilder<TodosBloc, TodosState>(
        builder: (context, state) {
          if (state.status == TodosStatus.loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.status == TodosStatus.failure) {
            return Center(
              child: Text(state.error),
            );
          }
          final todos = state.todos;
          return Scaffold(
            appBar: AppBar(
              title: const Text('Todos'),
              actions: [
                IconButton(
                  icon: const Icon(Icons.filter_alt_sharp),
                  onPressed: () {
                    context.read<TodosBloc>().add(const FilterTodos());
                  },
                ),
              ],
            ),
            body: BlocBuilder<TodosBloc, TodosState>(
              builder: (context, state) {
                return ListView.builder(
                  itemCount: todos.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SingleTodo(
                            id: todos[index].id,
                          ),
                        ),
                      ),
                      title: Text(todos[index].title),
                      leading: todos[index].completed
                          ? const Icon(Icons.check_box)
                          : const Icon(Icons.check_box_outline_blank),
                    );
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}
