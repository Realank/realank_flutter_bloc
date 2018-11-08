import 'package:flutter/material.dart';
import 'package:realank_flutter_bloc/realank_flutter_bloc.dart';
import 'under_page.dart';
import 'count_bloc.dart';

class TopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top Page'),
      ),
      body:
          Center(child: RLKBLoCBuilder(builder: (BuildContext context, int data, RLKBaseBLoC bloc) {
        return Text(
          'You hit me: $data times',
          style: Theme.of(context).textTheme.display1,
        );
      })),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.navigate_next),
          onPressed: () =>
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnderPage()))),
    );
  }
}
