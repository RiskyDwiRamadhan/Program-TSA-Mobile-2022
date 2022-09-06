import 'package:flutter_kontak_list/model/kontak.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:path/path.dart';

class DbHelper {
  static final DbHelper _instance = DbHelper._internal();
  static Database? _database;

  final String tableName = 'tableKontak';
  final String columnId = 'id';
  final String columnName = 'name';
  final String columnNoTelp = 'noTelp';
  final String columnEmail = 'email';
  final String columnCompany = 'company';

  DbHelper._internal();
  factory DbHelper() => _instance;

  //cek database
  Future<Database?> get _db async {
    if (_database != null) {
      return _database;
    }
    _database = await _initDB();
    return _database;
  }

  Future<Database?> _initDB() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, 'kontak.db');

    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  // Membuat Table
  Future<void> _onCreate(Database db, int version) async {
    var sql = "CREATE TABLE $tableName($columnId INTEGER PRIMARY KEY,"
        "$columnName TEXT,"
        "$columnNoTelp TEXT,"
        "$columnEmail TEXT,"
        "$columnCompany TEXT)";
    await db.execute(sql);
  }

  // Insert Data
  Future<int?> saveKontak(Kontak kontak) async {
    var dbClient = await _db;
    return await dbClient!.insert(tableName, kontak.toMap());
  }

  // Read Data
  Future<List?> getAllKontak() async {
    var dbClient = await _db;
    var result = await dbClient!.query(tableName, columns: [
      columnId,
      columnName,
      columnCompany,
      columnNoTelp,
      columnEmail
    ]);

    return result.toList();
  }

  // Update Data
  Future<int?> updateKontak(Kontak kontak) async {
    var dbClient = await _db;
    return await dbClient!.update(tableName, kontak.toMap(),
        where: '$columnId=?', whereArgs: [kontak.id]);
  }

  // Hapus Data
  Future<int?> deleteKontak(Kontak kontak) async {
    var dbClient = await _db;
    return await dbClient!
        .delete(tableName, where: '$columnId=?', whereArgs: [kontak.id]);
  }
}
