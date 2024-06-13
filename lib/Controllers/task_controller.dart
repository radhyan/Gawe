import 'package:gawe/Models/task.dart';
import 'package:gawe/db/db_helper.dart';
import 'package:get/get.dart';

class TaskController extends GetxController{

  @override
  void onReady() {
    super.onReady();
  }

  Future<int>? addTask({Task? task}) async{
    return await DbHelper.insert(task);
  }
}