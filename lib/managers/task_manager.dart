import '../models/task.dart';

class TaskManager {
  List<Task> tasks = [];

  void addTask(String title, String description) {
    tasks.add(Task(title, description));
  }

  void removeTask(int index) {
    if (index >= 0 && index < tasks.length) {
      tasks.removeAt(index);
    } else {
      print('Invalid index');
    }
  }

  void markTaskAsCompleted(int index) {
    if (index >= 0 && index < tasks.length) {
      tasks[index].toggleCompleted();
    } else {
      print('Invalid index');
    }
  }

  void showAllTasks() {
    if (tasks.isEmpty) {
      print('No tasks available');
    } else {
      for (int i = 0; i < tasks.length; i++) {
        print('[$i] ${tasks[i]}');
      }
    }
  }
  
  void showCompletedTasks() {
    var completedTasks = tasks.where((task) => task.isCompleted).toList();
    if (completedTasks.isEmpty) {
      print('No completed tasks');
    } else {
      for (int i = 0; i < completedTasks.length; i++) {
        print('[$i] ${completedTasks[i]}');
      }
    }
  }

  void showPendingTasks() {
    var pendingTasks = tasks.where((task) => !task.isCompleted).toList();
    if (pendingTasks.isEmpty) {
      print('No pending tasks');
    } else {
      for (int i = 0; i < pendingTasks.length; i++) {
        print('[$i] ${pendingTasks[i]}');
      }
    }
  }
}
