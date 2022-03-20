import 'package:beehive/main.dart';
import 'package:flutter/material.dart';
import 'package:beehive/account.dart';
import 'package:beehive/analysis_1books.dart';
import 'package:beehive/logiki_books.dart';

class Books_Semester1Widget extends StatefulWidget {
  const Books_Semester1Widget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Books_Semester1WidgetState();
  }

class _Books_Semester1WidgetState extends State<Books_Semester1Widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[800],
          title: const Text('Συγγράμματα 1ου Εξαμήνου'),
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
          buildMenuItem(
            text: 'Ανάλυση 1',
            icon: Icons.arrow_right_rounded,
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
            text: 'Γραμμική Άλγεβρα',
            icon: Icons.arrow_right_rounded,
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
            text: 'Προγραμματισμός Η/Υ',
            icon: Icons.arrow_right_rounded,
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
            icon: Icons.arrow_right_rounded,
            onClicked: () => selectedItem(context, 1),
          ),
          SizedBox(
            height: 24,
            child: DecoratedBox(
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              ))),
          buildMenuItem(
            text: 'Φυσική |',
            icon: Icons.arrow_right_rounded,
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
            text: 'Ιστορία και Φιλοσοφία των Επιστημονικών Ιδεών',
            icon: Icons.arrow_right_rounded,
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
            text: 'Φιλοσοφία',
            icon: Icons.arrow_right_rounded,
            onClicked: () => selectedItem(context, 0),
          ),
          // const SizedBox(height: 24),
          // buildMenuItem(
          //   text: 'Εξάμηνο 2ο',
          //   icon: Icons.favorite,
          //   onClicked: () => selectedItem(context, 0),
          // ),
          // const SizedBox(height: 24),
          // buildMenuItem(
          //   text: 'Εξάμηνο 3ο',
          //   icon: Icons.favorite,
          //   onClicked: () => selectedItem(context, 0),
          // ),
          // const SizedBox(height: 24),
          // buildMenuItem(
          //   text: 'Εξάμηνο 4ο',
          //   icon: Icons.favorite,
          //   onClicked: () => selectedItem(context, 0),
          // ),
          // const SizedBox(height: 24),
          // buildMenuItem(
          //   text: 'Εξάμηνο 5ο',
          //   icon: Icons.favorite,
          //   onClicked: () => selectedItem(context, 0),
          // ),
          // const SizedBox(height: 24),
          // buildMenuItem(
          //   text: 'Εξάμηνο 6ο',
          //   icon: Icons.favorite,
          //   onClicked: () => selectedItem(context, 0),
          // ),
          // const SizedBox(height: 24),
          // buildMenuItem(
          //   text: 'Εξάμηνο 7ο',
          //   icon: Icons.favorite,
          //   onClicked: () => selectedItem(context, 0),
          // ),
          // const SizedBox(height: 24),
          // buildMenuItem(
          //   text: 'Εξάμηνο 8ο',
          //   icon: Icons.favorite,
          //   onClicked: () => selectedItem(context, 0),
          // ),
          // const SizedBox(height: 24),
          // buildMenuItem(
          //   text: 'Εξάμηνο 9ο',
          //   icon: Icons.favorite,
          //   onClicked: () => selectedItem(context, 0),
          // ),
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
            builder: (context) => Analysi_1BooksWidget(),
          ));
          break;
        case 1:
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => LogikiBooksWidget(),
          ));
          break;
      }
    }
}