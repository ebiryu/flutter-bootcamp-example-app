import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_tvmaze/model/searchTextModel.dart';

class SearchTextArea extends StatefulWidget {
  @override
  _SearchTextAreaState createState() => _SearchTextAreaState();
}

class _SearchTextAreaState extends State<SearchTextArea> {
  final _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      Provider.of<SearchTextModel>(context)
          .onChangeText(_controller.value.text);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.black12,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        controller: _controller,
        onEditingComplete: () {
          Provider.of<SearchTextModel>(context).submitText();
          FocusScope.of(context).detach();
        },
      ),
    );
  }
}
