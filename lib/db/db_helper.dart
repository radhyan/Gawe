import 'package:gawe/Models/task.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

class DbHelper{
  static Database? _db;
  static final int _version = 1;
  static final String _tableName="tasks";

  static Future<void> initDB()async{
    if (_db != null) {
      return;
    } try {
      String _path = await getDatabasesPath() + 'tasks.db';
      _db = await openDatabase(
        _path, 
        version: _version, 
        onCreate: (db, version){
          print("Creating a new one");
        return db.execute(
        "CREATE TABLE $_tableName(id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, note TEXT, isCompleted INTEGER, date TEXT, startTime TEXT, endTime TEXT, color INTEGER)"
        );
      },
      );
      } catch (e) {
        print(e);
      }
  }
  static Future<int> insert(Task? task) async {
    print("insert function called");
    return await _db?.insert(_tableName, task!.toJson())??1;
  }
}