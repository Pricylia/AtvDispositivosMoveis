import 'package:checklist/model/ItemModel.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  ItemModel itemModel = ItemModel('Ariana Grande', true);
  ItemModel itemModel2 = ItemModel('Eternal Sunshine', false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
        Text(itemModel.nome),
        Checkbox(
          value: itemModel.check,
          onChanged: (value) {
            setState(() {
              itemModel.check = !itemModel.check;
            });
          },
        ),
      ],
              ),
            ),
            Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                Text(itemModel2.nome),
                Checkbox(
                  value: itemModel2.check, 
                  onChanged: (value){
                    setState(() {
                      itemModel2.check = !itemModel2.check;
                    });
                  }),
              ],
                ),
            ),
          ],
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}