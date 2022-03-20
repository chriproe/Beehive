
import 'dart:html';
import 'package:beehive/main.dart';
import 'package:flutter/material.dart';
import 'package:beehive/account.dart';

class Post{
  String body;
  String author;
  int likes = 0;
  bool userLiked = false;

  Post(this.body, this.author);

  void likePost() {
    this.userLiked = !this.userLiked;
    if(this.userLiked) {
      this.likes += 1;
    }
    else{
      this.likes -= 1;
    }
  }
}



class Strang_GilbertWidget extends StatefulWidget{
  @override
  _Strang_GilbertWidget createState() => _Strang_GilbertWidget(); 
}

class _Strang_GilbertWidget extends State<Strang_GilbertWidget> {
  List<Post> posts = [];

  void newPost(String text) {
    this.setState(() {
      posts.add(new Post(text,"Aimilios Tomilo"));
    });
  }
  @override
  Widget  build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Reviews - Ανάλυση και Εφαρμογές"), backgroundColor: Colors.deepOrange[800],),
      body: Column(children: <Widget>[
        Expanded(child: PostList(this.posts)),
        TextInputWidget(this.newPost),
        ]));
  }
}

class TextInputWidget extends StatefulWidget{
  final Function(String) callback;

  TextInputWidget(this.callback);

  @override 
  _TextInputWidgetState createState() => _TextInputWidgetState();

}

class _TextInputWidgetState extends State<TextInputWidget> {
  final controller = TextEditingController();

  @override 
  void dispose(){
    super.dispose();
    controller.dispose();
  }

  void click() {
    widget.callback(controller.text);
    controller.clear();
    FocusScope.of(context).unfocus();
  }


  @override 
  Widget build(BuildContext context){
  return TextField(
    controller: this.controller,
    decoration: InputDecoration(
      prefixIcon: Icon(Icons.message),
      hoverColor: Colors.green[900],
      labelText: "Type your review",
      focusColor: Colors.green[900] ,
      fillColor: Colors.green[900],
      suffixIcon: IconButton(
        icon: Icon(Icons.send),
        splashColor: Colors.green[900],
        color: Colors.green[900],
        highlightColor: Colors.green[900],
        focusColor: Colors.green[900],
        hoverColor: Colors.green[900],
        disabledColor: Colors.green[900],
        tooltip: "Post Review",
        onPressed: this.click,
    ),
    ),
  );
  }
}

class PostList extends StatefulWidget {
  final List<Post> listItems;

  PostList(this.listItems);

  @override
  _PostListState createState() => _PostListState();
}

class _PostListState extends State<PostList> {

  void like(Function callBack){
    this.setState(() {
      callBack();
    });

  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.widget.listItems.length,
      itemBuilder: (context, index) {
        var post = this.widget.listItems[index];
        return Card(child: Row( 
          children: <Widget>[
            Expanded(
              child: ListTile(
            title: Text(post.body), 
            subtitle: Text(post.author),
              )),
            Row(children: <Widget>[
              Container(
                child: Text(post.likes.toString(),
                 style: TextStyle(fontSize: 20)),
                 padding: EdgeInsets.fromLTRB(0, 0, 10, 10)),
              IconButton(icon: Icon(Icons.thumb_up),

              onPressed: () => like(post.likePost),
              color: post.userLiked ? Colors.green[900]: Colors.black)])
            ]));
      },
      
    );
  }
}