import 'package:flutter/material.dart';
import 'package:flutter_tvmaze/model/searchTextModel.dart';

class ProgramListItem extends StatelessWidget {
  final Program program;

  ProgramListItem({this.program});

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
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('program item ${program.show.id}'),
                Text(
                  '${program.show.name}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
