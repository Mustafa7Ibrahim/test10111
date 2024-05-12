import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test10111/feature/bloc/singletodo_bloc.dart';

class SingleTodo extends StatelessWidget {
  const SingleTodo({super.key, required this.id});
  final int id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SingletodoBloc()..add(FetchSingleTodo(id: id)),
      child: BlocBuilder<SingletodoBloc, SingleTodosState>(
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
          return Scaffold(
            appBar: AppBar(
              title: const Text('Single Todo'),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(state.todo!.title),
                  Icon(
                    state.todo!.completed
                        ? Icons.check_box
                        : Icons.check_box_outline_blank,
                    size: 50,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
