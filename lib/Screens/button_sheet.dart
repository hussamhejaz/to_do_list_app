import 'package:flutter/material.dart';

class ButtonSheet extends StatelessWidget {
  const ButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            textAlign: TextAlign.center,
            'Add Task',
            style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30.0),
          ),
         const  TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
         const  SizedBox(
            height: 5,
          ),
          TextButton(onPressed: (){}, child: const Text('Add', style: TextStyle(color: Colors.lightBlueAccent, fontSize: 20),))
        ],
      ),
    );
  }
}
