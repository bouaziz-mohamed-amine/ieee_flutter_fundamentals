import 'package:flutter/material.dart';
import 'package:untitled/views/column_page.dart';
import 'package:untitled/views/counter_page.dart';
import 'package:untitled/views/expanded_page.dart';
import 'package:untitled/views/row_page.dart';
class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              color:Colors.blue.shade200 ,
              child: ListTile(
                title: Text("Row",style: TextStyle(fontSize: 30),),
                trailing: IconButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RowPage() ),
                      );
                    },
                    icon: Icon(Icons.swap_horiz,size: 30,)),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color:Colors.blue.shade200 ,
              child: ListTile(
                title: Text("Column",style: TextStyle(fontSize: 30),),
                trailing: IconButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ColumnPage() ),
                      );
                    },
                    icon: Icon(Icons.align_vertical_bottom,size: 30,)),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color:Colors.blue.shade200 ,
              child: ListTile(
                title: Text("Expanded",style: TextStyle(fontSize: 30),),
                trailing: IconButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ExpandedPage() ),
                      );
                    },
                    icon: Icon(Icons.add_box_outlined,size: 30,)),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color:Colors.blue.shade200 ,
              child: ListTile(
                title: Text("counter app",style: TextStyle(fontSize: 30),),
                trailing: IconButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CounterPage() ),
                      );
                    },
                    icon: Icon(Icons.calculate,size: 30,)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
