import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
// This widget is the root
// of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "ListView.builder",
        theme: new ThemeData(
            primarySwatch: Colors.green
        ),
        debugShowCheckedModeBanner: false,
        home: new ListViewBuilder()
    );
  }
}
class ListViewBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:Text("Dash Cam")
      ),
      body: Column(

        children: [
          Divider(
            height: 2,
            thickness: 10,
            color: Colors.blue,
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.greenAccent,
                  Colors.amberAccent
                ]
              )
            ),
            child:
            Center(
              child: Text("Monday 28/02/2021",
              style:TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
            ),
          ),
          Divider(
            height: 2,
            thickness: 2,
            color: Colors.blue,
          ),
          ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (BuildContext context,int index){
                return ListTile(
                    leading: Icon(Icons.list),
                    trailing: Text("GFG",
                      style: TextStyle(
                          color: Colors.green,fontSize: 15),),
                    title:Text("List item $index")
                );
              }
          ),
        ],
      ),
    );
  }
}
