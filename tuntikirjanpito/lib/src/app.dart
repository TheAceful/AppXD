import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';



final barColor = const Color(0xFF1f2833);
final bgColor = const Color(0xFFc5c6c7);
final iconColor = const Color(0xFFedb5bf);
final yeetColor = const Color(0xFF2F4F4F);

class HomePage extends StatelessWidget {

  Widget build(context){
    return new Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(top: 10.0),
          child: Column(           
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              MaterialButton(
                padding: EdgeInsets.all(20.0),
                color: iconColor,
                splashColor: barColor,
                minWidth: 300,
                elevation: 8,
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Text('Create Project'),
                onPressed: () {
                  Navigator.of(context).pushNamed("/CreateProject");
                },
              )
            ]
          )
        )
      ),
      backgroundColor: bgColor,

      drawer: new Drawer(
        child: Container(color: barColor,
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Pepega"),
              accountEmail: new Text("pepe.ga@edu.xamk.fi"),
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: new NetworkImage("https://cdn.vox-cdn.com/thumbor/sju_qQOu_hFwDaCCHllhMOXNunQ=/0x0:1000x949/1200x0/filters:focal(0x0:1000x949):no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/10838129/feelsbadman.jpg"),
                ),
              ),
            ),
          
            new ListTile(
              title: new Text('Calendar', style: TextStyle(color: Colors.white)),
              trailing:  new Icon(Icons.arrow_upward, color: iconColor,),
              onTap: () {
                Navigator.of(context).pop(); 
                Navigator.of(context).pushNamed("/SecondPage");
              },
            ),
            new ListTile(
              title: new Text('Projects', style: TextStyle(color: Colors.white)),
              trailing:  new Icon(Icons.arrow_drop_up, color: iconColor,),
              onTap: () {
                Navigator.of(context).pop(); 
                Navigator.of(context).pushNamed("/Projects");
              },
            ),
            new Divider(),
            new ListTile(
              title: new Text('Close', style: TextStyle(color: Colors.white),),
              trailing:  new Icon(Icons.cancel, color: iconColor,),
              onTap: () => Navigator.of(context).pop(),
            ),
            new ListTile(
              title: new Text('Log Out', style: TextStyle(color: Colors.white)),
              trailing:  new Icon(Icons.cancel, color: iconColor,),
              onTap: () {
                Navigator.of(context).pop(); 
                Navigator.of(context).pushNamed("/LoginPage");
              },
            ),
          ],
        ),
        ),
      ),

      appBar: AppBar(
        centerTitle: true,
        title: Text("Projekt"),
        backgroundColor: barColor,
        iconTheme: new IconThemeData(color: iconColor),
        actions: <Widget>[
          Builder(
          builder: (BuildContext context){
            return IconButton(
              icon: const Icon(Icons.notifications,),
              onPressed: () => Navigator.of(context).pushNamed("/NotificationsPage",)
            );
          },
          ),
        ]
      ),
    );
  }
}

