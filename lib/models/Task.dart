class Task{
  String title;
  String description;
  bool isCompleted;

  Task(this.title,this.description): isCompleted=false;

  void toggleCompleted(){
    isCompleted = !isCompleted;
  }

  @override
  String toString(){
    return 'Title: $title, Description: $description, Completed: $isCompleted';
  }
}