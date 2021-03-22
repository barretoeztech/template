import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'dart:io';

import '../data/model/user_model.dart';

Future<UserModel> authenticateUser(String useremail, String password) async {
  var uri = Uri(
    scheme: 'http',
    host: '10.0.2.2',
    path: '/user',
    port: 3000,
    queryParameters: {'userEmail': '$useremail', 'userPassword': '$password'},
  );

  try {
    final response = await http.get(uri).timeout(
      const Duration(seconds: 10),
      onTimeout: () {
        print("Timeout agora");
        throw TimeoutException(
            'The connection has timed out, Please try again!');
      },
    );

    if (response.statusCode == 200) {
      print("Sucesso");
      // se o servidor retornar um response OK, vamos fazer o parse no JSON

      return UserModel.fromJson(json.decode(response.body)[0]);
    }
    throw 'Erro no json';
  } on SocketException {
    print("You are not connected to internet");
  }
}
