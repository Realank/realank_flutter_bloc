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
    print('build under page');
    return RLKBLoCBuilder(builder: (BuildContext context, Map data, RLKBaseBLoC bloc) {
      CountBLoC bloc2 = bloc as CountBLoC;
      return Scaffold(
        appBar: AppBar(
          title: Text('Under Page'),
        ),
        body: Column(children: [
          Text(
            "A: ${data['a']} times",
            style: Theme.of(context).textTheme.display1,
          ),
          Text(
            "B: ${data['b']} times",
            style: Theme.of(context).textTheme.display1,
          ),
          FlatButton(
              onPressed: () {
                bloc2.changeA(data['a'] + 1);
              },
              child: Text('count a')),
          FlatButton(
              onPressed: () {
                bloc2.changeB(data['b'] + 2);
              },
              child: Text('count b'))
        ]),
      );
    });
  }
}
