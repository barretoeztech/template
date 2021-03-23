import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import '../data/model/user_model.dart';

Future<UserModel> authenticateUser(String useremail, String password) async {
  var uri = Uri(
    scheme: 'http',
    host: '10.0.2.2',
    path: '/user',
    port: 3000,
    queryParameters: {'userEmail': '$useremail', 'userPassword': '$password'},
  );

  final response = await http.get(uri).timeout(
    const Duration(seconds: 10),
    onTimeout: () {
      print("Timeout agora");
      throw TimeoutException(
          'Timeout na comunicação, por favor tente novamente');
    },
  );

  if (response.statusCode == 200) {
    print("Sucesso: na busca de informações no servidor");
    // se o servidor retornar um response OK, vamos fazer o parse no JSON

    return new UserModel.fromJson(json.decode(response.body)[0]);
  } else {
    print("Erro na busca de informações do servidor");
    throw 'Erro no json';
  }
}
