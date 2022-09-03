import 'package:flutter/material.dart';

import '../models/to_do_model.dart';

class ToDoHelper with ChangeNotifier{
  List<TaskModel> tasks =[];
  List<bool> isChecked = [];

  int count = 0;

  void addTask(String taskName){
    tasks.add(TaskModel(taskName: taskName));
    isChecked.add(false);
    count++;
    notifyListeners();
  }

  void removeTask(int index){
    tasks.removeAt(index);
    isChecked.removeAt(index);
    count--;
    notifyListeners();
  }

  void changeTaskState(int index){
    tasks[index].isDone = !tasks[index].isDone;
    isChecked[index]= !isChecked[index];
    notifyListeners();
  }
}