import 'package:flutter/material.dart';
import 'package:card_game/Component/card_learn.dart';
import 'package:card_game/Controller/c_learn.dart';
import 'package:card_game/Model/m_learn.dart';

class PageLearning extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: ControllerLearn.dataLength,
        itemBuilder: (context, index) {
          ModelLearn edu = ControllerLearn.dataLearn.elementAt(index);
          return CardLearn(
            data: edu,
            title: edu.title,
            screen: edu.page,
          );
        },
      ),
    );
  }
}
