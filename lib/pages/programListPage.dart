import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_tvmaze/widgets/programListItem.dart';
import 'package:flutter_tvmaze/widgets/searchTextArea.dart';
import 'package:flutter_tvmaze/model/searchTextModel.dart';

class ProgramListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<SearchTextModel>(
      builder: (_) => SearchTextModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Program List'),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SearchTextArea(),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ProgramListItem(index: index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
