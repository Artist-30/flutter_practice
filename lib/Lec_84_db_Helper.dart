import 'dart:io';
import 'dart:ui';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {

  // Singleton // privet constructor
  DBHelper._();

  static final DBHelper getInstance = DBHelper._();

  // table name
  static final String TABLE_NAME = "note";
  // columns name
  static final String COLUMN_SRNO = "s_no";
  static final String COLUMN_TITLE = "title";
  static final String COLUMN_DESC = "desc";

  Database? myDB;

  // db Open (path -> if exits then open else create db)
  Future<Database> getDB() async {

    // check if myDB variable has value(database) or not(null)
    // if(myDB != null) {
    //   return myDB!;
    // } else {
    //   myDB = await openDB();
    //   return myDB!;
    // }

    myDB ??= await openDB();
    return myDB!;

  }

  Future<Database> openDB() async {

    Directory appDir = await getApplicationDocumentsDirectory();

    String dbPath = join(appDir.path, "noteDB.db");

    return await openDatabase(dbPath, onCreate: (db, version) {
      //  create all tables here
      db.execute("""create table $TABLE_NAME(
        $COLUMN_SRNO integer primary key autoincrement,
        $COLUMN_TITLE text,
        $COLUMN_DESC text
      );""");
      //   other tables with same method
    }, version: 1);
  }

  // all queries
  // insertion
  Future<bool> addNote({required String mTitle, required String mDesc}) async {

    var db = await getDB();

    int rowsEffected = await db.insert(TABLE_NAME, {
      COLUMN_TITLE : mTitle,
      COLUMN_DESC : mDesc
    });

    return rowsEffected > 0;
  }

  // fetch data - get All Notes data
  // select query
  Future<List<Map<String, dynamic>>> getAllNotes() async {

    var db = await getDB();

    List<Map<String, dynamic>> mData = await db.query(TABLE_NAME);

    return mData;
  }

  // update existing data
  // update query
  Future<bool> updateNote({required String mTitle, required String mDesc, required int mSrNo}) async {
    var db = await getDB();

    int rowsEffected = await db.update(TABLE_NAME, {
      COLUMN_TITLE : mTitle,
      COLUMN_DESC : mDesc,
    }, where: "$COLUMN_SRNO = $mSrNo");

    return rowsEffected > 0;
  }

  // delete existing data
  // delete data
  Future<bool> deleteNote({required int mSrNo}) async {
    var db = await getDB();

    int rowsEffected = await db.delete(TABLE_NAME, where: "$COLUMN_SRNO = ?", whereArgs: ["$mSrNo"]);

    return rowsEffected > 0;
  }

}