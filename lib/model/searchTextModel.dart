import 'package:flutter_tvmaze/api/search.dart';

class SearchTextModel {
  String _input;

  get input => _input;

  onChangeText(String newText) {
    _input = newText;
  }

  submitText() {
    getResult(searchQuery: input);
  }
}
