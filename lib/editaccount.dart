import 'dart:html';
import 'package:beehive/user_prefer.dart';
import 'package:beehive/main.dart';
import 'package:flutter/material.dart';
import 'package:beehive/user.dart';
import 'package:beehive/widgets/navdrawer.dart';

class EditAccountWidget extends StatefulWidget{
  const EditAccountWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _EditAccountWidgetState();
  }


class _EditAccountWidgetState extends State<EditAccountWidget> {
  User user = UserPreferences.myUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        backgroundColor: Colors.deepOrange[800],
          title: const Text('Edit My Account'),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => EditAccountWidget())
                );
              }, 
              icon: Image.asset('assets/images/beez.png'),

              tooltip: 'Account',
            )
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
          buildName(user),
          const SizedBox(height: 24),
          TextFieldWidget(
            label: 'UserName',
            text: user.name,
            onChanged: (name){},
          ),
          const SizedBox(height: 24),
          TextFieldWidget(
            label: 'Email',
            text: user.email,
            onChanged: (email){},
          ),
          const SizedBox(height: 24),
          TextFieldWidget(
            label: 'Εξάμηνο',
            text: user.semester,
            onChanged: (semester){},
          ),
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