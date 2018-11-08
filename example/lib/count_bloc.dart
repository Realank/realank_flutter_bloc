import 'package:realank_flutter_bloc/realank_flutter_bloc.dart';

class CountBLoC extends RLKBaseBLoC<int> {
  CountBLoC(int data) : super(data);
  increment() {
    changeData(data + 1);
  }
}
