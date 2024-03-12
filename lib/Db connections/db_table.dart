import 'package:get/get.dart';
import 'package:student_manage_app/Model/student_model.dart';
import 'package:sqflite/sqflite.dart' as sql;
import 'package:student_manage_app/controllers/student_controller.dart';

class SQLHelper {
  static Future<void> createTables(sql.Database database) async {
    await database.execute(
        'CREATE TABLE user(id INTEGER PRIMARY KEY,  name TEXT, study TEXT, age TEXT, phone TEXT,selectedImage TEXT)');
  }

  static Future<sql.Database> db() async {
    return sql.openDatabase(
      "data.db",
      version: 1,
      onCreate: (sql.Database database, int version) async {
        await createTables(database);
      },
    );
  }

  static Future<int> insertdata(StudentModel studentModel) async {
    final db = await SQLHelper.db();
    final data = {
      "name": studentModel.name,
      'study': studentModel.study,
      "age": studentModel.age,
      "phone": studentModel.phone,
      "selectedImage": studentModel.images,
    };
    final id = await db.insert("user", data,
        conflictAlgorithm: sql.ConflictAlgorithm.replace);
    Get.find<StudentController>().fetchStudents();
    print(id);
    return id;
  }

  static Future<List<Map<String, dynamic>>> getAllData() async {
    print('worked');
    final db = await SQLHelper.db();
    return db.query("user", orderBy: "id");
  }

  static Future<int> updateData(int id, StudentModel studentModel) async {
    print('successfully edited');
    final db = await SQLHelper.db();
    final data = {
      "name": studentModel.name,
      'study': studentModel.study,
      "age": studentModel.age,
      "phone": studentModel.phone,
      "selectedImage": studentModel.images,
    };
    final result =
        await db.update("user", data, where: "id=?", whereArgs: [id]);
    print('updated data $result');
    Get.find<StudentController>().fetchStudents();
    return result;
  }

  static Future<void> deleteData(int id) async {
    final db = await SQLHelper.db();
    db.delete("user", where: "id=?", whereArgs: [id]);
    Get.find<StudentController>().fetchStudents();
  }
}
