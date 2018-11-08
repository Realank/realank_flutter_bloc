import 'package:flutter/material.dart';
import 'package:realank_flutter_bloc/realank_flutter_bloc.dart';
import 'count_bloc.dart';

class UnderPage extends StatefulWidget {
  @override
  _STFState createState() => _STFState();
}

class _STFState extends State<UnderPage> {
  @override
  Widget build(BuildContext context) {
    return RLKBLoCBuilder(builder: (BuildContext context, int data, RLKBaseBLoC bloc) {
      CountBLoC bloc2 = bloc as CountBLoC;
      return Scaffold(
        appBar: AppBar(
          title: Text('Under Page'),
        ),
        body: Center(
            child: Text(
          "You hit me: $data times",
          style: Theme.of(context).textTheme.display1,
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {});
            bloc2.increment();
          },
          child: Icon(Icons.add),
        ),
      );
    });
  }
}
