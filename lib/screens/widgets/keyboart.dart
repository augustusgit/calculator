import 'package:flutter/material.dart';
import 'package:light_calculator/constants.dart';
import 'package:light_calculator/screens/widgets/keyboard_button.dart';

class Keyboard extends StatelessWidget {
  final Function passToButton;
  Keyboard(this.passToButton);

  Widget rowButton(List<String> buttons) {
    return Expanded(
      child: Row(
        children: buttons
            .map((id) => KeyboardButton(id: id, onPressed: () => passToButton(id)))
            .toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFF292D36),
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(32),
        ),
      ),
      child: Column(
        children: <Widget>[
          rowButton([
            ButtonId.ac,
            ButtonId.plusMinus,
            ButtonId.percent,
            ButtonId.division,
          ]),
          rowButton([
            ButtonId.seven,
            ButtonId.eight,
            ButtonId.nine,
            ButtonId.multiplication,
          ]),
          rowButton([
            ButtonId.six,
            ButtonId.five,
            ButtonId.four,
            ButtonId.minus,
          ]),
          rowButton([
            ButtonId.one,
            ButtonId.two,
            ButtonId.three,
            ButtonId.plus,
          ]),
          rowButton([
            ButtonId.backspace,
            ButtonId.zero,
            ButtonId.point,
            ButtonId.equal,
          ]),
        ],
      ),
    );
  }
}
