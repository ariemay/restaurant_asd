import "dart:io" as io;
import "package:path/path.dart";
import 'package:restaurant_asd/models/users.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class SqliteDB {
  static final SqliteDB _instance = new SqliteDB.internal();

  factory SqliteDB() => _instance;
  static Database _db;

  Future<Database> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await initDb();
    return _db;
  }

  SqliteDB.internal();

  /// Initialize DB
  initDb() async {
    io.Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, "myDatabase.db");
    var taskDb =
    await openDatabase(path, version: 1);
    return taskDb;
  }

  /// Count number of tables in DB
  Future countTable() async {
    var dbClient = await db;
    var res =
    await dbClient.rawQuery("""SELECT count(*) as count FROM sqlite_master
         WHERE type = 'table' 
         AND name != 'android_metadata' 
         AND name != 'sqlite_sequence';""");
    return res[0]['count'];
  }

  Future createUserTable() async {
    var dbClient = await SqliteDB().db;
    var res = await dbClient.execute("""
      CREATE TABLE User(
        id TEXT PRIMARY KEY,
        username TEXT,
        password TEXT,
        nickname TEXT,
        dateofbirth TEXT,
        gender TEXT,
        address TEXT,
        nationality TEXT,
        role TEXT
      )""");
    return res;
  }

  Future registerUser(Users users) async {
    /// Adds user to table
    final dbClient = await SqliteDB().db;
    int res = await dbClient.insert("User", users.toJson());
    return res;
  }

  /// Get all users using raw query
  Future getAll() async {
    print("test");
    var dbClient = await SqliteDB().db;
    final res = await dbClient.rawQuery("SELECT * FROM User");
    return res;
  }

  /// Get all using sqflite helper
  Future getAllUsingHelper() async{
    var dbClient = await SqliteDB().db;
    final res = await dbClient.query('User');
    return res;
  }

}