import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:card_game/Component/appBar.dart';
import 'package:card_game/Component/drawer.dart';

import 'package:card_game/views/Video_page.dart';
import 'package:card_game/views/apps_pag.dart';
import 'package:card_game/views/learn_page.dart';
import 'package:card_game/views/story_page.dart';

import '../Component/navigation_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _indexPage = 0;
  List<Widget> _pages = [
    PageLearning(),
    PageVideo(),
    PageStory(),
    PageApps(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSimple(),
      drawer: DrawerCustom(),
      body: _pages[_indexPage],
      bottomNavigationBar: CustomNavigationBar(
        indexpage: _indexPage,
        onClock: (index) {
          setState(() {
            _indexPage = index;
          });
          // print('test');
        },
      ),
    );
  }
}
