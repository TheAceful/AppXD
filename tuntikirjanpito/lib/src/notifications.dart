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
               child: Text("write student data"),
               onPressed: (){
                 writeStudentData("3", "joku3@edu.xamk.fi", "salasana3");
               }
               ),
              RaisedButton(
               child: Text("write teacher data"),
               onPressed: (){
                 writeTeacherData("3", "teacher3@xamk.fi", "teacher3");
               }
               ),
               RaisedButton(
               child: Text("write project data"),
               onPressed: (){
                 writeProjectData("3", "3", "Projekti3");
               }
               ),
               RaisedButton(
               child: Text("read data"),
               onPressed: (){
                 readData();
               }
               ),
               RaisedButton(
               child: Text("update data"),
               onPressed: (){
                 updateData();
               }
               ),
               RaisedButton(
               child: Text("delete data"),
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

  void writeProjectData(projectId, creatorId, name)
  {
    dbref.child("Projects").child(projectId).set({
      "creatorId" : creatorId,
      "name" : name
    });
  }

  void writeStudentData(userId, email, password)
  {
    dbref.child("Users").child("Students").child(userId).set({
      "email" : email,
      "password" : password
    });
  }

  void writeTeacherData(userId, email, password)
  {
    dbref.child("Users").child("Teachers").child(userId).set({
      "email" : email,
      "password" : password
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
