import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_mvvm_template/data/entities/todo_item.dart';
import 'package:riverpod_mvvm_template/ui/controllers/todo_controller.dart';
import 'package:riverpod_mvvm_template/ui/widgets/todo_item.dart';

class TodoList extends HookConsumerWidget {
  const TodoList({Key? key, this.todos}) : super(key: key);
  final List<TodoItem>? todos;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final test = ref.watch(todoControllerProvider);
    return HookConsumer(
      builder: (context, ref, child) {
        final todos = ref.watch(todoControllerProvider);
        return ListView.builder(
          itemCount: todos.length,
          itemBuilder: (ctx, i) {
            return TodoListItem(
              item: todos[i],
              id: i + 1,
            );
          },
        );
      },
    );
  }
}
