import 'package:hive_flutter/adapters.dart';

class ToDoDataBase {
  List toDoList = [];

  //Reference the box
  final _myBox = Hive.box('mybox');

  //Run this method if is the first time ever openning this app
  void createInitialData() {
    toDoList = [
      ["Adicione suas tarefas", false],
      ["Arraste para o lado esquerdo para excluir", false],
      ["Marque a caixa para concluir uma tarefa", false],
    ];
  }

  //Load the data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //Update the database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
