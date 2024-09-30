class Task{
  int title;
  String description;
  bool isCompleted=false;
  Task({required this.title, required this.description}){
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
  taskList.add(Task(title: 1,description: 'will sleep for 2 hours'));
  taskList.add(Task(title: 2,description: 'say the first prayer'));
  taskList.add(Task(title: 3,description: 'read 10 pages of the book'));
  taskList.add(Task(title: 4,description: 'go to the bazar'));
  taskList.forEach(Task.displayAllToDo);
}
