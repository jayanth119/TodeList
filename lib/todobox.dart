import 'package:flutter/material.dart';

class TodoBox extends StatelessWidget {
  final bool cvalue;
  final String task;
  final Function(bool?)? onChanged;

  const TodoBox({
    super.key, // You can provide a key here if needed
    required this.cvalue,
    required this.task,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 100,
        height: 100,
        padding: const EdgeInsets.all(25),
        decoration: const BoxDecoration(
          color: Colors.pink,
        ),
        child: Row(
          children: [
            Checkbox(value: cvalue, onChanged: onChanged),
            Text(
              task,
              style: TextStyle(
                decoration:
                    cvalue ? TextDecoration.lineThrough : TextDecoration.none,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
