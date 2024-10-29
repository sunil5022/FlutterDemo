import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/LoginScreen.dart';
import 'package:flutter_ui/widgets/CustomAppBar.dart';
import 'package:flutter_ui/widgets/EditTextWidget.dart';
import 'package:get/get.dart';

import 'ColoumnRow.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.toolBar("Main", context),
      body: Container(
        // Center is a layout widget. It takes-const  a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(

              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'START',
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          Text(
                            'END ',
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ],
                      ),
                      const Text(
                        '0',
                      ),
                      Text(
                        '$_counter',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      ElevatedButton(onPressed: () {
                        // Get.to(ColoumnRow());
                        Get.to(Home());
                      }, child: const Text("Button")),
                      InkWell(
                        child: Text(
                          '$_counter',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        onTap: () {
                          print("object");
                        },
                      ),
                      InkWell(
                        child: Text(
                          '$_counter',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        onTap: () {
                          print("object");
                        },
                      ),
                      InkWell(
                        child: Text(
                          '$_counter',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        onTap: () {
                          print("object");
                        },
                      ),
                      InkWell(
                        child: Text(
                          '$_counter',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        onTap: () {
                          print("object");
                        },
                      ),
                      InkWell(
                        child: Text(
                          '$_counter',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        onTap: () {
                          print("object");
                        },
                      ),
                    ]),
              ),
            ),
            Container(
              height: 100,
              color: Colors.red,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Row1"),
                  Text("Row2"),
                  Text("Row2"),
                  Text("Row2"),

                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
