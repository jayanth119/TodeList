import 'package:flutter/material.dart';
import 'todobox.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  // ignore: non_constant_identifier_names
  List Ora = [
    ["Home Work", false],
    ["coding", false],
    ["sleeping", false]
  ];
  // ignore: non_constant_identifier_names
  void Tasker(bool? value, int index) {
    setState(() {
      Ora[index][1] = !Ora[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.ltr,
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
                backgroundColor: Colors.black,
                appBar: AppBar(
                  title: const Text("Todo List"),
                  backgroundColor: Colors.indigoAccent,
                  elevation: 0.0,
                ),
                body: ListView.builder(
                    itemCount: Ora.length,
                    itemBuilder: (context, index) {
                      return TodoBox(
                          cvalue: Ora[index][1],
                          task: Ora[index][0],
                          // ignore: non_constant_identifier_names
                          onChanged: (value) => Tasker(value, index));
                    }))));
  }
}
