import 'package:flutter/material.dart';
import 'package:flutter_mvvm_demo/UI/helpers/dependency_assembly.dart';
import 'package:flutter_mvvm_demo/UI/views/words_list_view.dart';

void main() {
  setupDependencyAssembler();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter MVVM Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("A Stream of Ints"),
      ),
      body: WordsListView(),
    );
  }
}
