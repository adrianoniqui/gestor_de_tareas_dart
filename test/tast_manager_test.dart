import 'package:test/test.dart';
import '../lib/managers/task_manager.dart';

void main() {
  group('TaskManager', () {
    test('addTask adds a task to the list', () {
      final taskManager = TaskManager();
      taskManager.addTask('Test Task', 'This is a test');

      expect(taskManager.tasks.length, 1);
      expect(taskManager.tasks[0].title, 'Test Task');
    });

    test('removeTask removes a task from the list', () {
      final taskManager = TaskManager();
      taskManager.addTask('Test Task', 'This is a test');
      taskManager.removeTask(0);

      expect(taskManager.tasks.length, 0);
    });

    test('markTaskAsCompleted toggles the completion status of a task', () {
      final taskManager = TaskManager();
      taskManager.addTask('Test Task', 'This is a test');
      taskManager.markTaskAsCompleted(0);

      expect(taskManager.tasks[0].isCompleted, true);
    });

    test('showAllTasks prints all tasks', () {
      final taskManager = TaskManager();
      taskManager.addTask('Test Task 1', 'This is a test 1');
      taskManager.addTask('Test Task 2', 'This is a test 2');

      taskManager.showAllTasks();
    });

    test('showCompletedTasks prints only completed tasks', () {
      final taskManager = TaskManager();
      taskManager.addTask('Test Task 1', 'This is a test 1');
      taskManager.addTask('Test Task 2', 'This is a test 2');
      taskManager.markTaskAsCompleted(0);

      taskManager.showCompletedTasks();
    });

    test('showPendingTasks prints only pending tasks', () {
      final taskManager = TaskManager();
      taskManager.addTask('Test Task 1', 'This is a test 1');
      taskManager.addTask('Test Task 2', 'This is a test 2');
      taskManager.markTaskAsCompleted(0);

      taskManager.showPendingTasks();
    });
  });
}
