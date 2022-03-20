import 'package:beehive/searchdrawer.dart';
import 'package:flutter/material.dart';
import 'package:beehive/screens/home/home.dart';
import 'package:beehive/account.dart';
import 'package:beehive/widgets/navdrawer.dart';

void main() => runApp(beehive());

class beehive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      title: 'beehive',
      home: MenuWidget(),
    );
  }
} 

class MenuWidget extends StatefulWidget {
  const MenuWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MenuWidgetState();

}

class _MenuWidgetState extends State<MenuWidget>{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: NavigationDrawerWidget(),
      endDrawer: SearchDrawerWidget(),
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[800],
          title: const Text('beehive'),
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
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const SearchPage())
                );
              },
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

    );
  }
}
