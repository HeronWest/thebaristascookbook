import 'dart:io';

import 'package:thebaristascookbook/src/modules/user/model/user.dart';
import 'package:uno/uno.dart';

class UserService {

  Uno client;

  UserService(this.client);

  Future<int> createUser(UserModel user) async {
    Response response = await client.post('/api/users', data: user.toJson());
    return response.status;
  }
}
