import 'package:flutter/material.dart';

class NewList extends StatefulWidget {
  NewList({super.key});
  @override
  State<NewList> createState() {
    return _NewListState();
  }
}

class _NewListState extends State<NewList> {
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Add a new item')));
  }
}
