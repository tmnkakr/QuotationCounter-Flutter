import 'package:flutter/material.dart';

// ignore: camel_case_types
class add_quotation extends StatelessWidget {
  const add_quotation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Two Titles"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              child: const Text(
                "Title 1",
                style: TextStyle(fontSize: 24),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BlankScreen(),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            const Text(
              "Title 2",
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}

class BlankScreen extends StatelessWidget {
  const BlankScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Blank Screen"),
      ),
      body: const Center(
        child: Text(
          "This is a blank screen",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
