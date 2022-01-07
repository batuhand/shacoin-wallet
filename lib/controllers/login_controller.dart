import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shacoin_wallet/consts.dart';

class LoginController{
  static Future<String> userLogin(String username, String password, String walletAdress) async {
    Map<String, String> headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
    };
    var url = Uri.parse(apiURL + "user/create_user/");
    var body =
    json.encode({"uname": username, "pass": password, "wallet_adress": walletAdress});
    var response = await http.post(url, body: body, headers: headers);
    print(response.body);

    return response.body;


  }

}