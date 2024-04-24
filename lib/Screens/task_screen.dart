import 'package:flutter/material.dart';
import 'button_sheet.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(onPressed: (){
        showModalBottomSheet(context: context,isScrollControlled: true, builder: (context)=> SingleChildScrollView(
            child:Container(
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
              child: const ButtonSheet(),
        )));
      },
      backgroundColor: Colors.lightBlueAccent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),
        child: const Icon(Icons.add, color: Colors.white,),

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Container(
          padding: const EdgeInsets.only(
              top: 60.0, left: 30, right: 30.0, bottom: 30),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.list,
                  size: 30.0,
                  color: Colors.lightBlueAccent,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'To Do',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                '12 Tasks',
                style: TextStyle(color: Colors.white, fontSize: 18),
              )
            ],
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
            ),
            child: const TaskList(),
          ),
        ),
      ]),
    );
  }
}

class TaskList extends StatelessWidget {
  const TaskList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
       children:  const [
         TaskTile(),
        TaskTile(),

      ],
    );
  }
}

class TaskTile extends StatelessWidget {
  const TaskTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title:const Text('this is a task'),
      trailing: Checkbox(value: false, onChanged:(bool? value){}),
    );
  }
}
