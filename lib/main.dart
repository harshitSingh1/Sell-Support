import 'package:flutter/material.dart';
import 'lib/otherpage.dart';
void main() {
  runApp(new MaterialApp(home: new Application()));
}

class Application extends StatelessWidget {
  @override
  // _ApplicationState createState() => new _ApplicationState();
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(title: new Text("SELL-SUPPORT"),backgroundColor: Color.fromARGB(255, 238, 63, 51),),

      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            
            new UserAccountsDrawerHeader(
              accountName: new Text('Harshit Singh'),
              accountEmail: new Text('6394441778'),
              currentAccountPicture: new CircleAvatar(backgroundColor: Colors.black26, child: new Text('H'),),
              decoration: new BoxDecoration(color: Color.fromARGB(255, 238, 63, 51)),
            ),
            new ListTile(title: new Text("Settings"), 
            trailing: new Icon(Icons.settings),
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>new op('Academics'))),
            ),
            new ListTile(title: new Text("Payments"),
            trailing: new Icon(Icons.payment),
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>new op('Admission Management'))),
            ),
            new ListTile(title: new Text("Helpdesk"),
            trailing: new Icon(Icons.help_center),
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>new op('Calendar'))),
            ),
            new ListTile(title: new Text("Sign Out"),
            trailing: new Icon(Icons.logout),
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>new op('Calendar'))),
            ),
          ],
        ),
      ),
    );
  }
}

// class _ApplicationState extends State<Application> with SingleTickerProviderStateMixin {
//   TabController _tcontrol;
//   void initState(){
//     _tcontrol = new TabController(length: 3, vsync: this);
//   }
//   Widget build(BuildContext context){
//     return new Scaffold(
//       appBar:  new AppBar(
//         bottom: new TabBar(
//           controller: _tcontrol,
//           tabs: <Widget>[
//             new Tab(icon: new Icon(Icons.home),),
//              new Tab(icon: new Icon(Icons.supervisor_account),),
//               new Tab(icon: new Icon(Icons.close),),
//           ],
//         ),
//       ),
//       body: new TabBarView(
//         controller: _tcontrol,
//         children: <widget>[
//           new Center(child: new Text('Welcome to Home'),),
//           new Center(child: new Text("Welcome to account"),),
//           new Center(child: new Text("Welcome to account"),),
//         ]
//       ),
//     )
//   }
// }