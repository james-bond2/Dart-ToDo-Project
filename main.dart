class Task{
  int title;
  String description;
  bool isCompleted;
  Task({required this.title, required this.description, required this.isCompleted}){
    if(isCompleted == true){
      markAsCompleted();
    } else{
      markAsIncomplete();
    }
    title ++;
  }

  static displayAllToDo(Task task){
    print('${task.title}. ${task.description} (${task.isCompleted ? 'complete':'incomplete'})');
  }
  bool markAsCompleted(){
    return isCompleted = true;
  }
  bool markAsIncomplete(){
    return isCompleted = true;
  }
}

main(){
  List <Task> taskList = [];
  taskList.add(Task(title: 1,description: 'will sleep for 2 hours', isCompleted: false));
  taskList.add(Task(title: 2,description: 'say the first prayer', isCompleted: true));
  taskList.add(Task(title: 3,description: 'read 10 pages of the book', isCompleted: false));
  taskList.add(Task(title: 4,description: 'go to the bazar', isCompleted: false));
  taskList.forEach(Task.displayAllToDo);
}