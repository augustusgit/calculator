import 'package:flutter/material.dart';

class Displayer extends StatelessWidget {
  final String primaryText;
  final String secondaryText;
  Displayer({@required this.primaryText, @required this.secondaryText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 80,
                child: SingleChildScrollView(
                  reverse: true,
                  child: Text(
                    primaryText,
                    maxLines: 1000,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.white, fontSize: 36),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                secondaryText,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
