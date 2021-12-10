import 'package:flutter/material.dart';

import '../../main.dart';

class SetMode extends StatefulWidget {
  const SetMode({Key key}) : super(key: key);

  @override
  _SetModeState createState() => _SetModeState();
}

class _SetModeState extends State<SetMode> {

  List<bool> _isSelected = [false, true];

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      children: <Widget>[
        Icon(Icons.dark_mode, color: Theme.of(context).primaryColorDark,),
        Icon(Icons.light_mode, color: Theme.of(context).primaryColorDark,),
      ],
      color: Color(0xFF22252D),
      selectedColor: Colors.white,
      // fillColor: Colors.white70,
      borderRadius: BorderRadius.all(Radius.circular(10)),
      isSelected: _isSelected,
      onPressed: (int index) {
        setState(() {
          // _isSelected[index] = !_isSelected[index];
          LightCalculator.themeNotifier.value =
          index == 0 ? ThemeMode.dark : ThemeMode.light;
        });
      },
    );
  }
}
