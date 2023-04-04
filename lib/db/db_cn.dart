import 'dart:developer';

import 'package:mongo_dart/mongo_dart.dart';
import 'package:dio/dio.dart';

class MongoDatabase {
  static connect() async {
    var db = await Db.create(
        'mongodb+srv://shyamu:shyamu@counterpktapp.go577ds.mongodb.net/d?retryWrites=true&w=majority');
    await db.open();
    inspect(db);
    var status = db.serverStatus();
    print(status);
    var collection = db.collection("items");
    print(await collection.find().toList());
  }

  void insertData(String a) async {
    var db = await Db.create(
        'mongodb+srv://shyamu:shyamu@counterpktapp.go577ds.mongodb.net/d?retryWrites=true&w=majority');
    await db.open();
    inspect(db);
    var status = db.serverStatus();
    print(status);
    var collection = db.collection("items");
    await collection.insert({"item": a});
  }

  Future<List> listItems() async {
    var db = await Db.create(
        'mongodb+srv://shyamu:shyamu@counterpktapp.go577ds.mongodb.net/d?retryWrites=true&w=majority');
    await db.open();
    inspect(db);
    var status = db.serverStatus();
    print(status);
    var collection = db.collection("items");
    var result = await collection.find().toList();
    print(result.runtimeType);
    return result;
  }
}
