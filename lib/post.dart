import 'package:flutter/material.dart';

class Post {
  String body;
  String author;
  Set usersLiked = {};
  Post(this.body, this.author);

  // void likePost(FirebaseUser user) {
  //   if (this.usersLiked.contains(user.uid)) {
  //     this.usersLiked.remove(user.uid);
  //   } else {
  //     this.usersLiked.add(user.uid);
  //   }
  //   this.update();
  // }

  // void update() {
  //   updatePost(this, this._id);
  // }


  Map<String, dynamic> toJson() {
    return {
      'author': this.author,
      'usersLiked': this.usersLiked.toList(),
      'body': this.body
    };
  }
}

Post createPost(record) {
  Map<String, dynamic> attributes = {
    'author': '',
    'usersLiked': [],
    'body': ''
  };

  record.forEach((key, value) => {attributes[key] = value});

  Post post = new Post(attributes['body'], attributes['author']);
  post.usersLiked = new Set.from(attributes['usersLiked']);
  return post;
}