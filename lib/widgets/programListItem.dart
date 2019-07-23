import 'package:flutter/material.dart';

class ProgramListItem extends StatelessWidget {
  final int index;

  ProgramListItem({this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      elevation: 4.0,
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.live_tv, size: 50.0),
          ),
          Text('program item $index'),
        ],
      ),
    );
  }
}
