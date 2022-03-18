import 'dart:html';
import 'dart:io';

import 'package:flutter/material.dart'

class ProfileWidget extends StatelessWidget{
  final String imagePath;
  final VoidCallback: onClicked;

  const ProfileWidget({
    Key? key,
    required this.imagePath,
    required this.onClicked,
  }) : super(key: key);

}

@override
Widget build(BuildContext context) {
  final color = Colors.orange;

  return Center(
    child: buildImage(),
  );
}

Widget buildImage(){
  final image = imagePath;

  return ClipOval(
    child:Ink.image(
    image: image,
    fit: BoxFit.cover,
    width 128,
    height 128,
    child: InkWell(onTap: onClicked)
    )
  );
}