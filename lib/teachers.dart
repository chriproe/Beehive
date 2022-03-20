import 'package:beehive/main.dart';
import 'package:flutter/material.dart';
import 'package:beehive/account.dart';
import 'package:beehive/analysi1.dart';

class TeachersWidget extends StatefulWidget {
  const TeachersWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TeachersWidgetState();
  }

class _TeachersWidgetState extends State<TeachersWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[800],
          title: const Text('Καθηγητές'),
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
            text: 'Αντώνιος Αντωνόπουλος',
            icon: Icons.tag_faces,
            onClicked: () => selectedItem(context, 0),
          ),
          
           const SizedBox(height: 24),
          buildMenuItem(
            text: 'Βασιλική Καντερέ',
            icon: Icons.tag_faces,
            onClicked: () => selectedItem(context, 0),
          ),
          buildMenuItem(
            text: 'Γεώργιος Φικιώρης',
            icon: Icons.tag_faces,
            onClicked: () => selectedItem(context, 0),
          ),
          const SizedBox(height: 24),
          buildMenuItem(
            text: 'Δήμητρα-Θεοδώρα Κακλαμάνη',
            icon: Icons.tag_faces,
            onClicked: () => selectedItem(context, 0),
          ),
          
          const SizedBox(height: 24),
          buildMenuItem(
            text: 'Κωστής Σαγώνας',
            icon: Icons.tag_faces,
            onClicked: () => selectedItem(context, 0),
          ),
          const SizedBox(height: 24),
          buildMenuItem(
            text: 'Γεώργιος Στάμου',
            icon: Icons.tag_faces,
            onClicked: () => selectedItem(context, 0),
          ),
          const SizedBox(height: 24),
          buildMenuItem(
            text: 'Κωνσταντίνα Νικήτα',
            icon: Icons.tag_faces,
            onClicked: () => selectedItem(context, 0),
          ),
          const SizedBox(height: 24),
          buildMenuItem(
            text: 'Νεκτάριος Κοζύρης',
            icon: Icons.tag_faces,
            onClicked: () => selectedItem(context, 0),
          ),
          const SizedBox(height: 24),
          buildMenuItem(
            text: 'Ιωάννα Ρουσσάκη',
            icon: Icons.tag_faces,
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
            builder: (context) => Analysi1Widget()),
          );
          break;
      }
    }
}



