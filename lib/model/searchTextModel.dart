import 'package:flutter/foundation.dart';
import 'package:flutter_tvmaze/api/search.dart';

export 'package:flutter_tvmaze/api/search.dart';

class SearchTextModel {
  String _input;
  ValueNotifier<ProgramList> _programList;

  String get input => _input;

  ValueNotifier<ProgramList> get programListNotifier => _programList;

  SearchTextModel() {
    _programList = ValueNotifier<ProgramList>(ProgramList(programList: []));
  }

  onChangeText(String newText) {
    _input = newText;
  }

  submitText() async {
    _programList.value = await getResult(searchQuery: input);
  }
}
