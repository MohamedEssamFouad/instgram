import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserPost extends StatefulWidget {
  const UserPost({Key? key}) : super(key: key);

  @override
  State<UserPost> createState() => _UserPostState();
}

class _UserPostState extends State<UserPost> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(25),
          child: Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  shape: BoxShape.circle,
                ),


              ),
              SizedBox(width: 10,),
              Text(
                'Name',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Icon(
                Icons.menu,
                size: 20,
              ),
            ],
          ),
        ),
        Container(
          height: 400,
          color: Colors.grey[300],
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              Icon(
                Icons.favorite,
                size: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Icon(
                  Icons.chat_outlined,
                //  color: Colors.white,
                  size: 20,
                ),
              ),
              Icon(
                Icons.share,
                size: 20,
              ),
              Spacer(),
              Icon(
                Icons.bookmark,
                size: 20,
              ),
            ],
          ),
        ),
        Padding(padding: EdgeInsets.symmetric(horizontal: 16),

        child: Row(
          children: [
            Text(
              'Liked by ',
              style: TextStyle(
               // fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            Text(
              'Name',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        ),
        ),

      ],
    );
  }
}
