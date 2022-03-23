import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_mvvm_template/data/entities/todo_item.dart';

var todoControllerProvider =
    StateNotifierProvider<TodoController, List<TodoItem>>(
        (ref) => TodoController(ref.read));

class TodoController extends StateNotifier<List<TodoItem>> {
  final Reader? _reader;
  TodoController(this._reader) : super([]) {
    state = todos;
  }
  List<TodoItem> todos = [
    TodoItem(
        id: DateTime.now().microsecondsSinceEpoch.toString(),
        cotent: "Buy a milk",
        isDone: false)
  ];

  void toggle(String id, bool value) {
    List<TodoItem> _todos = todos
        .map((e) {
          if (e.id == id) {
            final todo = e.copyWith(isDone: value);
            return todo;
          }
          return e;
        })
        .toList()
        .cast<TodoItem>();
    todos = _todos;
    state = _todos;
  }

  void addTodos(TodoItem todo) {
    todos = [...todos, todo];
    state = todos;
  }
}
