import 'package:flutter/material.dart';

import '../drawer/drawer_page.dart';
class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {

  int counter=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerPage(),
      appBar: AppBar(
        title: Text("Counter App"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 100,
            child: Center(child: Text( "counter : "+ counter.toString(),style: TextStyle(fontSize: 30),)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(onPressed: () {
                setState(() {
                  counter--;
                });
              },child: Icon(Icons.remove)),
              SizedBox(
                width: 30,
              ),
              FloatingActionButton(onPressed: () {
                setState(() {
                  counter++;
                });
              },child: Icon(Icons.add)),
            ],
          )
        ],
      ),
    );
  }
}
