import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'UserAccount.dart';
import 'UserHome.dart';
import 'UserReels.dart';
import 'UserSearch.dart';
import 'UserShop.dart';

class Home_Insta extends StatefulWidget {
  const Home_Insta({Key? key}) : super(key: key);

  @override
  State<Home_Insta> createState() => _Home_InstaState();
}

class _Home_InstaState extends State<Home_Insta> {
  int _selectedInd=0;
  void _Nav(int index){
    setState(() {
      _selectedInd=index;
    });
  }
  final List<Widget>_childern=[
    UserHome(),
    UserSearch(),
    UserReels(),
    UserAccount(),
    UserShop(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _childern[_selectedInd],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        currentIndex:_selectedInd ,
        onTap: _Nav,
        items: [

          BottomNavigationBarItem(icon: Icon(
          Icons.home,
        ),
            label: 'home',
        ),
          BottomNavigationBarItem(icon: Icon(
            Icons.search,
          ),
            label: 'search',
          ),
          BottomNavigationBarItem(icon: Icon(
            Icons.video_call,
          ),
            label: 'reels',
          ),
          BottomNavigationBarItem(

            icon: Icon(
            Icons.shop,
          ),
            label: 'shop',
          ),
          BottomNavigationBarItem(icon: Icon(
            Icons.person,
          ),
            label: 'account',

          ),
        ],
      ),
    );
  }
}
