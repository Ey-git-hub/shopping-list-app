import 'package:flutter/material.dart';

class NewList extends StatefulWidget {
  const NewList({super.key});
  @override
  State<NewList> createState() {
    return _NewListState();
  }
}

class _NewListState extends State<NewList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add a new item')),
      body: Padding(padding: EdgeInsets.all(12), child: Text('The form')),
    );
  }
}
