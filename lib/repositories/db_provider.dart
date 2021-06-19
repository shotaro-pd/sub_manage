import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:sub_manage/models/Subscription.dart';

class DBProvider {
  DBProvider._();
  static final DBProvider db = DBProvider._();

  static Database _database;

  static final _tableName = "Subscription";

  Future<Database> get database async {
    if (_database != null)
      return _database;

    // DBがなかったら作る
    _database = await initDB();
    return _database;
  }

  Future<Database> initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();

    // import 'package:path/path.dart'; が必要
    // なぜか サジェスチョンが出てこない
    String path = join(documentsDirectory.path, "SubscriptionDB.db");

    return await openDatabase(path, version: 1, onCreate: _createTable);
  }

  Future<void> _createTable(Database db, int version) async {
    return await db.execute(
        "CREATE TABLE Subscription ("
            "id TEXT PRIMARY KEY,"
            "serviceName TEXT,"
            "paymentDate TEXT,"
            "price Int,"
            "color Text"
            ")"
    );
  }

  createSubscription(Subscription subscription) async {
    final db = await database;
    var res = await db.insert(_tableName, subscription.toMap());
    return res;
  }

  getAllSubscriptions() async {
    final db = await database;
    var res = await db.query(_tableName);
    List<Subscription> list =
    res.isNotEmpty ? res.map((c) => Subscription.fromMap(c)).toList() : [];
    return list;
  }

  updateSubscription(Subscription subscription) async {
    final db = await database;
    var res  = await db.update(
        _tableName,
        subscription.toMap(),
        where: "id = ?",
        whereArgs: [subscription.id]
    );
    return res;
  }

  deleteSubscription(String id) async {
    final db = await database;
    var res = db.delete(
        _tableName,
        where: "id = ?",
        whereArgs: [id]
    );
    return res;
  }
}