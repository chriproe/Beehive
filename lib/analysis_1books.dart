import 'package:beehive/main.dart';
import 'package:flutter/material.dart';
import 'package:beehive/account.dart';
import 'package:beehive/strang_gilbert.dart';

class Analysi_1BooksWidget extends StatefulWidget {
  const Analysi_1BooksWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Analysi_1BooksWidgetState();
  }

class _Analysi_1BooksWidgetState extends State<Analysi_1BooksWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[800],
          title: const Text('Συγγράμματα - Ανάλυση Ι'),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => MyAccountWidget())
                );
              }, 
              icon: Image.asset('assets/images/beez.png'),

              tooltip: 'Account',
              ),
            IconButton(
              onPressed: () {}, 
              icon: Image.asset('assets/images/honey-dipper.png'),
              tooltip: 'Search',
              ),
          ],
        ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.deepOrange[800],
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(onPressed: () {} , icon: const Icon (null))
          ],
        ),


      ),      
      body: ListView(
        children :[
          const SizedBox(
            height: 24,
            child: const DecoratedBox(
              decoration: const BoxDecoration(
                color: Colors.red
              ),
            )),
          buildMenuItem(
            text: 'Ανάλυση και Εφαρμογές',
            icon: Icons.favorite,
            onClicked: () => selectedItem(context, 0),
          ),
          SizedBox(
            height: 24,
            child: DecoratedBox(
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              ))),
          buildMenuItem(
            text: 'Λογική Σχεδίαση',
            icon: Icons.favorite,
            onClicked: () => selectedItem(context, 0),
          ),
          const SizedBox(height: 24),
          buildMenuItem(
            text: 'Εξάμηνο 3ο',
            icon: Icons.favorite,
            onClicked: () => selectedItem(context, 0),
          ),
          const SizedBox(height: 24),
          buildMenuItem(
            text: 'Εξάμηνο 4ο',
            icon: Icons.favorite,
            onClicked: () => selectedItem(context, 0),
          ),
          const SizedBox(height: 24),
          buildMenuItem(
            text: 'Εξάμηνο 5ο',
            icon: Icons.favorite,
            onClicked: () => selectedItem(context, 0),
          ),
          const SizedBox(height: 24),
          buildMenuItem(
            text: 'Εξάμηνο 6ο',
            icon: Icons.favorite,
            onClicked: () => selectedItem(context, 0),
          ),
          const SizedBox(height: 24),
          buildMenuItem(
            text: 'Εξάμηνο 7ο',
            icon: Icons.favorite,
            onClicked: () => selectedItem(context, 0),
          ),
          const SizedBox(height: 24),
          buildMenuItem(
            text: 'Εξάμηνο 8ο',
            icon: Icons.favorite,
            onClicked: () => selectedItem(context, 0),
          ),
          const SizedBox(height: 24),
          buildMenuItem(
            text: 'Εξάμηνο 9ο',
            icon: Icons.favorite,
            onClicked: () => selectedItem(context, 0),
          ),
        ],
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
        leading: Icon(icon, color: Colors.green[900]),
        title: Text(text, style: TextStyle(color: Colors.green[900])),
        hoverColor: hoverColor,
        onTap: onClicked,
      );
    }


    void selectedItem(BuildContext context, int index) {
      switch (index) {
        case 0:
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Strang_GilbertWidget(),
          ));
          break;
      }
    }
}