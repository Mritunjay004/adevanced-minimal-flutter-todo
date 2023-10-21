import 'package:hive/hive.dart';

class ToDoDatabase {
  List toDoList = [];

  final _myBox = Hive.box('mybox');

  void createInitialList() {
    toDoList = [
      ["Buy milk", false],
      ["Buy eggs", false],
      ["Buy bread", false],
    ];
  }

  void loadData() {
    toDoList = _myBox.get('todolist');
  }

  void updateData() {
    _myBox.put('todolist', toDoList);
  }
}
