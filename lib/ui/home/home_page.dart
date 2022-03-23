import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_mvvm_template/data/entities/todo_item.dart';
import 'package:riverpod_mvvm_template/ui/controllers/todo_controller.dart';
import 'package:riverpod_mvvm_template/ui/home/home_view_model.dart';
import 'package:riverpod_mvvm_template/ui/widgets/todo_list.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.read(homeVMProvider);
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: HookConsumer(
              builder: (context, ref, child) {
                final todos = ref.read(todoControllerProvider);
                return TodoList(todos: todos);
              },
            ),
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  onChanged: (String content) => vm.setContent(content),
                ),
              ),
              ElevatedButton(
                onPressed: () => vm.addNewTodo(),
                child: Text("Add"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
