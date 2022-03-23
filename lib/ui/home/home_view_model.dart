import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_mvvm_template/data/entities/todo_item.dart';
import 'package:riverpod_mvvm_template/ui/controllers/todo_controller.dart';

final homeVMProvider = ChangeNotifierProvider((ref) => HomeViewModel(ref.read));

class HomeViewModel with ChangeNotifier {
  String? _content;
  final Reader _reader;

  HomeViewModel(this._reader);

  void setContent(String content) {
    _content = content;
    notifyListeners();
  }

  void addNewTodo() {
    TodoItem todo = TodoItem(
      id: DateTime.now().microsecondsSinceEpoch.toString(),
      cotent: _content ?? "",
    );
    _reader(todoControllerProvider.notifier).addTodos(todo);
    notifyListeners();
  }
}
