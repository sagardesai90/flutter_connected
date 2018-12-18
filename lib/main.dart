import 'package:flutter/material.dart';

const String _AccountName = 'Sagar Desai';
const String _AccountEmail = 'saagardesai@gmail.com';
const String _AccountAbbr = 'BMW';

void main() => runApp(new Keeper());

class Keeper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'BMW Connected',
      theme: new ThemeData(
        primaryColor: Colors.grey.shade900
      ),
      home: new KeeperDrawer(),		
    );
  }	
}


class KeeperDrawer extends StatelessWidget {
// refer: https://docs.flutter.io/flutter/widgets/ListView-class.html
// refer: https://docs.flutter.io/flutter/widgets/GestureDetector-class.html
// refer: https://docs.flutter.io/flutter/material/ListTile-class.html

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: new Drawer(
        child: new ListView(
          padding: const EdgeInsets.only(top: 0.0),
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: const Text(_AccountName),
              accountEmail: const Text(_AccountEmail),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.brown,
                child: new Text(_AccountAbbr)
              ),
              otherAccountsPictures: <Widget>[
                new GestureDetector(
                  onTap: () => _onTapOtherAccounts(context),
                  child: new Semantics(
                    label: 'Switch Account',
                    child: new CircleAvatar(
                      backgroundColor: Colors.brown,
                      child: new Text('SA'),
                    ),
                  ),
                )
	            ]
            ),
            new ListTile(
              leading: new Icon(Icons.directions_car),
              title: new Text('My Vehicle'),
              onTap: () => _onListTileTap(context),
            ),
            new Divider(),
            new ListTile(
              leading: new Text('Activity'),
              trailing: new Text('Edit'),
              onTap: () => _onListTileTap(context),
            ),
            new ListTile(
              leading: new Icon(Icons.transform),
              title: new Text('Destinations'),
              onTap: () => _onListTileTap(context),
            ),
            new ListTile(
              leading: new Icon(Icons.apps),
              title: new Text('Hub'),
              onTap: () => _onListTileTap(context),
            ),
            new ListTile(
              leading: new Icon(Icons.person),
              title: new Text('Profile'),
              onTap: () => _onListTileTap(context),
            ),
            new Divider(),
            
            
            new ListTile(
              leading: new Icon(Icons.settings),
              title: new Text('Settings'),
              onTap: () => _onListTileTap(context),
            ),
            new ListTile(
              leading: new Icon(Icons.account_balance),
              title: new Text('Legal'),
              onTap: () => _onListTileTap(context),
            ),
          ]
        )
      ),
      appBar: new AppBar(
        title: new Text('BMW Connected'),
      ),
      body: new Center(
        child: new Text('Hello World!')
      )
    );
  }

  _onTapOtherAccounts(BuildContext context) {
    Navigator.of(context).pop();
    showDialog<Null>(
      context: context,
      child: new AlertDialog(
        title: const Text('Account switching not implemented.'),
        actions: <Widget>[
          new FlatButton(
            child: const Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }

  _onListTileTap(BuildContext context) {
    Navigator.of(context).pop();
    showDialog<Null>(
      context: context,
      child: new AlertDialog(
        title: const Text('Not Implemented'),
        actions: <Widget>[
          new FlatButton(
            child: const Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
