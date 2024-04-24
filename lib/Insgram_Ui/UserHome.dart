import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Bubble.dart';
import 'UserPost.dart';

class UserHome extends StatelessWidget {
  const UserHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Instagram',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.add,
                  size: 20,
                  color: Colors.black,

                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Icon(
                    Icons.favorite,
                    size: 20,
                    color: Colors.black,
                  ),
                ),
                Icon(
                  Icons.share,
                  size: 20,
                  color: Colors.black,
                ),
              ],
            ),

          ],
        ),
      ),
    body:Column(
      children: [
        Row(
          children: [
            Bubble(text: 'name1'),
            Bubble(text: 'name2'),
            Bubble(text: 'name3'),
            Bubble(text: 'name4'),

          ],
        ),
        UserPost(),

      ],
    ),
    );
  }
}
