import 'package:flutter/material.dart';
import 'package:tuntikirjanpito/src/app.dart';
import 'package:firebase_database/firebase_database.dart';


class NotificationsPage extends StatelessWidget {

  final dbref = FirebaseDatabase.instance.reference();


     Widget build(context){
     return new Scaffold (
      backgroundColor: bgColor,
      appBar: new AppBar(
        iconTheme: new IconThemeData(color: iconColor),
         centerTitle: true,
         title: new Text('Notifications'),
       backgroundColor: barColor,
       ),
     body: new Container(
       child: new Center(
         child: new Column(
           children: <Widget>[
             RaisedButton(
               child: Text("write peenus"),
               onPressed: (){
                 writeData();
               }
               ),
               RaisedButton(
               child: Text("read peenus"),
               onPressed: (){
                 readData();
               }
               ),
               RaisedButton(
               child: Text("update peenus"),
               onPressed: (){
                 updateData();
               }
               ),
               RaisedButton(
               child: Text("delete peenus"),
               onPressed: (){
                 deleteData();
               }
               )
           ],
         )
         ),
       ),
     );
   }

   void writeData()
   {
      dbref.child("1").set({
        "id" : "ID1",
        "data" : "This is a sample Data 1"
    });
  }

  void readData()
   {
      dbref.once().then((DataSnapshot dataSnapShot) {
        print(dataSnapShot.value);
    });
  }

  void updateData()
   {
      dbref.child("1").update({
        "data" : "This is updated info"
    });
  }

  void deleteData()
   {
      dbref.child("1").remove();
  }
}
