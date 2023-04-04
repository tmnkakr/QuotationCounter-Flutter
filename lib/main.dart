import 'package:flutter/material.dart';
import 'package:flutter_application_1/db/db_cn.dart';
import 'package:flutter_application_1/drop_down.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MongoDatabase.connect();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const FirstScreen(),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DropDown()),
                );
              },
              child: Card(
                elevation: 4.0,
                child: Container(
                    color: Colors.red,
                    padding: EdgeInsets.all(25.0),
                    child: Text(
                      "Add Quatation",
                      // style: Theme.of(context).textTheme.headline6!.copyWith(color:Colors.white),
                    )),
              )),
          const SizedBox(height: 16),
          GestureDetector(
            child: const Card(
              child: SizedBox(
                width: double.infinity,
                height: 200,
                child: Center(
                  child: Text('View Reports'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
