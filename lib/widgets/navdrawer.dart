  import 'package:beehive/account.dart';
  import 'package:flutter/material.dart';
  import 'package:beehive/main.dart';
  import 'package:beehive/subjects/subjects.dart';
  import 'package:beehive/teachers.dart';
  import 'package:beehive/advice.dart';
  import 'package:beehive/books/books.dart';

  class NavigationDrawerWidget extends StatelessWidget {
    final padding = EdgeInsets.symmetric(horizontal: 20);
    @override
    Widget build(BuildContext context) {
      final name = 'Aimilios Tomilo';
      final email = 'apple@gmail.com';

      return Drawer(
        child: Material(
          color: Colors.deepOrange[800],
          child: ListView(
            children: <Widget>[
              buildHeader(
                name: name,
                email: email,
                onClicked: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MyAccountWidget(

                  ),
                )),
              ),
              Container(
                padding: padding,
                child: Column(
                  children: [
                    const SizedBox(height: 12),
                    buildSearchField(),
                    const SizedBox(height: 24),
                    buildMenuItem(
                      text: 'Μαθήματα',
                      icon: Icons.people,
                      onClicked: () => selectedItem(context, 0),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Καθηγητές',
                      icon: Icons.favorite_border,
                      onClicked: () => selectedItem(context, 1),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Συγγράμματα',
                      icon: Icons.workspaces_outline,
                      onClicked: () => selectedItem(context, 2),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Συμβουλές Διαβάσματος',
                      icon: Icons.update,
                      onClicked: () => selectedItem(context, 3),
                    ),
                    const SizedBox(height: 24),
                    Divider(color: Colors.white70),
                    const SizedBox(height: 24),
                    buildMenuItem(
                      text: 'Αποσύνδεση/Logout',
                      icon: Icons.account_tree_outlined,
                      onClicked: () => selectedItem(context, 4),
                    ),
                  

                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget buildHeader({
      required String name,
      required String email,
      required VoidCallback onClicked,
    }) =>
        InkWell(
          onTap: onClicked,
          child: Container(
            padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
            child: Row(
              children: [
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      email,
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
        );

    Widget buildSearchField() {
      final color = Colors.white;

      return TextField(
        style: TextStyle(color: color),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          hintText: 'Search',
          hintStyle: TextStyle(color: color),
          prefixIcon: Icon(Icons.search, color: color),
          filled: true,
          fillColor: Colors.white12,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: color.withOpacity(0.7)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: color.withOpacity(0.7)),
          ),
        ),
      );
    }

    Widget buildMenuItem({
      required String text,
      required IconData icon,
      VoidCallback? onClicked,
    }) {
      final color = Colors.white;
      final hoverColor = Colors.white70;

      return ListTile(
        leading: Icon(icon, color: color),
        title: Text(text, style: TextStyle(color: color)),
        hoverColor: hoverColor,
        onTap: onClicked,
      );
    }

    void selectedItem(BuildContext context, int index) {
      Navigator.of(context).pop();

      switch (index) {
        case 0:
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => SubjectWidget(),
          ));
          break;
        case 1:
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => TeachersWidget(),
          ));
          break;
        case 2:
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => BooksWidget(),
          ));
          break;
        case 3:
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => AdviceWidget(),
          ));
          break;
      }
    }
  }