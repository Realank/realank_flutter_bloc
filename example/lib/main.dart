import 'package:flutter/material.dart';
import 'package:realank_flutter_bloc/realank_flutter_bloc.dart';
import 'top_page.dart';
import 'count_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RLKBLoCProvider(
      bloc: CountBLoC({'a': 1, 'b': 1}),
      child: MaterialApp(
        theme: ThemeData.light(),
        home: TopPage(),
      ),
    );
  }
}
