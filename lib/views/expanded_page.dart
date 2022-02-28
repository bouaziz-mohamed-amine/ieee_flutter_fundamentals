import 'package:flutter/material.dart';

import '../drawer/drawer_page.dart';
class ExpandedPage extends StatefulWidget {
  const ExpandedPage({Key? key}) : super(key: key);

  @override
  _ExpandedPageState createState() => _ExpandedPageState();
}

class _ExpandedPageState extends State<ExpandedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerPage(),
      appBar: AppBar(
        title: Text("Expanded"),
        centerTitle: true,
      ),
      body:  Column(
        children: [
          Expanded(
              child: Container(
                //color: Colors.teal,
                child: Row(
                  children: [
                    Expanded(child: Container(
                      color: Colors.orange,
                    )),
                    Expanded(child: Container(
                      color: Colors.blue,
                    )),
                    Expanded(child: Container(color: Colors.white,)),
                  ],
                ),
              )),
          Expanded(child: Container(color: Colors.red,)),
          Expanded(child: Container(color: Colors.green,)),
        ],
      ),
    );
  }
}
