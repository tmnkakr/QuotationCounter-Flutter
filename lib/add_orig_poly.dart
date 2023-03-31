// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_application_1/add_lbr.dart';

class AddAdditionalPoly extends StatefulWidget {
  const AddAdditionalPoly({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _AddAdditionalPoly createState() => _AddAdditionalPoly();
}

class _AddAdditionalPoly extends State<AddAdditionalPoly> {
  final List<Widget> _textFields = [];
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();

  void _navigateToNextScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const AddLb(),
      ),
    );
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
            const Text("Wt : "),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: TextField(
                  controller: _controller2,
                  decoration: const InputDecoration(
                    hintText: 'Weight',
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
        title: const Text('Add Original Poly'),
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
            const SizedBox(height: 25.0),
            ElevatedButton(
              onPressed: _navigateToNextScreen,
              child: const Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
