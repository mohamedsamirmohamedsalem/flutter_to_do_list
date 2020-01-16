class TaskModel {
  String taskName;
  bool isDone;
  TaskModel({this.taskName, this.isDone = false});
  void toogleDone() {
    isDone != isDone;
  }
}
