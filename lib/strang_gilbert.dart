
import 'package:beehive/main.dart';
import 'package:flutter/material.dart';
import 'package:beehive/account.dart';

class Strang_GilbertWidget extends StatefulWidget {
  const Strang_GilbertWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Strang_GilbertWidgetState();
  }

class _Strang_GilbertWidgetState extends State<Strang_GilbertWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[800],
          title: const Text('Γραμμική Άλγεβρα και Εφαρμογές'),
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
          SizedBox(height: 30),
          buildMenuItem(
            text: 'Συγγραφέας: Strang Gilbert',
            icon: Icons.favorite,
          ),
          const SizedBox(height: 30),
          buildMenuItem(
            text: 'Σημείο Παραλαβής',
            icon: Icons.favorite,
          ),
        ],
      ),
    );

  }

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
    Navigator.of(context).pop();

    switch (index) {
      case 0:
       Navigator.of(context).pop();
        break;
  }
}