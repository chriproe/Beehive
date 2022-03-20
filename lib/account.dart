import 'package:beehive/main.dart';
//import 'dart:html';
//import 'dart:ui';
import 'dart:io';
import 'package:beehive/user_prefer.dart';
import 'package:beehive/main.dart';
import 'package:flutter/material.dart';
import 'package:beehive/user.dart';
import 'package:beehive/widgets/navdrawer.dart';
import 'package:flutter/material.dart';
import 'package:beehive/scan.dart';
import 'package:beehive/editaccount.dart';

class MyAccountWidget extends StatefulWidget{
  const MyAccountWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyAccountWidgetState();
  }


class _MyAccountWidgetState extends State<MyAccountWidget> {
  User user = UserPreferences.myUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[800],
          title: const Text('My Account'),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ScanWidget())
                );
              }, 
              icon: Icon(Icons.camera_alt_sharp, color: Colors.black),
              tooltip: 'Scan ID',
              ),            
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => EditAccountWidget())
                );
              }, 
              icon: Icon(Icons.app_settings_alt, color: Colors.black),
              tooltip: 'Edit',
              ),
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
        children: [
          const SizedBox(height: 24),
          buildAbout(user),
        ],
        ),
    );
  }

} 

class TextFieldWidget extends StatefulWidget{
  final String label;
  final String text;
  final ValueChanged<String> onChanged;

  const TextFieldWidget({
    Key? key,
    required this.label,
    required this.text,
    required this.onChanged,
  }) : super(key: key);

  @override 
  _TextFieldWidgetState createState() => _TextFieldWidgetState();

}

class _TextFieldWidgetState extends State<TextFieldWidget>{
  late final TextEditingController controller;
  @override
  void initState(){
    super.initState();

    controller = TextEditingController(text: widget.text);
  }

  @override 
  void dispose(){
    controller.dispose();

    super.dispose();
  }
  @override 
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        widget.label,
      ),
      const SizedBox(height:8),
      TextField(
        controller: controller,
        decoration: InputDecoration(
          fillColor: Colors.deepOrange[800],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          )
        ),
        )
    ],
  );
}

Widget buildName(User user) => Column(
  children: [
    Text(
      user.name,
      style: TextStyle(fontSize: 24),
    ),
    const SizedBox(height: 4),
    Text(
      user.email,
      style: TextStyle(color: Colors.green[900]),
    ),
  ],
);


Widget buildAbout(User user) => Container(
  padding: EdgeInsets.symmetric(horizontal: 48),
  child:   Column(
  
    crossAxisAlignment: CrossAxisAlignment.start,
  
    children: [
  
      Text(
  
        "username",
  
        style: TextStyle(fontSize:15, color: Colors.green[900]),
  
      ),
  
      const SizedBox(height: 16,
        child: const ColoredBox(color: Colors.deepOrange)),
      Text(
        user.name,
        style: TextStyle(fontSize: 20, height: 1.4),
        
      ),
      const SizedBox(height: 50,)
,     Text(
  
        "email",
  
        style: TextStyle(fontSize:15, color: Colors.green[900]),
  
      ),
  
      const SizedBox(height: 16,
        child: const ColoredBox(color: Colors.deepOrange)),
      Text(
        user.email,
        style: TextStyle(fontSize: 20, height: 1.4),
        
      ),
      const SizedBox(height: 50),
     Text(
  
        "semester",
  
        style: TextStyle(fontSize:15, color: Colors.green[900]),
  
      ),
  
      const SizedBox(height: 16,
        child: const ColoredBox(color: Colors.deepOrange)),
      Text(
        user.semester,
        style: TextStyle(fontSize: 20, height: 1.4),
        
      ),
      // const SizedBox(height: 24),
      // Center(child: buildEditButton()),
      ],

  
  ),
);

// Widget buildEditButton() => ButtonWidget(
//   text: 'Edit',
//   onClicked: () {},
// );

// class ButtonWidget extends StatelessWidget{
//   final String text;
//   final VoidCallback onClicked;

//   const ButtonWidget({
//     Key? key,
//     required this.text,
//     required this.onClicked,
//   }) : super(key: key);

//   @override 
//   Widget build(BuildContext context) => ElevatedButton(
//     style: ElevatedButton.styleFrom(
//       shape: StadiumBorder(),
//       onPrimary: Colors.deepOrange[800],
//     ),
//   onPressed: onClicked ,
//     child: Text(text),
//   );
// }