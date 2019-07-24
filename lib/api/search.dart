import 'dart:convert';
import 'package:http/http.dart' as http;

Future<ProgramList> getResult({
  String searchQuery,
}) async {
  final response =
      await http.get('http://api.tvmaze.com/search/shows?q=$searchQuery');

  // I wanted to know format of the response.
  // print(json.decode(response.body));

  if (response.statusCode == 200) {
    return ProgramList.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to connect API');
  }
}

class ProgramList {
  final List<Program> programList;

  ProgramList({this.programList});

  factory ProgramList.fromJson(List json) => ProgramList(
        programList: json
            .map<Program>(
              (item) => Program.fromJson(item),
            )
            .toList(),
      );
}

class Program {
  final Show show;

  Program({this.show});

  factory Program.fromJson(json) => Program(
        show: Show.fromJson(json['show']),
      );
}

class Show {
  final int id;
  final String name;
  final String imagePath;

  Show({
    this.id,
    this.name,
    this.imagePath,
  });

  factory Show.fromJson(json) => Show(
        id: json['id'],
        name: json['name'],
        imagePath: json['image']['medium'],
      );
}
