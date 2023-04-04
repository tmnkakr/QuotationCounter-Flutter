// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_application_1/db/db_cn.dart' as M;

class AddLb extends StatefulWidget {
  const AddLb({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _AddLb createState() => _AddLb();
}

class _AddLb extends State<AddLb> {
  final List<Widget> _textFields = [];
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();

  void insertData() async {
    // var id = M.ObjectId();
    final data = M.MongoDatabase();
    data.listItems();
  }

  void _addTextFields() {
    setState(() {
      _textFields.add(
        Row(
          children: [
            const Text("Qty : "),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: SizedBox(
                  width: 20,
                  child: TextField(
                    controller: _controller1,
                    decoration: const InputDecoration(
                      hintText: 'Quantity',
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 50.0),
            const Text("Rs/Pc : "),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: TextField(
                  controller: _controller2,
                  decoration: const InputDecoration(
                    hintText: 'Lbr',
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Labour'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: _textFields.length,
                itemBuilder: (context, index) {
                  return _textFields[index];
                },
              ),
            ),
            RaisedButton(
              onPressed: _addTextFields,
              child: const Text('Add Row'),
            ),
            const RaisedButton(
              onPressed: null,
              child: Text('Final Upload'),
            ),
          ],
        ),
      ),
    );
  }
}
