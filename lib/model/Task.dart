class Task {
  String Name;
  bool isDone;
  Task({this.Name, this.isDone = false});
  void toogleDone() {
    isDone = !isDone;
  }
}
