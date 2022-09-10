import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'kawabanga',
      theme: ThemeData(primarySwatch: Colors.lime),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
    appBar: AppBar(
    title: Text('UwU'),
    ),
      body: Column(
        children: [
        Progress(),
          TaskList(),
        ],
      ),
    );
  }
}
class Progress extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
   Text('0w0'),
      ],
    );
  }
}

class TaskList extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(
        children: [
          TaskItem(label:'^.^' ),
          TaskItem(label: ':0'),
          TaskItem(label: 'TT'),
        ],
    );
  }
}

class TaskItem extends StatefulWidget{
  final String label;

  const TaskItem({Key? key, required this.label}): super(key: key);

  @override
  State<TaskItem> createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  bool? _value = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(onChanged: (newValue) => setState(() => _value = newValue),
            value: _value),
        Text(widget.label),
      ],
    );
  }
}

