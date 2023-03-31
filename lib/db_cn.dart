import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';

class DbCn extends StatefulWidget {
  @override
  _DbCn createState() => _DbCn();
}

class _DbCn extends State<HomePage> {
  final db =
      Db("mongodb://<username>:<password>@<host>:<port>/<database-name>");
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _connectToDatabase();
  }

  Future<void> _connectToDatabase() async {
    try {
      await db.open();
      setState(() {
        _isLoading = false;
      });
      print('Connected to MongoDB!');
    } catch (e) {
      print('Error connecting to MongoDB: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MongoDB Demo'),
      ),
      body: Center(
        child: _isLoading
            ? CircularProgressIndicator()
            : Text('Connected to MongoDB!'),
      ),
    );
  }

  @override
  void dispose() {
    db.close();
    super.dispose();
  }
}
