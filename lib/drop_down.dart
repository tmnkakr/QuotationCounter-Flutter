import 'package:flutter/material.dart';
import 'package:flutter_application_1/add_poly.dart';

class DropDown extends StatefulWidget {
  const DropDown({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DropDown createState() => _DropDown();
}

class _DropDown extends State<DropDown> {
  void _navigateToNextScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const AddTextFieldPage(),
      ),
    );
  }

  String selectedItem = 'Item 1';

  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Select Item"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                const Text('Select Item:'),
                const SizedBox(width: 10),
                DropdownButton(
                  value: selectedItem,
                  items: items.map((String item) {
                    return DropdownMenuItem(
                      value: item,
                      child: Text(item),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    if (newValue is String) {
                      setState(() {
                        selectedItem = newValue;
                      });
                    }
                  },
                )
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: _navigateToNextScreen,
                      child: const Text('Next'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
