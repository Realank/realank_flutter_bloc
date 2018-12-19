# realank_flutter_bloc

[![Build Status](https://travis-ci.com/Realank/realank_flutter_bloc.svg?branch=master)](https://travis-ci.com/Realank/realank_flutter_bloc)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

a bloc wrapper package

## Introduce

relank_flutter_bloc contains 3 classes:

**RLKBaseBLoC**:a BLoC data that can store any type of data

**RLKBLoCProvider**:the root widget of whose widgets need to use RLKBaseBLoC's data

**RLKBLoCBuilder**:a RLKBaseBLoC getter

## example

#### 1. extends RLKBaseBLoC to add custom operation (optional)
```
class CountBLoC extends RLKBaseBLoC<int> {
  CountBLoC(int data) : super(data);
  increment() {
    changeData(data + 1);
  }
}
```

#### 2. wrap root widget with RLKBLoCProvider, and pass a RLKBaseBLoC instance
```
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RLKBLoCProvider(
      bloc: CountBLoC(0),
      child: MaterialApp(
        theme: ThemeData.light(),
        home: TopPage(),
      ),
    );
  }
}

```

#### 3. use RLKBLoCBuilder to get RLKBaseBLoC and it's data anywhere
```
RLKBLoCBuilder(builder: (BuildContext context, int data, RLKBaseBLoC bloc) {
        return Text(
          'You hit me: $data times',
          style: Theme.of(context).textTheme.display1,
        );
      })
```

## Getting Started

For help getting started with Flutter, view our online [documentation](https://flutter.io/).

For help on editing package code, view the [documentation](https://flutter.io/developing-packages/).
