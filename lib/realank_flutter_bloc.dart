library realank_flutter_bloc;

import 'package:flutter/material.dart';
import 'dart:async';

typedef RLKBLoCWidgetBuilder<T> = Widget Function(BuildContext context, T data, RLKBaseBLoC bloc);

class RLKBaseBLoC<T> {
  T _data;
  StreamController<T> _controller;
  RLKBaseBLoC(T data) {
    this._data = data;
    this._controller = StreamController<T>.broadcast();
  }
  Stream<T> get stream => _controller.stream;
  T get data => _data;
  changeData(T data) {
    _data = data;
    _controller.sink.add(_data);
  }

  dispose() {
    _controller.close();
  }
}

class RLKBLoCProvider extends InheritedWidget {
  final RLKBaseBLoC bloc;

  RLKBLoCProvider({Key key, Widget child, RLKBaseBLoC bloc})
      : this.bloc = bloc,
        super(key: key, child: child);

  @override
  bool updateShouldNotify(RLKBLoCProvider oldWidget) {
    return this.bloc.data != oldWidget.bloc.data;
  }

  static RLKBaseBLoC of(BuildContext context) =>
      (context.inheritFromWidgetOfExactType(RLKBLoCProvider) as RLKBLoCProvider).bloc;
}

class RLKBLoCBuilder<T> extends StatelessWidget {
  const RLKBLoCBuilder({Key key, @required this.builder});
  final RLKBLoCWidgetBuilder<T> builder;
  @override
  Widget build(BuildContext context) {
    final bloc = RLKBLoCProvider.of(context);
    Widget child = StreamBuilder<T>(
        stream: bloc.stream,
        initialData: bloc.data,
        builder: (BuildContext context, AsyncSnapshot<T> snapshot) {
          return this.builder(context, snapshot.data, bloc);
        });
    return child;
  }
}
