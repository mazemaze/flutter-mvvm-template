import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_mvvm_template/data/entities/todo_item.dart';
import 'package:riverpod_mvvm_template/ui/controllers/todo_controller.dart';

class TodoListItem extends HookConsumerWidget {
  const TodoListItem({this.id, Key? key, this.item, this.callback})
      : super(key: key);
  final TodoItem? item;
  final VoidCallback? callback;
  final int? id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      title: Text(id.toString()),
      subtitle: Text(item!.cotent),
      trailing: Checkbox(
        onChanged: (value) =>
            ref.read(todoControllerProvider.notifier).toggle(item!.id, value!),
        value: item!.isDone,
      ),
    );
  }
}
