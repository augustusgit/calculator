import 'package:flutter/material.dart';
import 'package:light_calculator/constants.dart';

class KeyboardButton extends StatelessWidget {
  final String id;
  final VoidCallback onPressed;
  KeyboardButton({@required this.id, @required this.onPressed});

  
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: double.infinity,
        margin: EdgeInsets.all(6.0),
        child: ElevatedButton(
          onPressed: onPressed,
          onLongPress: onPressed,
          style: ElevatedButton.styleFrom(
            elevation: 0.0,
            primary: Theme.of(context).hintColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
          ),
          child: setChild(context, id),
        ),
      ),
    );
  }
}

Widget setChild(BuildContext context, String id) {
  if (id == ButtonId.backspace)
    return Icon(
      Icons.rotate_right,
      color: Theme.of(context).primaryColorDark,
    );

  if (id == ButtonId.ac)
    return Text(
      id,
      style: TextStyle(
        color: Color(0xFF26F4CE),
        fontSize: 22.0,
        fontWeight: FontWeight.bold,
      ),
    );

  if (RegExp(r'[\d\.]').hasMatch(id))
    return Text(
      id,
      style: TextStyle(
        color: Theme.of(context).primaryColorDark,
        fontSize: 22.0,
        fontWeight: FontWeight.bold,
      ),
    );

  return id == ButtonId.plusMinus || id == ButtonId.percent ? Text(
    id,
    style: TextStyle(
      color: Color(0xFF26F4CE),
      fontSize: 28.0,
      fontWeight: FontWeight.bold,
    ),
  ) : Text(
    id,
    style: TextStyle(
      color: Color(0xFFF57B7B),
      fontSize: 28.0,
      fontWeight: FontWeight.bold,
    ),
  );
}
