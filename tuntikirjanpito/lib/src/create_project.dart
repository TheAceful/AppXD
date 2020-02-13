import 'package:flutter/material.dart';
import 'package:tuntikirjanpito/src/app.dart';


class CreateProject extends StatefulWidget{

  @override
  CreateProjectState createState() =>  CreateProjectState();
  
}

class  CreateProjectState extends State <CreateProject> {
final formKey = GlobalKey<FormState>();
var _textController = new TextEditingController();

 String name, people, description;

   Widget build(context){
     return new Scaffold (
       backgroundColor: bgColor,
       appBar: new AppBar(title: new Text('Create Project'),
       iconTheme: new IconThemeData(color: iconColor),
       centerTitle: true,
       backgroundColor: barColor,
       ),
       //form
       body:  Card (
         child: Padding(
           padding: EdgeInsets.all(8.0),
           child: Form(
             key: formKey,
             child: Column(
               mainAxisSize: MainAxisSize.min,
               children: <Widget>[
                 
                 TextFormField(
                   controller: _textController,
                   decoration: InputDecoration(
                    labelText: 'Project name:'
                   ),
                    
                   validator:  (input) => input.length > 15 ? 'Name max 15 characters' : null,
                    onSaved: (input) => name = input,

                   ),
                   TextFormField(
                   decoration: InputDecoration(
                    labelText: 'Project description:'
                   ),
                   validator:  (input) => input.length < 20 ? 'Description needs to be atleast 20 characters' : null,
                    onSaved: (input) => description = input,

                   ),
                   TextFormField(
                   decoration: InputDecoration(
                    labelText: 'People:'
                   ),
                   validator:  (input) => input.length > 30 ? 'Max 3 people' : null,
                   onSaved: (input) => people = input,
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: <Widget>[
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: RaisedButton(
                           onPressed: (){
                            _submit();
                           }, 
                           child: Text('Submit'),
                          ),
                       )
                     ],
                   )
               ],
             ),
             ),
         )
        ),
     );
   }
   
   void _submit(){
     if(formKey.currentState.validate()){
     formKey.currentState.save();

     Navigator.of(context).pushNamed("/Projects");
    
    print(name);
    print(description);
    print(people);
     
     }
   }
}