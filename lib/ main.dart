import 'package:flutter/material.dart';


final daisyGreen = Color.fromRGBO(85, 186, 116, 1.0);

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(
          primaryColor: daisyGreen,
          accentColor: daisyGreen,
          scaffoldBackgroundColor: Colors.white),
      home: HomePage(),
    );
  }
}


class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}



class HomePageState extends State<HomePage> {

  void _notImplementedView() {
    Navigator.of(context)
        .push(MaterialPageRoute<void>(builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text("Coming Soon!")),
      );
    }));
  }

  Widget _buildControls() {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.business),
          title: Text('Packages'),
          subtitle: Text('See what is waiting for you'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: _notImplementedView,
        ),
        ListTile(
          leading: Icon(Icons.people),
          title: Text('Guests List'),
          subtitle: Text('Invite your friends over'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => GuestsWidget()),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.warning),
          title: Text('Report a Problem'),
          subtitle: Text('Help your building live up to its potential'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: _notImplementedView,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Lobby', style: TextStyle(color: Colors.white)),
        leading: new Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage:
                NetworkImage('https://i.stack.imgur.com/XPOr3.png'), //yeah, that's a cow
          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.notifications),
              color: Colors.white,
              onPressed: () {}),
        ],
      ),
      body: _buildControls(),
    );
  }
}

class GuestsWidget extends StatefulWidget {
  // Creating stateful widgets in flutter is the only way to maintain state across "setState" invocations
  @override
  createState() => GuestsState();
}


class GuestsState extends State<GuestsWidget> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Manage your guests")),

      // You probably want to start writing your code here :)

    );
  }
}
