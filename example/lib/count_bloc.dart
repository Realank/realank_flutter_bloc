import 'package:realank_flutter_bloc/realank_flutter_bloc.dart';

class CountBLoC extends RLKBaseBLoC<Map> {
  CountBLoC(Map data) : super(data);
  changeA(val) {
    print('pre data $data');
    data['a'] = val;
    changeData(data);
  }

  changeB(val) {
    print('pre data $data');
    data['b'] = val;
    changeData(data);
  }
}
