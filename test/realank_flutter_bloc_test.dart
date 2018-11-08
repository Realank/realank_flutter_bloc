import 'package:test/test.dart';

import 'package:realank_flutter_bloc/realank_flutter_bloc.dart';

void main() {
  test('init test', () {
    final bloc = RLKBaseBLoC<int>(5);
    expect(bloc.data, 5);
  });
}
