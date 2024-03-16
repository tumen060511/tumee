import 'package:flutter/material.dart';

import 'package:card_game/Component/card_storys.dart';

import 'package:card_game/Controller/c_story.dart';
import 'package:card_game/Model/m_learn.dart';

class PageStory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: ControllerStory.dataLength,
        itemBuilder: (context, index) {
          ModellStory edu = ControllerStory.datastory.elementAt(index);
          return CardStory(data: edu, title: edu.title, screen: edu.page);
        },
      ),
    );
  }
}
