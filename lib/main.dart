import 'package:tast_manager/managers/task_manager.dart';

void main(){
  TaskManager taskManager = TaskManager();
  //Agregar tareas
  taskManager.addTask("Comprar leche", "Ir al supermercado y comprar leche");
  taskManager.addTask('Estudiar dart', 'Leer el capitulo 4 del libro de dart');

  //Mostrar todas las tareas
  print('Todas las tareas:');
  taskManager.showAllTasks();

  //Marcar la primera tarea como completada
  taskManager.markTaskAsCompleted(0);

  //mostrar tareas completadas
  print('\nTareas completadas: ');
  taskManager.showCompletedTasks();

  // mostrar tareas pendientes
  print('\nTareas pendientes');
  taskManager.showPendingTasks();

  //eliminar una tarea
  taskManager.removeTask(1);

  //mostrar todas las tareas despues de eliminar una
  print('\nTodas las tareas despues de eliminar una: ');
  taskManager.showAllTasks();
}