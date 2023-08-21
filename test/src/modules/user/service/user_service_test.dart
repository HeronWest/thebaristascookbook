import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:thebaristascookbook/src/modules/user/model/user.dart';
import 'package:uno/uno.dart';

class UnoMock extends Mock implements Uno {}
void main() {

  final unoMock = UnoMock();
  final user = UserModel(
      id: null,
      name: 'Heron',
      email: 'heronwoliveira@gmail.com',
      nickname: 'Barista',
      phone: '(46) 92000-3085');


  testWidgets('create user', (tester) async {

  });
}
