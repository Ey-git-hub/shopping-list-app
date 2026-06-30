import 'package:flutter/material.dart';
import 'package:shopping_app/data/categories.dart';

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
      //adding the from
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                maxLength: 50,
                decoration: InputDecoration(label: Text("Name")),
                validator: (value) {
                  return '';
                },
              ),
              Row(
                children: [
                  TextFormField(
                    decoration: InputDecoration(label: Text('Quantity')),
                    initialValue: '1',
                  ),
                  SizedBox(width: 8),
                  DropdownButtonFormField(
                    items: [
                      for (final category in categories.entries)
                        DropdownMenuItem(
                          child: Row(
                            children: [
                              Container(
                                width: 16,
                                height: 16,
                                color: category.value.color,
                              ),
                              SizedBox(width: 6),
                              Text(category.value.title),
                            ],
                          ),
                        ),
                    ],
                    onChanged: onChanged,
                  ),
                ],
              ), //instead of textfield we add testformfield()because we are using form
            ],
          ),
        ),
      ),
    );
  }
}
