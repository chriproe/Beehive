import 'package:flutter/material.dart';
import 'package:beehive/main.dart';
import 'package:beehive/subjects.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'beehive',
              style: TextStyle(color: Colors.white, fontSize: 25, fontFamily: 'R' ),
            ),
            decoration: BoxDecoration(
                color: Colors.blue,
                ),
          ),
          ListTile(
            leading: Icon(Icons.science),
            title: Text('Μαθήματα'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => SubjectWidget()),
              );
              Navigator.of(context).pop();},
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Καθηγητές'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text('Συγγράμματα'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.chat),
            title: Text('Συμβουλές Διαβάσματος'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}