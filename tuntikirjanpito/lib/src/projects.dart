import 'package:flutter/material.dart';
import 'package:tuntikirjanpito/src/app.dart';


class Projects extends StatefulWidget{
  
 final String value;

  Projects({Key key, this.value}) : super(key: key);
  @override
  ProjectsState createState() =>  ProjectsState();
  
}


class  ProjectsState extends State <Projects> {

 
   Widget build(context){
     return new Scaffold (
       backgroundColor: bgColor,
       appBar: new AppBar(title: new Text('Projects'),
       iconTheme: new IconThemeData(color: iconColor),
       centerTitle: true,
       backgroundColor: barColor,
       ),
          body: new Center(
         child: new Column(
           children: <Widget>[
             
            new Text("Insert many pröjects here pls"),
            
            
             
           ],
         ),
        ),
     );
   }
}