import 'package:flutter/material.dart';

import 'package:clickable_tv/clickable_tv.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<ListModel> list = [
    ListModel("item1", "item1 value"),
    ListModel("item2", "item2 value"),
    ListModel("item3", "item3 value"),
  ];
  String _value = "Not Clicked";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Plugin example app'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return ClickableTv(
                    child: ListTile(
                      title: Text(list[index].itemName),
                    ),
                    onClick: () {
                      setState(() {
                        _value = list[index].itemValue;
                      });
                    },
                  );
                },
              ),
              Center(
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Text(
                      "Item Clicked: $_value",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          fontStyle: FontStyle.italic),
                    )),
              )
            ],
          )),
    );
  }
}

class ListModel {
  String itemName;
  String itemValue;
  ListModel(this.itemName, this.itemValue);
}
